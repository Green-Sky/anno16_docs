# Anno Script #

Anno defines game parameters, animations, UI layouts, and more with scripts written in a custom markup language.
The language looks like a wild mixture of INI, C-Header, JSON, and YAML. [q](https://github.com/roybaer/mdcii-engine/pull/10#issuecomment-510024829)
Prominent files are eg. [haeuser.cod](../files/haeuser.cod.md) and [figuren.cod](../files/figuren.cod.md), the game config file [game.dat](../files/game.dat.md), [Highscore Files](./hss.md) and GUIs.

Like [Text Files](./text.md), it uses [Windows-1252](https://en.wikipedia.org/wiki/Windows-1252) encoding and Windows **Line Endings** (CRLF).

## Syntax ##

### Whitespace ###

Whitespace characters carry no meaning in scripts. The original game files use indentation for easier reading (using both tabs _and_ spaces).

### Comments ###

Line comments start with `;` and end with the **newline** character.

### Variables ###

Variables carry object-independent information.

Variable identifiers generally use a combination of uppercase letters, digits and underscores (example: `UPPER_CASE_STRING_123`). Exceptions to this rule apply. Certain variable identifiers are pre-defined by the application.

Variables are defined and declared in a single statement such as `VARIABLE_NAME = 2`. Variable definitions are allowed anywhere within a script. A variable's scope is always global, i.e. even when it is defined in the middle of an object definition, its value persists throughout the remainder of the script. Variable reassignment is possible.

The right side of variable assignments can be int or float literals (`0.1`, `20`, ...) or simple arithmetic expressions involving literals and other variable identifiers (`500-2`, `GFXSOMETHINGBASE+10`, ...).

Using the @-syntax, existing variables can be incremented/decremented and reassigned in a single expression. Example: `@GFXNR = +80`.

### Properties ###

Properties add key-value information to objects.

Property identifiers generally are `TitleCaseStrings`, though exceptions apply. The `Nummer` property is a special property which marks elements in an array of objects.

Properties are defined and declared in a single statement such as `PropertyName: 2`. Property definitions are allowed at the top of a script, or within objects. The scope of a property is limited to its surrounding object definition. Property reassignment is probably not meant to be possible (based on the fact that neither of the game's script files does this).

The right side of property assignments can be int or float literals, simple arithmetic expressions involving literals and other variable identifiers, or list-typed values (!), which themselves can contain literals or arithmetic expressions. Examples:
```
Nurture: 1.4                    ; fixed point value
Nurturelist: 1.4, SOMEVAR, 0    ; list
```

Additionally, the right side can use array subscript notation:
```
Pos:        20, 42                ; Property array

Posoffs:    30-Pos[0], 200-Pos[1] ; 30 - 20, 200 - 42 -> 10, 158
```
This is only used in `/Gaddata/CTRL.GAD`.

Using the @-syntax, existing properties can be incremented/decremented and reassigned in a single expression. Example: `@Gfx: +5`. This is also used for list-typed values, for example: `@Pos: +79, +0`.


### Keyword Properties ###

Four keyword properties are known:

| Keyword | Purpose |
|---------|---------|
| `Include`| include the contents of another script file |
| `Objekt` | begin object definition |
| `EndObj` | end object definition |
| `ObjFill` | defines default properties for following objects, or recalls properties from a previously defined object |


### Objects ###

Object definitions can take two forms: arrays of a defined object struct-like type, or individual struct-like object definitions.

Object array definitions follow a syntax like the following:
```
Objekt: <type>

    Nummer:     <nummer value or reference>
    PropertyA:  0
    PropertyB:  1

    Nummer:     <nummer value or reference>
    PropertyA:  0
    PropertyB:  1

EndObj;
```

Struct-like object definitions use a similar syntax without `Nummer` properties:

```
Objekt:     HAUS_PRODTYP
    Kind:       ROHSTWACHS
    Ware:       NOWARE
    Interval:   300
EndObj;
```

Objects can be nested (containing itself an object). The maximum nesting level observed in the game's files is 2.

### Object Defaults / ObjFill ###

The special `ObjFill` property permits reuse of object properties for object arrays. There are two variants: forward-filling and backward-filling.

* Forward-filling defines a default object which includes a statement such as `ObjFill: 0, MAXHAUS`. The semantics of this are to fill array objects in the given range with the properties of that default object.
* Backward-filling adds the properties of a previously defined object with a certain `Nummer` (i.e. array index) to the current array object. This requires a statement such as `ObjFill: <Nummer reference>`, for example `ObjFill: HAUSWACHS`.

An object can be both forward-filled and backward-filled at the same time.

### Notes / Other Quirks ###
* In `haeuser.cod` in the KE version, the first occurrence of the `Nummer` property is using a relative assignment (`@Nummer`), even though no previous assignment exists.
* Some scripts are erroneous (TODO: examples??). Occasionally an extra `@` is present on **Properties**. **Undefined Variables** are used (examples??).

### EBNF Grammar ###

See https://github.com/mbugert/anno1602-script-parser/blob/main/parser/io/script/grammar.lark

## Parser Implementations ##

* [Christian Flach](https://github.com/cmfcmf)'s [parser implementation](https://github.com/cmfcmf/Anno2018/blob/master/src/parsers/DAT/dat-parser.ts), TypeScript
* [Armin Schlegel](https://github.com/siredmar)'s [parser implementation (uses protobuf)](https://github.com/siredmar/mdcii-engine/blob/master/source/mdcii/mdcii/src/cod/cod_parser.cpp), C++
* [Michael Bugert](https://github.com/mbugert)'s [grammar and parser generator](https://github.com/mbugert/anno1602-script-parser), Python
