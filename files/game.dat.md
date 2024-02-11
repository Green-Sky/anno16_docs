# /Game.dat
Is a [Script](../file_formats/script.md) that stores information on in-game settings and savegames.

## Königs-Edition (KE)

### Example Contents
```
  Musik:     TRUE, 0
  Samples:   TRUE
  Random:    TRUE
  Volume:    -1606, -1606, -597
  VideoQual: TRUE
  
  Song:      0, FALSE
  Song:      2, FALSE
  
  Speach:    0, TRUE
  Speach:    1, FALSE
  Speach:    2, FALSE
  Speach:    3, FALSE
  Speach:    4, FALSE
  Speach:    5, FALSE
  Speach:    6, FALSE
  Speach:    7, FALSE
  
  Video:     0, FALSE
  Video:     1, TRUE
  Video:     2, TRUE
  Video:     3, FALSE
  Video:     4, FALSE
  Video:     5, FALSE
  Video:     6, FALSE
  Video:     7, FALSE
  
  Lastfile: "C:\path\to\Savegame\lastgame.gam"
  
  Endlosnr: 3
  Tutornr:  0

  Kampagne: 0, 2
  Kampagne: 1, 1
  
  Objekt:   SPIELNAME

    Name:      0, "Im Auftr d Königs", 1
    Name:      1, "Im Auftr d Königs2", 1
    Name:      2, "Kreuzverkehr A", 3
    Name:      3, "Kreuzverkehr B", 3
    Name:      4, "Endlos rot", 1
    Name:      5, "", 1
    Name:      6, "", 1
    Name:      7, "", 1
    Name:      8, "", 1
    Name:      9, "", 1
    Name:     10, "", 1
    Name:     11, "", 1
  
  EndObj;
```

### Contents

| Property            | Data Type                          | Purpose                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| ------------------- | ---------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `Musik`             | bool, uint                         | The bool encodes whether playback is enabled. **TODO** The role of the uint is unclear. Values observed so far are 15, 8, and 0, which could mean it is a bitmask.                                                                                                                                                                                                                                                                                                                                                                                  |
| `Samples`           | bool                               | Encodes whether sound effects playback is enabled.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| `Random`            | bool                               | If `TRUE`, music tracks will play in random order (sequential order otherwise).                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| `Volume`            | int, int, int                      | The volume of music, sound effects, and **TODO**. Values range from -4000 (minimum volume) to 0 (maximum volume).                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| `VideoQual`         | bool                               | **TODO** unclear. Could be unused, as there is a registry key for video quality as well.                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| `Song`              | uint, bool                         | Whether the i-th music track is disabled. When a track is re-enabled in-game, the corresponding line is removed entirely, so a line such as `Song: 0, TRUE` never occurs in practice.                                                                                                                                                                                                                                                                                                                                                               |
| `Speach`            | uint, bool                         | Encodes which categories of voice announcements are disabled (`TRUE` means disabled). Index 0 corresponds to the overall setting (if `TRUE`, all announcements are disabled). Indices 1-7 correspond to the seven categories shown in-game in their order of appearance (German version: Ereignisse, Instelstatus, etc.).                                                                                                                                                                                                                           |
| `Video`             | uint, bool                         | Like `Speach`, but for cutscenes. Index 0 corresponds to the overall setting. Disabling the first category of cutscenes in-game ("Ereignisse") will set indices 1 and 2 to `TRUE`. The second category ("Kampfhandlungen") controls index 5, and the third category ("Diplomatie") controls index 7. Other indices appear to be unused.                                                                                                                                                                                                             |
| `Endlosnr`          | uint                               | The difficulty of the last endless game (0: easiest, 3: most difficult).                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| `Tutornr`           | uint                               | **TODO Unclear.** It probably is the index of the next tutorial stage to play, but didn't behave this way.                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| `Lastfile`          | string                             | Filesystem path to the `lastgame.gam` autosave file.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| `Kampagne` | uint, uint | Campaign progress. The first value is the index of the campaign, the second stores the progress. A progress value of `i` means all scenarios up to and including index `i` are unlocked. |
| `Objekt: SPIELNAME` | per savegame: uint, char[32], uint | Stores savegame properties. The number of savegames is hard-capped to 12 (any externally added entries will be removed again by the game). The first uint is the index of the corresponding `game{i:02}.gam` savegame file in [SAVEGAME/](./savegame/index.md). The string is the name of the savegame shown in-game. The in-game character limit is 18 chars, though up to 32 chars will be displayed if `game.dat` is edited externally. The second uint is the number of human players participating (1 = singleplayer, 2 = two-player multiplayer, etc.). |

### Write events
The game updates the contents of `game.dat` whenever:
* the user saves a game
* the user switches from the end-of-game stats screen to the main menu screen
