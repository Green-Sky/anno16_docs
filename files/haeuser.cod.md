# /haeuser.cod #

Is an [Encrypted](../file_formats/encryption.md) [Script](../file_formats/script.md).

## List of Object Types ###

### BGRUPPE ###

| ID            | Expected Values   | Use |
|---------------|-------------------|-----|
| Prozent		|					| |
| Maxwohn		|					| citizen per building |
| Steuer		|					| tax per citizen |
| Hiscore		|					|  |

### BGRUPPE_WARE ###
Nested in [BGRUPPE](#bgruppe).

| ID            | Expected Values             | Use |
|---------------|-----------------------------|-----|
| Ware			| COMMODITY, amount in float | how much they need for the next level |

note: amount is `ORG/SUN` ??

### BAUINFRA ###
Infastructure levels.

| ID            | Expected Values   | Use |
|---------------|-------------------|-----|
| BGruppe		| integer			| the [BGRUPPE](#bgruppe) to require citizen of |
| Minwohn		| integer			| the amount of citizen to require |

### HAUS ###

| ID            | Expected Values   | Use |
|---------------|-------------------|-----|
| Kind 			|					| |
| Gfx 			|					| |
| Baugfx 		|					| |
| Blocknr 		|					| |
| Posoffs 		|					| |
| Wegspeed 		|					| |
| Highflg 		|					| |
| Einhoffs 		|					| ?? |
| Bausample		|					| |
| Ruinenr		|					| |
| Maxenergy		|					| |
| Maxbrand		|					| |
| Size			|					| |
| Rotate		|					| |
| PlaceFlg		|					| |
| RandAnz		|					| |
| RandAdd		|					| |
| AnimTime		|					| |
| AnimFrame		|					| unused?? |
| AnimAnz		|					| |
| AnimAdd		|					| |
| NoShotFlg		|					| |
| Randwachs		|					| |
| Tuerflg		|					| |
| Ausbauflg		|					| |
| KreuzBase		|					| |
| Destroyflg	|					| |
| Strandflg		|					| |
| Strandoff		|					| |
| Mundoff		|					| |
| Grundflg		|					| |

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
| Kind			|					| |
| Ware			|					| |
| Radius		|					| |
| Rohstoff		|					| |
| Rohmenge		|					| |
| Randwachs		|					| |
| Maxlager		|					| |
| Maxprodcnt	|					| |
| Maxnorohst	|					| |
| Interval		|					| |
| Bauinfra		|					| |
| Doerrflg		|					| |
| Kosten		|					| |
| Figurnr		|					| |
| Figuranz		|					| |
| Rauchfignr	|					| |
| Arbeiter		|					| |
| NoMoreWork	|					| |
| NoLagVoll		|					| |
| Maxware		|					| |
| Workstoff		|					| |
| Workmenge		|					| |
| Erzbergnr		|					| |
| Anicontflg	|					| |
| MakLagFlg		|					| |
| LagAniFlg		|					| |
| Nativflg		|					| |
| Piratflg		|					| |
| BGruppe		|					| [BGRUPPE](#bgruppe) |

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

Lists the required *Resources* to build the *Building*.

| ID            | Expected Values   | Use |
|---------------|-------------------|-----|
| Money			| integer			| |
| Werkzeug		| integer			| |
| Holz			| integer			| |
| Ziegel		| integer			| |
| Kanon			| integer			| |

