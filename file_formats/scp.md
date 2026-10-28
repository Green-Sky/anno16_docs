# SCP #

Is a [Chunks](./chunks.md) file format used for Islands.

It contains at least one of the following **Chunks**:
- INSEL3
- INSEL4
- INSEL5

The chunk type INSEL3 is 60 bytes, INSEL4 and INSEL5 are 136 bytes long.

## INSEL header ##

Most of the fields in the INSEL chunk are currently unknown.

| Offset | Bytes | Use |
|--------|-------|-----|
| 21     |1      | **Width** of the island in tiles |
| 22     |1      | **Height** of the island in tiles |
| 23     |1      | *Unknown?* |
| 24     |2      | **X coordinate** on the map |
| 26     |2      | **Y coordinate** on the map |
| 120    |1      | Island type. `0`: appears in the "northern" part of the map, `1`: appears in the southern part. (Missing for INSEL3)|

## INSELHAUS header ##

| Bytes | Use |
|-------|-----|
| 4     | Size of the object array in bytes. I.e. Number of objects in the chunk, multiplied by the size of the object (8) |

## Objects ##

Each object is 8 bytes long.

| Bytes | Use |
|-------|-----|
| 2     | Tile ID |
| 1     | **X coordinate** in the island coordinate system |
| 1     | **Y coordinate** in the island coordinate system |
| 4     | Tile data (bitfield) |

### Tile data ###

| Bits | Use |
|------|-----|
| 2    | Orientation |
| 4    | Animation (?) |
| 8    | Island (?) |
| 3    | City (?) |
| 5    | Unknwon (?) |
| 4    | Player (?) |
| 6    | Unknown (?) |


## Tile IDs ##

Tile ids are likely related to the ids defined in [haeuser.cod](../haeuser.cod.md).

The numerical tile id binds the object to the tile. Note that some tile types have mutliple ids, representing "variations" and "growth stages" (e.g. a forest can be fully grown, just saplings etc.).
If a tile has both variations *and* growth stages the ids are ordered variant-a-growth-0, variant-a-growth-1, variant-b-growth-0, ...

## Orientation ##

The numerical values (0-3) map to North, East, South, West. (The order is correct, the game may offset them differently i.e. may start with 0=east instead of north and so forth).

## Notes ##

Main source of information: <https://www.zur-borg.de/Anno1602/scp-tab.htm>
