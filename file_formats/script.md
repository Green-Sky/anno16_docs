# Anno Script #

It kind of resembles a mixture of **INI**, **C-Header** and **JSON** [q](https://github.com/roybaer/mdcii-engine/pull/10#issuecomment-510024829) and is used for various **Configurations** and **Game Data**. Prominent files are eg. [haeuser.cod](../files/haeuser.cod.md) and [figuren.cod](../files/figuren.cod.md), the game config file [game.dat](../files/game.dat.md) and [Highscore Files](./hss.md).

Like [Text Files](./text.md), it uses [Windows-1252](https://en.wikipedia.org/wiki/Windows-1252) (??) encoding and Windows **Line Endings** (CRLF).

## Syntax ##

### Comments ###

Comments start with `;` and end at the **newline** character.

### Variables ###

Variable definitions are indicated by an Uppercase name followed by aleast 1 **White Space Character** (??) and an **Equal Sign** (`=`). After that is an **Expression**, in most cases a **Number** or an other **Variable** plus a **Number**. Also it is possible to use `Nummer` instead of an **Expression**.

For Example:
```
GFXSOMETHINGBASE = 0
GFXSOMETHING1 = GFXSOMETHINGBASE+10
```

Variables can be predefined by the Application.

### "Configuration" Definitions ###

They can be context sesitiv, meaning dependent on the **Object** and **Object Number** if present.
A Definition consists of an **Identifier**, usualy starting with an Uppercase letter, followed by `:` and whitespaces.
After that comes a comma sperated list of **Expressions** or **Fixed Point Values**.

They can be prefixed with an `@` to indicate a relative value.
They support plus and minus operations on the previous value.

For Example:
```
Nurture: 1.4                    ; fixed point value
Nurturelist: 1.4, SOMEVAR, 0    ; list

Something: 1
@Something: +1                  ; 2
```

### List of non-Object Config Definitions / Keywords ###

| ID            | Expected Values   | Use |
|---------------|-------------------|-----|
| Object		|					| keyword |
| EndObj		|					| keyword |
| Nahrung		| fp				| |
| Soldat		| var, int, int		| cost of soldiers |
| Turm			| var, int			| cost of tower |

### Objects ###

**Object Definitions** are in most cases **Arrays** of a defined type.
**Objects** can be nested (containing itself a Object), two deep.
The **Arrays** start with the **Keyword** (Configuration Definition) `Objekt` followed by a `:`, whitespace and the **Type** (a **Variable**) of the **Object**.

The next **Object** in the **Array** usually(??) starts with the `Nummer:` definition.

The **Array** ends with the **Keyword** `EndObj` usually followed by an `;`(y??).

The **Objects** can be filled, usually with defaults, with the `ObjFill:` **Keyword**.
It expects a **ID Range** (start and end, comma seperated).

### Grammar Rules ###

TODO
```
```

## Notes ##

Scripts usually have inconsistent indention, but use **Spaces** in most cases.

Some scripts are erroneous (??). Occasionally the `@` is missing from relative **Config Definitions**. **Undefined Variables** are used (??).

[cmfcmf](https://github.com/cmfcmf)'s [parser implementation](https://github.com/cmfcmf/Anno2018/blob/master/src/parsers/DAT/dat-parser.ts).

