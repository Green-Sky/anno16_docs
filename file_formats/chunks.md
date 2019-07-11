# Chunks #

The Chunks file format is used for (almost?) all binary type files.
It basicly is a container type to pack different binary files together.

The format is very simple, the [Chunk Header](#chunk-header) consists of a file type identifier as ascii string, padded with junk to fill full 16 bytes. Then comes a 4 byte/32bit (unsigned?) integer indicating the size of the chunk, excluding the header.

## Format Structure ##

### Chunk Header ###

| Bytes | Use                                   |
|-------|---------------------------------------|
| 16    | chunk type identification + padding   |
| 4     | size of chunk (excluding this header) |

## Chunk ID list ##

- [BSH](bsh.md) (bsh/zei files use this header, but are never packed with other chunks and can be considered there own file format)
- [ZEI](bsh.md)
- INSELHAUS
- INSEL3
- INSEL4
- INSEL5
- INSEL_MAXFUN
- PRODLIST2
- ROHWACHS2
- SIEDLER
- WERFT
- MILITAR
- KONTOR2
- MARKT2
- STADT3
- STADT4
- HIRSCH2
- SHIP4
- HANDLER
- SOLDAT2
- SOLDAT3
- SOLDATINSEL
- TURM
- TIMERS
- PLAYER2
- PLAYER3
- PLAYER4
- AUFTRAG
- AUFTRAG2
- AUFTRAG4
- SZENE
- [SZENE_KAMPAGNE](./chunks/szene_kampagne.md)
- [SZENE_MISSNR](./chunks/szene_missnr.md)
- SZENE_PLAYERMIN
- SZENE_PLAYERMAX
- [SZENE_GAMEID](./chunks/szene_gameid.md)
- [SZENE_RANKING](./chunks/szene_ranking.md)
- [RANDTAB](./chunks/randtab.md)
- [NAME](./chunks/name.md)
- CUSTOM
- [WIFF](./chunks/wiff.md)

## Formats packed this way ##

- [BSH](./bsh.md)
- [SCP](./scp.md)
- [SZS](./szs.md)
- [SZM](./szm.md)
- [GAM](./gam.md)

## Notes ##

**A lot** of information about those file formats is known, because of [Sir Henry/wzurborg](https://github.com/wzurborg)'s code releases. In particular the two files [Anno1602read.h](https://github.com/wzurborg/scenexplorer/blob/master/Anno1602read.h) and [Anno1602read.c](https://github.com/wzurborg/scenexplorer/blob/master/Anno1602read.c) which seem to be original code excerpts (??).

