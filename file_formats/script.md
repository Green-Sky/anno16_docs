# Anno Script #

It kind of resembles a mixture of **INI**, **C-Header** and **JSON** [q](https://github.com/roybaer/mdcii-engine/pull/10#issuecomment-510024829) and is used for various **Configurations** and **Game Data**.
Prominent files are eg. [haeuser.cod](../files/haeuser.cod.md) and [figuren.cod](../files/figuren.cod.md), the game config file [game.dat](../files/game.dat.md), [Highscore Files](./hss.md) and GUIs.

Like [Text Files](./text.md), it uses [Windows-1252](https://en.wikipedia.org/wiki/Windows-1252) (??) encoding and Windows **Line Endings** (CRLF).

## Syntax ##

### Comments ###

Comments start with `;` and end with the **newline** character.

### Variables ###

Variable definitions are indicated by an Uppercase name followed by aleast 1 **White Space Character** (??) and an **Equal Sign** (`=`).
After that is an **Expression**, in most cases a **Number** or an other **Variable** plus a **Number**. Also it is possible to use `Nummer` instead of an **Expression**.

They can be prefixed with an `@` to indicate a relative(to themself) value.

For Example:
```
GFXSOMETHINGBASE = 0
GFXSOMETHING1 = GFXSOMETHINGBASE+10
```

Some Variables are predefined by the Application.

### Properties ###

They can be context sesitiv, meaning dependent on the **Object** and **Object Number** if present.
A **Property Definition** consists of an **Identifier**, usualy starting with an Uppercase letter, followed by `:` and whitespace(s).
After that comes a comma sperated list of **Expressions** or **Fixed Point Values**.

They can be prefixed with an `@` to indicate a relative(to the previous) value.
They support plus and minus operations on the previous value.

For Example:
```
Nurture: 1.4                    ; fixed point value
Nurturelist: 1.4, SOMEVAR, 0    ; list

Nummer: 0                       ; start object
Something: 1

Nummer: 1                       ; or @Nummer: +1 ; the next object
@Something: +1                  ; 2
```

#### Property Array Subscript Operator ####

TODO

For Example:
```
Pos:        20, 42                ; Property array

Posoffs:    30-Pos[0], 200-Pos[1] ; 30 - 20, 200 - 42 -> 10, 158

```

### List of non-Object Properties / Keywords ###

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
The **Arrays** start with the **Keyword** `Objekt` followed by a `:`, whitespace and the **Type** (a **Variable**) of the **Object**.

The next **Object** in the **Array** (??) starts with the `Nummer:` definition.

The **Array** ends with the **Keyword** `EndObj` usually followed by an `;`(y??).

The **Objects** can be filled, usually with defaults, with the `ObjFill:` **Keyword**.
It accepts an **"Nummer" Range** (start and end, comma seperated) or just an **"Nummer"**.

### Grammar Rules ###

TODO
```
```

## Notes ##

Scripts usually have inconsistent indention, but use **Spaces** in most cases.

Some scripts are erroneous (??). Occasionally an extra `@` is present on **Properties**. **Undefined Variables** are used (??).

[Christian Flach](https://github.com/cmfcmf)'s [parser implementation](https://github.com/cmfcmf/Anno2018/blob/master/src/parsers/DAT/dat-parser.ts).

