//import childProcess from 'child_process';
import spawnAsync from '@expo/spawn-async';
import fs from 'fs/promises';
import { parse } from 'himalaya';
//import jsonpath from 'jsonpath';

import xpath from 'xpath';
import { DOMParser } from 'xmldom'

//console.log('CLEAN');
//await spawnAsync('node ./clean_html.js');
//console.log('CLEANED');

var args = process.argv.slice(2);
var argClass = args[0];

let theHTML = await fs.readFile('./html/' + argClass + '_cleaned.html', { encoding : 'UTF-8' });

let xmldoc = new DOMParser().parseFromString(theHTML, 'text/xml');

let outputs = [];

let nodes = xpath.select('//div[@class="topic reference nested2"]', xmldoc);

nodes.forEach((node) => {
    let output = {};
    let fullName = xpath.select('./@id', node, true).value;
    fullName = fullName.replace('apex_', '').split('_');
    output.parameters = [];
    output.namespaceName = fullName[0];
    output.className = fullName[1];
    output.methodName = fullName[2];
    output.inputType = output.className;
    output.isStatic = false;

    // static
    let isStatic = xpath.select('div[@class="body refbody"]/div[h4 = "Signature"]/p[@class="p"]/text()', node, true);
    if(isStatic && isStatic.data === 'static') output.isStatic = true;

    // return type
    let outputType = xpath.select('div[@class="body refbody"]/div[h4 = "Return Value"]/p[@class="p"]/text()', node, true);
    output.outputType = outputType.data.trim();
    output.outputType = fixListSyntax(output.outputType);

    // description
    let description = xpath.select('div[@class="body refbody"]/div[@class="shortdesc"]/text()', node, true);
    if(description) {
        output.description = description.data;
        output.description = output.description.replace('\\', '');
        var pattern = /\\./g;
        output.description = output.description.replace(pattern, '');
    }

    // parameters
    let parameters = xpath.select('div[@class="body refbody"]/div[h4 = "Parameters"]/dl/*', node);
    
    if(parameters) {

        let x = 0;
        let ddCount = 0;
        let newParameter = null;

        parameters.forEach((parameter) => {

            //console.log(parameter.tagName);

            if(parameter.tagName === 'dt') {
                newParameter = { label : xpath.select('./var/text()', parameter, true).data.trim() };
                ddCount = 0;
            }
            else {
                // 2023-09-29 - addresses multiple <dd> tags - after the first one, it's description or other junk
                if(ddCount === 0) {
                    newParameter.dataType = xpath.select('./text()', parameter, true).data.trim();
                    newParameter.dataType = fixListSyntax(newParameter.dataType);
                    output.parameters.push(newParameter);
                }
                ddCount++;
            }

        });

        //console.log('\n####################\n')

    }
    
    outputs.push(output);

});

//console.log(JSON.stringify(outputs));

await fs.writeFile('config/' + argClass + '.json', JSON.stringify(outputs));

function fixListSyntax(txt) {
    if(txt.indexOf('List<') > -1)  {
        txt = txt.replace('List<', '');
        txt = txt.replace('>', '[]');
    }
    return txt;
}