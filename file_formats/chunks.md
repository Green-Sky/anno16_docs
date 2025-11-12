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

- AUFTRAG
- AUFTRAG2
- AUFTRAG4
- [BSH](bsh.md) (bsh/zei files use this header, but are never packed with other chunks and can be considered there own file format)
- CUSTOM
- HANDLER
- HIRSCH2
- INSEL3
- INSEL4
- INSEL5
- INSELHAUS
- INSEL_MAXFUN
- KONTOR2
- MARKT2
- MILITAR
- [NAME](./chunks/name.md)
- PLAYER2
- PLAYER3
- PLAYER4
- PRODLIST2
- [RANDTAB](./chunks/randtab.md)
- ROHWACHS2
- SHIP4
- SIEDLER
- SOLDAT2
- SOLDAT3
- SOLDATINSEL
- STADT3
- STADT4
- SZENE
- [SZENE_GAMEID](./chunks/szene_gameid.md)
- [SZENE_KAMPAGNE](./chunks/szene_kampagne.md)
- [SZENE_MISSNR](./chunks/szene_missnr.md)
- SZENE_PLAYERMAX
- SZENE_PLAYERMIN
- [SZENE_RANKING](./chunks/szene_ranking.md)
- TIMERS
- TURM
- WERFT
- [WIFF](./chunks/wiff.md)
- [ZEI](bsh.md)

## Formats packed this way ##

- [BSH](./bsh.md)
- [GAM](./gam.md)
- [SCP](./scp.md)
- [SZM](./szm.md)
- [SZS](./szs.md)

## Notes ##

**A lot** of information about those file formats is known, because of [Sir Henry/wzurborg](https://github.com/wzurborg)'s code releases. In particular the two files [Anno1602read.h](https://github.com/wzurborg/scenexplorer/blob/master/Anno1602read.h) and [Anno1602read.c](https://github.com/wzurborg/scenexplorer/blob/master/Anno1602read.c) which seem to be original code excerpts (??).

