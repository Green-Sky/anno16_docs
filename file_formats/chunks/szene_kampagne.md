# Chunk SZENE_KAMPAGNE #

Always 4 bytes. Contains a 32bit (unsigned??) integer.
It contains the index of the campaign to which a scenario belongs.
If present, it's the first **Chunk**.
Files containing this **Chunk** have an number at the end before the file ending.
eg: `Some Scenario0.szs`

## Observed Values ##

Gold Edition campaign indexes:

- 0: New Horizons
- 1: Trust No One
- 2: The Magnate
- 3: Pirata
- 4: Unfriendly Neighbors
- 5: On His Majesty's Service

For example, `On His Majesty's Service0.szs` to `On His Majesty's Service3.szs` should contain the value `5`.

The [Campaign Installer](https://github.com/wzurborg/CmpInstall/blob/main/Scenario.cpp#L31) reads this chunk to determine the campaign.

## Used in ##

- [SZS](../szs.md)

