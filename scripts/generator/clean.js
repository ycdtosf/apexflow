import fs from 'fs/promises';
import htmlprettify from 'html-prettify';

var args = process.argv.slice(2);
var argClass = args[0];

let theHTML = await fs.readFile('./html/' + argClass + '.html', { encoding : 'UTF-8' });

function replaceXrefHTMLWithText(html) {
    const regex = /<a\s+class="xref"[^>]*>([^<]*)<\/a>/g;
    const replacedHtml = html.replace(regex, (match, capturedText) => capturedText.trim());
    return replacedHtml;
}

function removeSampleTags(html) {
    const regex = /<samp[^>]*>[\s\S]*?<\/samp>/g;
    const cleanedHtml = html.replace(regex, '');
    return cleanedHtml;
}

function removeSpanTags(html) {
    const regex = /<span[^>]*>[\s\S]*?<\/span>/g;
    const cleanedHtml = html.replace(regex, '');
    return cleanedHtml;
}

function removeH2Tags(html) {
    const regex = /<h2[^>]*>[\s\S]*?<\/h2>/g;
    const cleanedHtml = html.replace(regex, '');
    return cleanedHtml;
}

function removeH3Tags(html) {
    const regex = /<h3[^>]*>[\s\S]*?<\/h3>/g;
    const cleanedHtml = html.replace(regex, '');
    return cleanedHtml;
}

function removeNamedAnchorTags(html) {
    const regex = /<a[^>]*\s+name="[^"]*"[^>]*>[\s\S]*?<\/a>/g;
    const cleanedHtml = html.replace(regex, '');
    return cleanedHtml;
  }

  function removeEmptyPTags(html) {
    const regex = /<p[^>]*>\s*<\/p>/g;
    const cleanedHtml = html.replace(regex, '');
    return cleanedHtml;
  }

  function removeDivsWithIdSfdcSeeAlso(html) {
    const regex = /<div[^>]*\sid="sfdc:seealso"[^>]*>[\s\S]*?<\/div>/g;
    const cleanedHtml = html.replace(regex, '');
    return cleanedHtml;
  }

  function removeTabsAndLineBreaks(inputString) {
    const regex = /\t|\r|\n/g;
    const cleanedString = inputString.replace(regex, '');
    return cleanedString;
  }

  function replaceMultipleSpaces(inputString) {
    const regex = / {2,}/g;
    const cleanedString = inputString.replace(regex, ' ');
    return cleanedString;
  }

  function fixBrokenBrTags(html) {
    // Replace <br> tags not followed by a space or > with <br />.
    const fixedHtml = html.replace(/<br(?![\s>])>/g, '<br />');
    return fixedHtml;
  }

  function staticThing(html) {
    const regex = /<p class="p"><samp class="codeph apex_code"> <span class="keyword">static<\/span>[\s\S]*?<\/p>/g;
    const replacedString = html.replace(regex, '<p class="p">static</p>');
    return replacedString;
  }






console.log('CLEANING');
theHTML = replaceXrefHTMLWithText(theHTML);
theHTML = theHTML.replace(/Type: /g, '');
//theHTML = removeSampleTags(theHTML);

// misc cleanup...
theHTML = theHTML.replace(/<span\s+class="keyword">public<\/span>/g, '');
theHTML = staticThing(theHTML);
theHTML = removeH2Tags(theHTML);
theHTML = removeH3Tags(theHTML);
//theHTML = removeSpanTags(theHTML);
theHTML = removeNamedAnchorTags(theHTML);
theHTML = removeEmptyPTags(theHTML);
theHTML = removeTabsAndLineBreaks(theHTML);
theHTML = replaceMultipleSpaces(theHTML);
theHTML = fixBrokenBrTags(theHTML);
theHTML = removeDivsWithIdSfdcSeeAlso(theHTML);

await fs.writeFile('./html/' + argClass + '_cleaned.html', theHTML);
