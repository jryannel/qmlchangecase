# Change Case

Based on https://github.com/blakeembrey/change-case. Adapted to QML by JRyannel.

Convert strings between `camelCase`, `PascalCase`, `Title Case`, `snake_case`, `lowercase`, `UPPERCASE`, `CONSTANT_CASE` and more.

All methods support Unicode (non-ASCII characters) and non-string entities, such as objects with a `toString` property, numbers and booleans. Empty values (`null` and `undefined`) will result in an empty string.

## Usage

```js
import "changecase.js" as Case
//=> { Case.isUpperCase: [Function], Case.camelCase: [Function], ... }
```

**Available methods** (short-hand shown below, long-hand available in examples):

* `Case.isUpper`
* `Case.isLower`
* `Case.upper`
* `Case.upperCaseFirst`
* `Case.lowerCaseFirst`
* `Case.lowerCase`
* `Case.sentenceCase`
* `Case.titleCase`
* `Case.camelCase`
* `Case.pascalCase`
* `Case.snakeCase`
* `Case.paramCase`
* `Case.dotCase`
* `Case.pathCase`
* `Case.constantCase`
* `Case.swapCase`

All methods accept two arguments, the string to change case and an optional locale.

# Camel Case

Camel case a string. Explicitly adds a single underscore between groups of numbers to keep readability (E.g. `1.20.5` becomes `1_20_5`, not `1205`).

Supports Unicode (non-ASCII characters) and non-string entities, such as objects with a `toString` property, numbers and booleans. Empty values (`null` and `undefined`) will result in an empty string.

## Usage

```javascript
import "changecase.js" as Case

Case.camelCase('string');         //=> "string"
Case.camelCase('dot.case');       //=> "dotCase"
Case.camelCase('PascalCase');     //=> "pascalCase"
Case.camelCase('version 1.2.10'); //=> "version1_2_10"

Case.camelCase('STRING 1.2', 'tr'); //=> "strıng1_2"
```

# Constant Case

Constant case a string.

Supports Unicode (non-ASCII characters) and non-string entities, such as objects with a `toString` property, numbers and booleans. Empty values (`null` and `undefined`) will result in an empty string.

## Usage

```javascript
import "changecase.js" as Case

Case.constantCase('string');     //=> "STRING"
Case.constantCase('PascalCase'); //=> "PASCAL_CASE"

Case.constantCase('myString', 'tr'); //=> "MY_STRİNG"
```

# Dot Case

Dot case a string.

Supports Unicode (non-ASCII characters) and non-string entities, such as objects with a `toString` property, numbers and booleans. Empty values (`null` and `undefined`) will result in an empty string.

## Usage

```javascript
import "changecase.js" as Case

Case.dotCase('string');        //=> "string"
Case.dotCase('camelCase');     //=> "camel.case"
Case.dotCase('sentence case'); //=> "sentence.case"

Case.dotCase('MY STRING', 'tr'); //=> "my.strıng"
```

# Is Lower Case

Check if a string is lower case.

## Usage

```js
import "changecase.js" as Case

Case.isLowerCase('string') //=> true
Case.isLowerCase('String') //=> false
Case.isLowerCase('STRING') //=> false
```

# Is Upper Case

Check if a string is upper case.

## Usage

```js
import "changecase.js" as Case

Case.isUpperCase('STRING'); //=> true
Case.isUpperCase('String'); //=> false
Case.isUpperCase('string'); //=> false
```

# Lower Case

Lower case a string.

Supports Unicode (non-ASCII characters) and non-string entities, such as objects with a `toString` property, numbers and booleans. Empty values (`null` and `undefined`) will result in an empty string.

## Usage

```js
import "changecase.js" as Case

Case.lowerCase(null)           //=> ""
Case.lowerCase('STRING')       //=> "string"
Case.lowerCase('STRING', 'tr') //=> "strıng"

Case.upperCase({ toString: function () { return 'TEST' } }) //=> "test"
```

# Lower Case First

Lower case the first character of a string.

Supports Unicode (non-ASCII characters) and non-string entities, such as objects with a `toString` property, numbers and booleans. Empty values (`null` and `undefined`) will result in an empty string.

## Usage

```js
import "changecase.js" as Case

Case.lowerCaseFirst(null)     //=> ""
Case.lowerCaseFirst('STRING') //=> "sTRING"
```

# Param Case

Param case a string.

