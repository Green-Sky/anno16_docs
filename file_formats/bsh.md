# BSH #

Is the file format used to store **Textures** used by the game.
It is usually packed using the [Chunks](./chunks.md) format, but always as a standalone file (missed opportunity), and has either a `.bsh` or `.zei` file ending. `.zei` files contain characters and signs, the name stems probably from the german word `Zeichen` meaning `sign`.

The [Chunk Header](./chunks.md#chunk-header) identifier is either `BSH` or `ZEI`, and depends on the file ending.

After the [Chunk Header](./chunks.md#chunk-header) comes an **Index** of offsets to the **Textures** in the file.

And after that the **Textures** using a [basic form of bitmap](https://en.wikipedia.org/wiki/BMP_file_format) (8-bit indexed with [RLE](https://en.wikipedia.org/wiki/Run-length_encoding)-like compression and custom header ??)

The BSH file doesn't contain the [Color Palette](). It's somewhere in the main executable(??) and has been extracted, possibly using screenshots, since the game sets the palette for the screen and windows copies it into the screenshot(??).

## Format Structure ##

### Texture Index ###

List of 4byte/32bit unsigned integer **Texture** offsets. The **Texture** is at `20(Chunk Header) + offset` absolute file position.

### Texture ###

Starts with a Header:

| Bytes | Use |
|-------|-----|
| 4     | **Width** of the **Texture** |
| 4     | **Height** of the **Texture** |
| 4     | **Num** of the **Texture** (??) |
| 4     | **Len** of the **Texture** in bytes (??) |

Followed by the `RLE`-ish compressed image data.
The **Texture** starts in the upper left corner and can be interpreted in the following loop:

- if the next byte is `0xFF` the image has reached it's end.
- if the next byte is `0xFE` the current pixel line has reached it's end.
- else it's an **Texture Chunk**

**Texture Chunk** layout:

| Bytes     | Use |
|-----------|-----|
| 1         | number of pixels to skip / number of transparent pixels |
| 1         | number of pixels that follow |
| up to 255 | pixels to insert at current position |

## Notes ##

Since there is no length of the **Texture Index**, one can use the offset of the first **Texture** as an **Texture Index** delimiter.

Main source of information: [Sir Henry's Grafx Source](https://github.com/wzurborg/grafx1602).

