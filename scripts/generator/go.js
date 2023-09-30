import ejs from 'ejs';
import fs from 'fs/promises';
import fs2 from 'fs';
import indent from 'indent.js';

let data = [];
let fileNames = fs2.readdirSync('./config');

let index = {};



function fixVariableName(varName) {
    let reservedWords = ['date', 'time', 'limit', 'label'];
    if(reservedWords.includes(varName.toLowerCase())) varName = 'x' + varName;
    return varName;
}

fileNames.forEach((fileName) => {

    console.log(fileName);

    // read the file
    let file = fs2.readFileSync('./config/' + fileName, { encoding : 'UTF-8' });

    // convert JSON to object array
    file = JSON.parse(file);

    // loop object array
    file.forEach((f) => {

        let fullName = f.namespaceName + f.className + f.methodName; 

        let skip = false;

        // 2023-09-29 - sometimes there's bizarro stuff in the JSON...
        if(f.namespaceName === 'unique') skip = true;
        if(!f.methodName) skip = true;
        if(fullName.toLowerCase() === 'systemuserinfogettimezone') skip = true;

        if(!skip) {

            // construct namespace+class+method
            let fullName = f.namespaceName + f.className + f.methodName;        
            let idx = 1;

            // check the index for an existing match
            // if it exists increment it
            // this was all born out of System.Data.valueOf having an overload
            if(index[fullName] !== undefined) idx = index[fullName] + 1;

            // only prefix if the idx is > 1
            if(idx > 1) f.prefix = '' + idx;

            // add / set the mathod's index
            index[fullName] = idx;
            
            data.push(f);

        }

    });

});

//console.log(data);

for(let x = 0; x < data.length; x++) {

    

    let dataItem = data[x];

    let fullName = dataItem.namespaceName + dataItem.className + dataItem.methodName; 

    dataItem.capitalizedMethodName = dataItem.methodName.charAt(0).toUpperCase() + dataItem.methodName.slice(1);
    dataItem.lowercaseInputDataType = dataItem.inputType.toLowerCase().replace('[]', 'List');
    dataItem.lowercaseOutputDataType = dataItem.outputType.toLowerCase().replace('[]', 'List');
    //dataItem.outputValueName = 'outputValue';
    //if(dataItem.outputType.indexOf('[]') > -1) dataItem.outputValueName += 's';

    if(dataItem.parameters && dataItem.parameters.length > 0) {
        dataItem.parameters.forEach((p) => {
            p.name = p.label.replace(/[^a-zA-Z0-9]/g, '');
            p.name = p.name.charAt(0).toLowerCase() + p.name.slice(1);
            p.name = fixVariableName(p.name);
            p.isLast = false;
            p.isList = p.dataType.indexOf('[]') > -1;
            p.lowercaseDataType = p.dataType.toLowerCase().replace('[]', 'List');
        });
        dataItem.parameters[dataItem.parameters.length - 1].isLast = true;
    }

    // 2023-09-29 special annoying stuff
    if(fullName.toLowerCase() === 'systemstringjoin') {
        dataItem.parameters[0].dataType = 'Object[]';
    }
    if(fullName.toLowerCase().indexOf('systemlabel') > -1) {
        dataItem.isStatic = true;
    }

}

let template = await fs.readFile('templates/containerClass.ejs', { encoding : 'UTF-8' });
let compiled = ejs.compile(template, { filename : 'templates/containerClass.ejs', rmWhitespace : true });
let out = compiled({ data : data });
out = indent.js(out);
await fs.writeFile('../../force-app/main/default/classes/MethodContainer.cls', out);
await fs.writeFile('../../force-app/main/default/classes/MethodContainer.cls-meta.xml', '<?xml version="1.0" encoding="UTF-8"?><ApexClass xmlns="http://soap.sforce.com/2006/04/metadata"><apiVersion>58.0</apiVersion><status>Active</status></ApexClass>');

template = await fs.readFile('templates/containerTestClass.ejs', { encoding : 'UTF-8' });
compiled = ejs.compile(template, { filename : 'templates/containerTestClass.ejs', rmWhitespace : true });
out = compiled({ data : data });
out = fix(out);
out = indent.js(out);
await fs.writeFile('../../force-app/main/default/classes/MethodContainerTests.cls', out);
await fs.writeFile('../../force-app/main/default/classes/MethodContainerTests.cls-meta.xml', '<?xml version="1.0" encoding="UTF-8"?><ApexClass xmlns="http://soap.sforce.com/2006/04/metadata"><apiVersion>58.0</apiVersion><status>Active</status></ApexClass>');

function fix(txt) {   
     // I'm bad at this...
     txt = txt.replaceAll("&#39;", "'");
     //txt = txt.replaceAll("&#34;", "\"");
     return txt;
}