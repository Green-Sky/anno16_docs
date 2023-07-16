# BSH #

It is the file format used to store **Textures** used by the game.
It is usually packed using the [Chunks](./chunks.md) format, but always as a standalone file (missed opportunity), and has either a `.bsh` or `.zei` file ending. `.zei` files contain characters and signs, the name probably stems from the German word `Zeichen` meaning `sign`.

The [Chunk Header](./chunks.md#chunk-header) identifier is either `BSH` or `ZEI`. This depends on the file suffix.

After the [Chunk Header](./chunks.md#chunk-header) comes an **Index** of offsets to the **Textures** in the file. Different index positions can use the same byte offset, to avoid storing duplicate textures. This is prominently used in `STADTFLD.BSH` in [the KE version](../version_differences.md).

And after that the **Textures** is using a [basic form of bitmap](https://en.wikipedia.org/wiki/BMP_file_format) (8-bit indexed with [RLE](https://en.wikipedia.org/wiki/Run-length_encoding)-like compression and custom header ??)

The BSH file doesn't contain the [Color Palette](). See [COL](./col.md)

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
| 4     | **Length** of the **Texture** in bytes |

Followed by the `RLE`-ish compressed image data.
The **Texture** starts in the upper left corner, is read line wise, and can be interpreted in the following loop:

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