Supports Unicode (non-ASCII characters) and non-string entities, such as objects with a `toString` property, numbers and booleans. Empty values (`null` and `undefined`) will result in an empty string.

## Usage

```javascript
import "changecase.js" as Case

Case.paramCase('string');        //=> "string"
Case.paramCase('camelCase');     //=> "camel-case"
Case.paramCase('sentence case'); //=> "sentence-case"

Case.paramCase('MY STRING', 'tr'); //=> "my-strıng"
```

# Pascal Case

Pascal case a string. Explicitly adds a single underscore between groups of numbers to keep readability (E.g. `1.20.5` becomes `1_20_5`, not `1205`).

Supports Unicode (non-ASCII characters) and non-string entities, such as objects with a `toString` property, numbers and booleans. Empty values (`null` and `undefined`) will result in an empty string.

## Usage

```javascript
import "changecase.js" as Case

Case.pascalCase('string');        //=> "String"
Case.pascalCase('camelCase');     //=> "CamelCase"
Case.pascalCase('sentence case'); //=> "SentenceCase"

Case.pascalCase('MY STRING', 'tr'); //=> "MyStrıng"
```

# Path Case

Path case a string.

Supports Unicode (non-ASCII characters) and non-string entities, such as objects with a `toString` property, numbers and booleans. Empty values (`null` and `undefined`) will result in an empty string.

## Usage

```javascript
import "changecase.js" as Case

Case.pathCase('string');        //=> "string"
Case.pathCase('camelCase');     //=> "camel/case"
Case.pathCase('sentence case'); //=> "sentence/case"

Case.pathCase('MY STRING', 'tr'); //=> "my.strıng"
```

# Sentence Case

Sentence case a string. Optional locale and replacement character supported.

Supports Unicode (non-ASCII characters) and non-string entities, such as objects with a `toString` property, numbers and booleans. Empty values (`null` and `undefined`) will result in an empty string.

## Usage

```javascript
import "changecase.js" as Case

Case.sentenceCase(null)              //=> ""
Case.sentenceCase('string')          //=> "string"
Case.sentenceCase('dot.case')        //=> "dot case"
Case.sentenceCase('camelCase')       //=> "camel case"
Case.sentenceCase('Beyoncé Knowles') //=> "beyoncé knowles"

Case.sentenceCase('A STRING', 'tr') //=> "a strıng"

Case.sentenceCase('HELLO WORLD!', null, '_') //=> "hello_world"
```


# Swap Case

Swap the case of a string.

Supports Unicode (non-ASCII characters) and non-string entities, such as objects with a `toString` property, numbers and booleans. Empty values (`null` and `undefined`) will result in an empty string.

## Usage

```javascript
import "changecase.js" as Case

Case.swapCase(null);                   //=> ""
Case.swapCase('string');               //=> "STRING"
Case.swapCase('PascalCase');           //=> "pASCALcASE"
Case.swapCase('Iñtërnâtiônàlizætiøn'); //=> "iÑTËRNÂTIÔNÀLIZÆTIØN"

Case.swapCase('My String', 'tr'); //=> "mY sTRİNG"
```

# Title Case

Title case a string.

Supports Unicode (non-ASCII characters) and non-string entities, such as objects with a `toString` property, numbers and booleans. Empty values (`null` and `undefined`) will result in an empty string.

## Usage

```javascript
import "changecase.js" as Case

Case.titleCase('string');     //=> "String"
Case.titleCase('PascalCase'); //=> "Pascal Case"

Case.titleCase('STRING', 'tr'); //=> "Strıng"
```

# Upper Case

Upper case a string.

Supports Unicode (non-ASCII characters) and non-string entities, such as objects with a `toString` property, numbers and booleans. Empty values (`null` and `undefined`) will result in an empty string.

## Usage

```js
import "changecase.js" as Case

Case.upperCase(null)           //=> ""
Case.upperCase('string')       //=> "STRING"
Case.upperCase('string', 'tr') //=> "STRİNG"

Case.upperCase({ toString: function () { return 'test' } }) //=> "TEST"
```

# Upper Case First

Upper case the first character of a string.

Supports Unicode (non-ASCII characters) and non-string entities, such as objects with a `toString` property, numbers and booleans. Empty values (`null` and `undefined`) will result in an empty string.

## Usage

```js
import "changecase.js" as Case

Case.upperCaseFirst(null)     //=> ""
Case.upperCaseFirst('string') //=> "String"
```

# License

MIT

