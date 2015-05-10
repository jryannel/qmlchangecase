import QtQml 2.0
import QtTest 1.0
import "changecase.js" as Case

TestCase {
    function test_camelCase() {        
        compare(Case.camelCase('string'), 'string');
        compare(Case.camelCase('dot.case'), "dotCase");
        compare(Case.camelCase('PascalCase'), "pascalCase");
        compare(Case.camelCase('version 1.2.10'), "version1_2_10");
        compare(Case.camelCase('STRING 1.2', 'tr'), "strıng1_2");
    }

    function test_constantCase() {
        compare(Case.constantCase('string'), "STRING");
        compare(Case.constantCase('PascalCase'), "PASCAL_CASE");
        compare(Case.constantCase('myString', 'tr'), "MY_STRİNG");
    }

    function test_dotCase() {
        compare(Case.dotCase('string'), "string");
        compare(Case.dotCase('camelCase'), "camel.case");
        compare(Case.dotCase('sentence case'), "sentence.case");
        compare(Case.dotCase('MY STRING', 'tr'), "my.strıng");
    }

    function test_isLowerCase() {
        compare(Case.isLowerCase('string'), true);
        compare(Case.isLowerCase('String'), false);
        compare(Case.isLowerCase('STRING'), false);
    }

    function test_isUpperCase() {
        compare(Case.isUpperCase('STRING'), true);
        compare(Case.isUpperCase('String'), false);
        compare(Case.isUpperCase('string'), false);
    }

    function test_lowerCase() {
        compare(Case.lowerCase(null), "");
        compare(Case.lowerCase('STRING'), "string");
        compare(Case.lowerCase('STRING', 'tr'), "strıng");
    }

    function test_lowerCaseFirst() {
        compare(Case.lowerCaseFirst(null), "");
        compare(Case.lowerCaseFirst('STRING'), "sTRING");
    }

    function paramCase() {
        compare(Case.paramCase('string'), "string");
        compare(Case.paramCase('camelCase'), "camel-case");
        compare(Case.paramCase('sentence case'), "sentence-case");
        compare(Case.paramCase('MY STRING', 'tr'), "my-strıng");
    }

    function pascalCase() {
        compare(Case.pascalCase('string'), "String");
        compare(Case.pascalCase('camelCase'), "CamelCase");
        compare(Case.pascalCase('sentence case'), "SentenceCase");
        compare(Case.pascalCase('MY STRING', 'tr'), "MyStrıng");    
    }

    function sentenceCase() {
        compare(Case.sentenceCase(null), "");
        compare(Case.sentenceCase('string'), "string");
        compare(Case.sentenceCase('dot.case'), "dot case");
        compare(Case.sentenceCase('camelCase'), "camel case");
        compare(Case.sentenceCase('Beyoncé Knowles'), "beyoncé knowles");
        compare(Case.sentenceCase('A STRING', 'tr'), "a strıng");
        compare(Case.sentenceCase('HELLO WORLD!', null, '_'), "hello_world");
    }

    function test_snakeCase() {
        compare(Case.snakeCase('string'), "string");
        compare(Case.snakeCase('camelCase'), "camel_case");
        compare(Case.snakeCase('sentence case'), "sentence_case");
        compare(Case.snakeCase('MY STRING', 'tr'), "my_strıng");
    }

    function test_swapCase() {
        compare(Case.swapCase('string'), "STRING");
        compare(Case.swapCase('PascalCase'), "pASCALcASE");
        compare(Case.swapCase('Iñtërnâtiônàlizætiøn'), "iÑTËRNÂTIÔNÀLIZÆTIØN");
        compare(Case.swapCase('My String', 'tr'), "mY sTRİNG");
    }

    function test_titleCase() {
        compare(Case.titleCase('string'), "String");
        compare(Case.titleCase('PascalCase'), "Pascal Case");
        compare(Case.titleCase('STRING', 'tr'), "Strıng");
    }

    function test_upperCase() {
        compare(Case.upperCase(null), "");
        compare(Case.upperCase('string'), "STRING");
        compare(Case.upperCase('string', 'tr'), "STRİNG");
        compare(Case.upperCase({ toString: function () { return 'test' } }), "TEST");
    }

    function test_upperCaseFirst() {
        compare(Case.upperCaseFirst(null), "");
        compare(Case.upperCaseFirst('string'), "String");
    }
}
