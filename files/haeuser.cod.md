# /haeuser.cod #

Is an [Encrypted](../file_formats/encryption.md) [Script](../file_formats/script.md).

note: `integer` refers to an unsigned integer.

## List of Object Types ###

### BGRUPPE ###

| ID            | Expected Values   | Use |
|---------------|-------------------|-----|
| Prozent		| integer			| |
| Maxwohn		| integer			| citizen per building |
| Steuer		| float				| tax per citizen |
| Hiscore		| score				|  |

### BGRUPPE_WARE ###
Nested in [BGRUPPE](#bgruppe).

| ID            | Expected Values             | Use |
|---------------|-----------------------------|-----|
| Ware			| COMMODITY, amount in float | how much they need for the next level |

Possible Values for `COMMODITY`:

- NOWARE
- ALLWARE
- HOLZ
- STOFFE
- ALKOHOL
- TABAKWAREN
- GEWUERZE
- KAKAO
- KLEIDUNG
- SCHMUCK
- GRAS
- GETREIDE
- BAUMWOLLE
- TABAKBAUM
- KAKAOBAUM
- ZUCKERROHR
- GEWUERZBAUM
- WEINTRAUBEN
- BAUM
- FISCHE
- NAHRUNG
- ERZE
- MEHL
- EISEN
- WERKZEUG
- MUSKETEN
- KANONEN
- SCHWERTER
- STEINE
- EISENERZ
- GOLD
- ZIEGEL
- KORN
- WOLLE
- TABAK
- ZUCKER
- FLEISCH
- WILD

TODO: move WARES to extra file/section

note: amount is `ORG/SUN` ??

### BAUINFRA ###
Infastructure levels.

| ID            | Expected Values   | Use |
|---------------|-------------------|-----|
| BGruppe		| integer			| the [BGRUPPE](#bgruppe) to require citizen of |
| Minwohn		| integer			| the amount of citizen to require |

### HAUS ###
All the **Buildings**/**Tiles** in the **Game**.

| ID            | Expected Values   | Use |
|---------------|-------------------|-----|
| Kind 			| integer (enum)	| |
| Gfx 			| integer			| the general offset for the id in the STADTFLD.[BSH](../file_formats/bsh.md) |
| Baugfx 		| integer			| the build preview offset for the id in the BAUHAUS.[BSH](../file_formats/bsh.md) |
| Blocknr 		| integer			| |
| Posoffs 		| integer			| |
| Wegspeed 		| 4x integer		| |
| Highflg 		| bool (0 or 1)		| |
| Einhoffs 		| float				| ?? |
| Bausample		| (integer)			| the audio sample to play when placed |
| Ruinenr		| integer			| |
| Maxenergy		| integer			| |
| Maxbrand		| integer			| |
| Size			| integer (x), integer (y) | the dimensions of the building |
| Rotate		| integer			| |
| PlaceFlg		| bool (0 or 1)		| |
| RandAnz		| integer			| |
| RandAdd		| integer			| |
| AnimTime		| integer			| |
| AnimFrame		| integer			| unused?? |
| AnimAnz		| integer			| |
| AnimAdd		| integer			| |
| NoShotFlg		| bool (0 or 1)		| |
| Randwachs		| integer			| |
| Tuerflg		| bool (0 or 1)		| |
| Ausbauflg		| bool (0 or 1)		| |
| KreuzBase		| integer			| |
| Destroyflg	| bool (0 or 1)		| |
| Strandflg		| bool (0 or 1)		| |
| Strandoff		| integer			| |
| Mundoff		| integer (always 3) | |
| Grundflg		| bool (0 or 1)		| |

Possible Values for `Kind`:

- UNUSED
- BODEN
- WALD
- RUINE
- STRANDRUINE
- HANG
- MEER
- BRANDUNG
- BRANDECK
- HANGQUELL
- HANGECK
- MUENDUNG
- STRAND
- STRANDVARI
- STRANDECKI
- STRANDECKA
- STRANDMUND
- PIER
- FELS
- FLUSS
- FLUSSECK
- MAUER
- MAUERSTRAND
- TURM
- TURMSTRAND
- STRASSE
- BRUECKE
- PLATZ
- TOR
- STRANDHAUS
- HQ
- HAFEN
- GEBAEUDE
- WMUEHLE
- MINE

### HAUS_PRODTYP ###
Nested in [HAUS](#haus).

| ID            | Expected Values   | Use |
|---------------|-------------------|-----|
| Kind			| integer (enum)	| |
| Ware			| integer (enum?)	| |
| Radius		| integer			| |
| Rohstoff		| integer			| |
| Rohmenge		| float				| |
| Prodmenge		| float				| |
| Randwachs		| integer			| |
| Maxlager		| integer			| |
| Maxprodcnt	| integer			| |
| Maxnorohst	| integer			| |
| Interval		| integer			| |
| Bauinfra		| integer (enum?)	| |
| Doerrflg		| bool (0 or 1)		| |
| Kosten		| integer, integer	| |
| Figurnr		| integer			| |
| Figuranz		| integer			| |
| Rauchfignr	| integer vec		| |
| Arbeiter		| integer			| |
| NoMoreWork	| bool (0 or 1)		| |
| NoLagVoll		| bool (0 or 1)		| |
| Maxware		| integer, integer	| |
| Workstoff		| integer (enum?)	| |
| Workmenge		| float				| |
| Erzbergnr		| integer			| |
| Anicontflg	| bool (0 or 1)		| |
| MakLagFlg		| bool (0 or 1)		| |
| LagAniFlg		| bool (0 or 1)		| determine wether the animation state in the island is used as animation or stock |
| Nativflg		| bool (0 or 1)		| |
| Piratflg		| bool (0 or 1)		| |
| BGruppe		| integer			| [BGRUPPE](#bgruppe) |

Possible Values for `Kind`:

- UNUSED
- ROHSTWACHS
- ROHSTOFF
- FISCHEREI
- KONTOR
- WERFT
- ROHSTERZ
- pMAUER
- WACHTURM
- MILITAR
- HANDWERK
- STEINBRUCH
- BERGWERK
- PLANTAGE
- JAGDHAUS
- WEIDETIER
- WOHNUNG
- PIRATWOHN
- KIRCHE
- KAPELLE
- WIRT
- THEATER
- BADEHAUS
- MARKT
- KLINIK
- HOCHSCHULE
- SCHULE
- BRUNNEN
- SCHLOSS
- GALGEN
- DENKMAL
- TRIUMPH

### HAUS_BAUKOST ###
Nested in [HAUS](#haus).

Lists the required **Resources** to build the **Building**.

| ID            | Expected Values   | Use |
|---------------|-------------------|-----|
| Money			| integer			| |
| Werkzeug		| integer			| |
| Holz			| integer			| |
| Ziegel		| integer			| |
| Kanon			| integer			| |

## Notes ##

ids ending with "flg" or "Flg" (inconsistent) are booleans represented as an integer as either `0` or `1`.

