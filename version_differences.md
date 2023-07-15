# Version and Language Differences

_Note on OS compatibility_: There is considerable variation in file name casing (e.g. `Bauhaus.bsh` vs. `BAUHAUS.BSH`) across game versions, languages, and folders. Projects targeting support for OS with case-sensitive file systems (i.e. Linux) should keep this in mind. It does not matter on Windows, since Windows' file system is case-insensitive.

- [Original](#original)
- [Neue Inseln, neue Abenteuer (NINA)](#neue-inseln-neue-abenteuer-nina)
- [Königs-Edition (KE)](#königs-edition-ke)
    - [COD files](#cod-files)
    - [GFX](#gfx)
    - [MGFX](#mgfx)
    - [SGFX](#sgfx)
    - [ToolGfx](#toolgfx)
        - [Language-agnostic Files](#language-agnostic-files)
        - [Language-specific Files](#language-specific-files)
- [Good Old Games (GOG)](#good-old-games-gog)
    - [English, German, French Versions](#english-german-french-versions)
        - [COD files](#cod-files-1)
        - [GFX/MGFX/SGFX](#gfxmgfxsgfx)
        - [ToolGfx](#toolgfx-1)
            - [Language-agnostic files](#language-agnostic-files-1)
            - [Language-specific files](#language-specific-files-1)
    - [Polish Version](#polish-version)
        - [COD files](#cod-files-2)
        - [GFX](#gfx-1)
        - [MGFX](#mgfx-1)
        - [SGFX](#sgfx-1)
        - [ToolGfx](#toolgfx-2)
- [History Edition (HE)](#history-edition-he)
    - [COD files](#cod-files-3)
    - [GFX, MGFX, SGFX](#gfx-mgfx-sgfx)
    - [ToolGfx](#toolgfx-3)
        - [Language-agnostic files](#language-agnostic-files-2)
        - [Language-specific files](#language-specific-files-2)

## Original
TODO

## Neue Inseln, neue Abenteuer (NINA)
TODO

## Königs-Edition (KE)
Information taken from the German release:
* EXE file version: `0.2.5.2`
* EXE product version: `1.0.0.5`

### COD files
| Name | SHA-256 |
|------|---------|
| haeuser.cod | `82799ca9b24ae05745818f39c302f46c732e90eb7d6675d5cd6661fed15d2656` |
| figuren.cod | `2313eeb802ae7f2c4130c611e96489bc172a451d85710d4bf842d58b9e81115c` |

### GFX
See [files/gfx/](files/gfx/) for a detailed discussion of file contents.

Changes in the KE version compared to **TODO the Polish GOG version, which is yet to be identified (suspicion is NINA)**:
* Additions: `FISCHE.BSH`, `GAUKLER.BSH`, `SCHATTEN.BSH`.
* Modifications:
    * `STADTFLD.BSH` adds **TODO what exactly?**
    * `TIERE.BSH` adds an antelope
    * in `MAEHER.BSH`, a single pixel in the 1060th image has changed
    * in `EFFEKTE.BSH`, a volcano projectiles and crates floating on the surface (shown after a ship sinks) were added
    * `SHIP.BSH` has a different file hash, but image contents are identical

| Name | SHA-256 |
|------|---------|
| EFFEKTE.BSH | `11eaa1322619bb1379b55613c4f51167861483231ef5c7381e8fce0a01b256fd` |
| FISCHE.BSH | `9cf2fc9e6a1fca0b512f61bd843bdd0be47ddae9b4b7627bed2f49e4e802a9df` |
| GAUKLER.BSH | `4414d65eecd295210760915388f654b9711ed279d0b634011c67c153af4bf42a` |
| MAEHER.BSH | `56196895ef4a8b826dd800dfdb299a8253d2ef3c645cb7b53269bb5d65c9a4ab` |
| NUMBERS.BSH | `73e878f8e4143a21463fb2f3e1416ede17d8af0fa634c6e8837ac9da12a69092` |
| SCHATTEN.BSH | `56ee1712645c5f760697edabbf138e73d2d3a7f57cf63a9174206704eb5e3710` |
| SHIP.BSH | `446bd77296ab4aec88f4fd9cadc0812e5e0686fa850e6bf49b2a208cb8b69065` |
| SOLDAT.BSH | `7270d576570b1481aaf3b90fcced37747ea31829978e7666a61cfb7274e125a1` |
| STADTFLD.BSH | `5a4d46474680d4eaae62b8a768c25bf8e9ef9d35f14a83b11570703ba4b08e8c` |
| TIERE.BSH | `a16608cf1f5ad7133ae30c414b0dc72ec491041ddc0282af0f4ceaef252c13f3` |
| TRAEGER.BSH | `36b4ab78e92b09a0766af1ac8b57769c8802ed6ffd3c1edd06930082bb2d4315` |

### MGFX
See [files/mgfx/](files/mgfx/) for a detailed discussion of file contents.

| Name | SHA-256 |
|------|---------|
| Effekte.bsh | `ccd8e06fd84b134188533a04ddc6939977a4b43692f2f93f4ae28e7a416a455c` |
| FISCHE.BSH | `f75601eb70b94233f27a395033716331b96a311110090010b5ac1843bac67f13` |
| GAUKLER.BSH | `b5d0b43dfa75edd66ef936a6a8fbfc01c165ccec2be2febd8285dd8313bfd2c4` |
| MAEHER.BSH | `cc3ff2e982efacfcbf603b1e4b2f9fe7413af43247df503035eec94d93798b35` |
| NUMBERS.BSH | `3cb6fb99924dd02d2b22d4c86da9c88d5ce070f20137e63799bdfed9c2c5b752` |
| SCHATTEN.BSH | `ee0eb779f88fe11e636c62084c640186df4d9d57b38b756679aeda1dbad4a35d` |
| SHIP.BSH | `65d88b51ab76eacdd06dfc0404e8a266d98380ad70be2611c3648d87e1222ac1` |
| SOLDAT.BSH | `79667644bf11a40de3726a6b84839f33a22ee438c6afb28e8c1011d2cfb59766` |
| Stadtfld.bsh | `398b99798f9e96887829dfb94871f5afd52d70632b4485bb1b8e62a14d059391` |
| TIERE.BSH | `8ea5d8f4a4d1df5b53dc300bf90d5234b73f2faa81733bc87cca07f06278a99c` |
| TRAEGER.BSH | `348993fdd21e08fa16edf26661da5d899ddee52581f8bca443dab9694e3335a7` |

### SGFX
See [files/sgfx/](files/sgfx/) for a detailed discussion of file contents.

| Name | SHA-256 |
|------|---------|
| Effekte.bsh | `1606c5a20d995ed1b71e649702d837745837c9caec21be91928256fd10bbcf59` |
| fische.bsh | `10a6385c352d43060525e8fecb171905b55d476ec559bec115fc7f1869ef5f28` |
| gaukler.bsh | `7f907eacdf90d6512cc44d2ddb8eb5e3189de58fe34f1babd7f72c9f6c277019` |
| Maeher.bsh | `088fb6261e414604046d9a6c13c82f8f30fbe9c2d05221fd5b7fd10d9480ab46` |
| Numbers.bsh | `a4a86260cc967dae7b42b306628d6af3f5f0d3fe46af63fa828cb95d923958f8` |
| schatten.bsh | `216f542727088f1d53ba381eaf8201725f445f02d2ae3bf230f69a33fd706cfb` |
| Ship.bsh | `dd46efa5f4b84f1ebea3eb61d446a193499f51436fc6a53301f77397a3c9c68d` |
| Soldat.bsh | `f0810d8ec08e8571b5f49129279da445d442e6d19f4830225d29e31dc622bed3` |
| Stadtfld.bsh | `b71f34ee9ef70843683759f5f6ad9eddc552e35afae7e69629c8347fd1dcedc0` |
| Tiere.bsh | `1e5581c5cbe1f9861b59291ddd76c4d7ed9298501870d2dcc402ba97832fab5b` |
| Traeger.bsh | `199cf0d96cc3d0a8508c59949acfdd3999b8907453fba83d447cd80392aee982` |

### ToolGfx
See [files/toolgfx/](files/toolgfx/) for a detailed discussion of file contents.

#### Language-agnostic Files

| Name | SHA-256 |
|------|---------|
| BAUHAUS.BSH | `89634b8c86fff5dce7c5661def79ee2e9820d0a757db475217a12f4142f1ab6b` |
| BAUHAUS6.BSH | `5389ea9c3a1f7803440963431d6d8ac8c1c64ddbac534c3776cad259a60389e5` |
| Bauhaus8.bsh | `7ad7127315ba4fd93a255fdd1f32d584a6e0b56afb7b9fea6a2e271df1946afd` |
| BAUSHIP.BSH | `534fc21e087c02d32085d359b94183411df9042888e6de9dfb6a6106970cad03` |
| Bauship6.bsh | `e160b3eb5f5c6ca05d817a6b6a4c51a9497545ef7e4b08dcbf6b735cdb09caa0` |
| Bauship8.bsh | `44aec439c19ebfedb23b644d7a44fe5ff2f088fa0e34d05cfd47375cdd4cc2d3` |
| STADTFLD.COL | `667d6a6752132517bb17647e01eccaaa4a5232a6b883f6b7584db1bfb318ad5f` |
| SYMBOL.BSH | `c102c45bcb3ce7ffe75c5c9aff013d8dbe20fcdc8fd0573cde3c25b91249d827` |
| ZEI11A.ZEI | `3c7e5d90130f814b926c182f7113c9a710265e53d61dbf45f60616f33a44984c` |
| ZEI14A.ZEI | `fd1a0ccf19554aa1370b5550492b47e560e7f244c5d93aa805aeb954ac1c8b15` |
| ZEI14V.ZEI | `ed3de82ba619833ee79bf2b3148c12caa941b88337590b78b4e97bf743a11d46` |
| ZEI16G.ZEI | `8fe099b89ba5312c40b73780efd983aba4120f6bbee0b7f8c51f9e47ffee4f86` |
| ZEI16H.ZEI | `49673902581cd228e51037c1b8e15230f7bae34b9b14c57522ff562a26c8f49f` |
| ZEI16V.ZEI | `32dc535fb90e4304f300dfbaa9b5c1ae13e7a050016ded786c4bfc6de3996557` |
| ZEI2.ZEI | `aca0080889911926aa14e8772b74915c84370fcd59ae9c970de1864085107fc0` |
| ZEI20H.ZEI | `ebf2b9fd6b417db02fa3d1df975ba47fe5da8b54f413eaeb88770bcd33d4bf13` |
| ZEI20V.ZEI | `6bfc71d979f6678626f26caa8c23c81cdcc4f3d8968b4118c5dc816fb238dc13` |
| ZEI24V.ZEI | `b7730ef6e5c1301e7d0c6328420201b09f5195976b82fc04b638e1a9f0ada86a` |
| ZEI28V.ZEI | `fa6b5d99f4f329c4dae5708da6ae4bc6fbc094662a79a9f04aff872e3aadf49b` |
| ZEI9A.ZEI | `94eac5d80486b9e85818fe27fc768a6facd6d3c9db423befc62d94bae516f923` |

#### Language-specific Files

German:

| Name | SHA-256 |
|------|---------|
| Editor.bsh | `1d307eda649c3233b723b99cc9fee5c8fa49799451292339231670b7c337cb0e` |
| Editor6.bsh | `e405d0f14b5ea6245de36970d53bcd161fdca3131ad2a26809c38cdeee301d5a` |
| Editor8.bsh | `de2da9f2074d4ec8cfab8c90fd9a35be0f60cf97e92e066923a25aaa66aa0a4e` |
| START.BSH | `6a2362a47ca5c0184516c4ffff580c44adb7877754e6423a3565766ddf6ab69c` |
| Start6.bsh | `31ba38fc35bc989e9ba0862bedaa0910fd734d381e27a0f423492ba02f870abe` |
| Start8.bsh | `9f2240033851d23f5d2330f2daf282a3fde7d61f28a35a2ddb77f12e28223127` |
| TOOLS.BSH | `9f9f650a0fdb4e521f3a5b2f1a08bf686119071935849e72aace2e109b71c419` |
| TOOLS6.BSH | `7c7973acf57cf23fa4f2d7f43f49fba48b08426b9dbea52427300de47de862a8` |
| TOOLS8.BSH | `e9674db53784d7ffc5be35437e350caeab1dfe2cb20dcf40b637db29be4a4761` |

**TODO add other languages and compare them to GOG, HE**


## Good Old Games (GOG)
A re-release that doesn't require a disk drive, or mounting disk images. Product website: https://www.gog.com/de/game/anno_1602_ad

The game version depends on the in-game language.

### English, German, French Versions

English:
* EXE file version: `0.2.5.1`
* EXE product version: `1.0.0.5`

German:
* EXE file version: `0.2.5.1`
* EXE product version: `1.0.0.5`

French:
* EXE file version: `0.2.5.2`
* EXE product version: `1.0.0.5`

#### COD files
Identical to ![KE](#königs-edition-ke)

#### GFX/MGFX/SGFX
Identical to ![KE](#königs-edition-ke)

#### ToolGfx
See [files/toolgfx/](files/toolgfx/) for a detailed discussion of file contents.

##### Language-agnostic files
Identical to ![KE](#königs-edition-ke)

##### Language-specific files
German: Identical to German ![KE](#königs-edition-ke) files.

English:

| Name | SHA-256 |
|------|---------|
| EDITOR.BSH | `3008785d1d3205fe36e60aec8661ae15ae8347dca0d76e11eaf9d7b3c4d3f581` |
| editor6.bsh | `f113425504242fcddcf9a28b6bc2e1c41f9e72183d3b79b835c0f100778c6051` |
| editor8.bsh | `1f8fd94164fa0cc123c9149e1c9469daf3ae9b62ef6699a1c5b753bbfc83a20f` |
| START.BSH | `c7b67c8dbb93c3fbdc56e028f4726cfc15b24b2e1121fa0e9eec96ec2cd38b92` |
| start6.bsh | `f432cd285de2700f87333aa60b8f61db7a77b94490be4bda230f4173dc259dcc` |
| start8.bsh | `27c7cfb6b288e27eac49133b7576eee103abb158cd89a9826748fe2c5b88accc` |
| TOOLS.BSH | `071c4d56568551e860cbfba7a447057524e82b3cb17fb14061e45e71b85f6dbd` |
| tools6.bsh | `0744e8a474fc55e2414c0766f70738858b12359e40a94c5b592f9bd5058b01bc` |
| tools8.bsh | `66f7bd5d37482657d162e55b59862cb51f61762484ccea0029c8d8fb483c5a84` |

French:

| Name | SHA-256 |
|------|---------|
| EDITOR.BSH | `40d7dfcc7fd4d508cbfbcc61343fe957d42257330a06a9d8c4b39bee31cbb9d6` |
| editor6.bsh | `b491a5975a2b43ef8a925176707a8312331ff9b7086395014e6c882b298887a7` |
| editor8.bsh | `985ecf5d3ddfd8e28c47186d3c8c1000f263a966497131a24c6055960580ae08` |
| START.BSH | `3a09c79f873913c43a28ef6f51dc807630349256fcb520e2a2727a7d54489781` |
| start6.bsh | `e000ce475c3d2790b9efc7770bfbd618c51f27537a7841cebd8e99aa8104274b` |
| start8.bsh | `583dfc051bed78191704bea8fff7e90d625d6172fdc9b3e83984ca82492904ae` |
| TOOLS.BSH | `25735ad51843182310f2952e1de38974ad4a746ed9950ac4b180ac85554895e3` |
| tools6.bsh | `657045dcc360759e505a64809e3cd48dca770f3f2e5b70b8ac7065c58e07b7da` |
| tools8.bsh | `f8eb4c408d7ba4fc4551c193bfa427104ffd0002b932a8f791f3b6ced0e7296e` |


### Polish Version
* EXE file version: `0.1.9.6`
* EXE product version: `1.0.0.5`

This version does not include the [island editor](files/1602edit.exe.md).
GFX/MGFX/SGFX are identical to **TODO NINA version??**

#### COD files
| Name | SHA-256 |
|------|---------|
| Haeuser.cod | `ff6231ad15df44b4f7bc724ba28fe0938287fa86f9e49634cebc1bd65f214aec` |
| Figuren.cod | `e19ff84fbf9771b1fd7d01569e8674cf230d258e16e8d500da27829d073a2f39` |

#### GFX

| Name | SHA-256 |
|------|---------|
| NUMBERS.BSH | `73e878f8e4143a21463fb2f3e1416ede17d8af0fa634c6e8837ac9da12a69092` |
| Maeher.bsh | `1a1fc293bd5a22517c2bb1533adac74e6c82d921fae91db9bcdb0e6406601d6d` |
| Tiere.bsh | `276ee161034878c43b12fb949f174360e9bc5801c24f9d3809a7c5128545fdc5` |
| Ship.bsh | `e3b943f4680750fbaaa525f2b0ac0e68a45bfe93f37c10aac219a7036b57d750` |
| Stadtfld.bsh | `d80befc6303a92bb67cb2d12fef8510aa5acb60ecdcba5500afb2e31bab7bd5c` |
| Effekte.bsh | `cb04c1f1c0fa3b156ad3f7ddedaa975375afe59f6ac55814d542de74d292f945` |
| TRAEGER.BSH | `36b4ab78e92b09a0766af1ac8b57769c8802ed6ffd3c1edd06930082bb2d4315` |
| SOLDAT.BSH | `7270d576570b1481aaf3b90fcced37747ea31829978e7666a61cfb7274e125a1` |

#### MGFX

| Name | SHA-256 |
|------|---------|
| NUMBERS.BSH | `3cb6fb99924dd02d2b22d4c86da9c88d5ce070f20137e63799bdfed9c2c5b752` |
| Tiere.bsh | `37381fad5305219d7c02bda419ed1abdc3015e51fd878c138222bad14cf895d3` |
| Ship.bsh | `ccf472f430e747994d0e66b3e64dea000981cfc711bc4dc167f47a38152a7187` |
| MAEHER.BSH | `cc3ff2e982efacfcbf603b1e4b2f9fe7413af43247df503035eec94d93798b35` |
| Stadtfld.bsh | `fa841234d19edb9eb73d240b8c9a63c27e84fef59e7c839ac93fa6544d27ccc4` |
| Effekte.bsh | `bf984210f45a0e0034fef7d92fe44ece8124f4b1128b5001f97bcbd811d716b7` |
| TRAEGER.BSH | `348993fdd21e08fa16edf26661da5d899ddee52581f8bca443dab9694e3335a7` |
| SOLDAT.BSH | `79667644bf11a40de3726a6b84839f33a22ee438c6afb28e8c1011d2cfb59766` |

#### SGFX

| Name | SHA-256 |
|------|---------|
| Maeher.bsh | `088fb6261e414604046d9a6c13c82f8f30fbe9c2d05221fd5b7fd10d9480ab46` |
| Tiere.bsh | `8950f5c93bff2023d7e98e52fc92ffd6e924c5ebef390bdc06e334ee82db5a94` |
| Ship.bsh | `2cb024acc57624a74fae0375eee696da2e18bdfe931ed49c487c140fc023b13b` |
| Traeger.bsh | `199cf0d96cc3d0a8508c59949acfdd3999b8907453fba83d447cd80392aee982` |
| Soldat.bsh | `f0810d8ec08e8571b5f49129279da445d442e6d19f4830225d29e31dc622bed3` |
| Stadtfld.bsh | `25b27239d6329853afd608fd282f6fb77108805d81458ff7d8dd559ffdc57e13` |
| Numbers.bsh | `a4a86260cc967dae7b42b306628d6af3f5f0d3fe46af63fa828cb95d923958f8` |
| Effekte.bsh | `74cab7c0214c7be382e44efd3d658c93d70b9e7576bc254496fabfc1955a205b` |

#### ToolGfx

| Name | SHA-256 |
|------|---------|
| Bauhaus.bsh | `7489b8a1cd5747e59c605969dde07b7e24a100b283c941865d47186b046a4f57` |
| Bauhaus6.bsh | `2c4599f77f95cb564d6f7b4ca2a8ee47f1a0fa53a77eef8b723c999bc91d078b` |
| Bauhaus8.bsh | `0dd7bfdfcc77de60ab614c9f9c06f7aebcae46c9049dcda4ea17539a3ea4e492` |
| BAUSHIP.BSH | `534fc21e087c02d32085d359b94183411df9042888e6de9dfb6a6106970cad03` |
| Bauship6.bsh | `e160b3eb5f5c6ca05d817a6b6a4c51a9497545ef7e4b08dcbf6b735cdb09caa0` |
| Bauship8.bsh | `44aec439c19ebfedb23b644d7a44fe5ff2f088fa0e34d05cfd47375cdd4cc2d3` |
| STADTFLD.COL | `667d6a6752132517bb17647e01eccaaa4a5232a6b883f6b7584db1bfb318ad5f` |
| Start.bsh | `443c7fe0989eb6d4c9e35017a08ad15d0f4b57d9dff54e414b56d79711ddb28a` |
| Start6.bsh | `6dc9770af9f3d3e492a8e8f602f8e7772abc797e567421e27949428f35453c4e` |
| Start8.bsh | `3291b3670053bf5e32c11ec33084ae752c2c101ef3671f66b09a459b944238e5` |
| Symbol.bsh | `7e7f863d7adcca00227dde1973e727d20e53d77283c979e17d5047c311ff2cc2` |
| Tools.bsh | `0852bd0b663e494beb209be7f698090546e96fe544c47d5c1dc1042ded48c456` |
| Tools6.bsh | `82723f3cab16b287f2ef385c87fa6b027de60246821f1f3d3f330a211b11e0ad` |
| Tools8.bsh | `c4e9a31dd30610168112c31da4fc03bcb6cff52d18481355620f744b511d942c` |
| Zei11a.zei | `e71a2f730b9dcacbb504e5e3f9540ca2b4cc73df36b76af75d63c8f432235d29` |
| Zei14a.zei | `ede0d6811689a427d75b1863d9841f76fcfcae0b1f8f9955689d308269f84a65` |
| Zei14v.zei | `527bcfb19d5aedd76478734ed1cce73052e856d6b17ff71abf588366714d56c3` |
| ZEI16G.ZEI | `8fe099b89ba5312c40b73780efd983aba4120f6bbee0b7f8c51f9e47ffee4f86` |
| ZEI16H.ZEI | `49673902581cd228e51037c1b8e15230f7bae34b9b14c57522ff562a26c8f49f` |
| Zei16v.zei | `dbff364083aa7cee4bcc78f4259568d49f2d6a14c4ea18e3e5cee63b328ec33f` |
| ZEI2.ZEI | `aca0080889911926aa14e8772b74915c84370fcd59ae9c970de1864085107fc0` |
| ZEI20H.ZEI | `ebf2b9fd6b417db02fa3d1df975ba47fe5da8b54f413eaeb88770bcd33d4bf13` |
| Zei20v.zei | `fd20022767cc6d56ea9f19806cc854d7f4a742170f4c295bc13b3e494ef788d1` |
| zei20vl.zei | `9192d0d640ab6bce80ed19b417845c158e44b6006a21f94f00d1ddb2eb0e6b75` |
| Zei24v.zei | `7656a4172e2b17b6bdb7eb1b5e1c04f48090a0060d1f9bc9dbc4f453439eeb35` |
| Zei28v.zei | `b9f64817671add44d53244c600d50ea93969628ba9e0f72cd8e0bd07c08f6bd7` |
| Zei9a.zei | `4647d3506dfcda3b8a760867582af3f80fb78b77b41b0abfcb53ab2edcea5726` |

## History Edition (HE)
A refresh of [KE](#königs-edition-ke) that adds 64-bit support, widescreen and 4K screen resolutions. Product website: https://store.ubisoft.com/de/game?pid=5ebc1bc50d253c2420445272

* EXE file version: `1.0.0.0`
* EXE product version: `1.0.0.0`

### COD files
Identical to ![KE](#königs-edition-ke).

### GFX, MGFX, SGFX
Identical to ![KE](#königs-edition-ke).

### ToolGfx
`BAUHAUS.BSH`, `BAUSHIP.BSH`, `STADTFLD.COL`, `SYMBOL.BSH` remain identical to KE.

Changes in the HE version compared to KE:
* Modifications:
    * Menu graphics were added to the language-specific menu images (`TOOLS.BSH`, `Editor.bsh`, `START.BSH`). Some images are stored directly in RGB format, opposed to using color palette indices [[source]](https://github.com/siredmar/mdcii-engine/issues/87#issuecomment-770234926).
* Removals:
    * BSH files ending with 6 or 8 (`Bauhaus8.bsh`, `TOOLS6.BSH`, etc.) are removed
    * Removed fonts: `ZEI11A.ZEI`, `ZEI14V.ZEI`, `ZEI24V.ZEI`, `ZEI16V.ZEI`, `ZEI9A.ZEI`

#### Language-agnostic files

| Name | SHA-256 |
|------|---------|
| BAUHAUS.BSH | `89634b8c86fff5dce7c5661def79ee2e9820d0a757db475217a12f4142f1ab6b` |
| BAUSHIP.BSH | `534fc21e087c02d32085d359b94183411df9042888e6de9dfb6a6106970cad03` |
| STADTFLD.COL | `667d6a6752132517bb17647e01eccaaa4a5232a6b883f6b7584db1bfb318ad5f` |
| SYMBOL.BSH | `c102c45bcb3ce7ffe75c5c9aff013d8dbe20fcdc8fd0573cde3c25b91249d827` |
| ZEI14A.ZEI | `fd1a0ccf19554aa1370b5550492b47e560e7f244c5d93aa805aeb954ac1c8b15` |
| ZEI16G.ZEI | `8fe099b89ba5312c40b73780efd983aba4120f6bbee0b7f8c51f9e47ffee4f86` |
| ZEI16H.ZEI | `49673902581cd228e51037c1b8e15230f7bae34b9b14c57522ff562a26c8f49f` |
| ZEI2.ZEI | `aca0080889911926aa14e8772b74915c84370fcd59ae9c970de1864085107fc0` |
| ZEI20H.ZEI | `ebf2b9fd6b417db02fa3d1df975ba47fe5da8b54f413eaeb88770bcd33d4bf13` |
| ZEI20V.ZEI | `6bfc71d979f6678626f26caa8c23c81cdcc4f3d8968b4118c5dc816fb238dc13` |
| ZEI28V.ZEI | `fa6b5d99f4f329c4dae5708da6ae4bc6fbc094662a79a9f04aff872e3aadf49b` |

#### Language-specific files

English:

| Name | SHA-256 |
|------|---------|
| TOOLS.BSH | `a35e3712dd63b824c1b4ee51a606bbddcabaf5c6b74fe02b0d81a02a4008679c` |
| Editor.bsh | `6a4170e5e26604f36f0eb6c9668c8e62e419ea6757e712554420b51fd87803fb` |
| START.BSH | `e971915f6977b4175509320ec49a748bfdf54ea2da59440c2c73ede7976b20bc` |

German:

| Name | SHA-256 |
|------|---------|
| Editor.bsh | `9aef160c47a2f8037a18b5021a55db7c7343ab957734d8f26befdad6d8074c0d` |
| START.BSH | `b4b7ec76af745682eca0e89c6fb6598871d4a542f8736313728486eedbb3efdf` |
| TOOLS.BSH | `8a799204d5376ea5360e05150b6fd4c65bb572dbb63c969856f81bff27dda8c8` |

Spanish:

| Name | SHA-256 |
|------|---------|
| EDITOR.BSH | `12ded638f6a1a194f4a29426d4dca42b6a17f3dc0fce707fcc0cdfde1cf9dba8` |
| START.BSH | `ca31536e15059a623965a6648aacb7728f6048f1641c3633a66749c8a52ed4b5` |
| TOOLS.BSH | `0140c4917e353ef5ca4507e97fbd141e13265b3bdb691d013beade80ebcb1893` |

French:

| Name | SHA-256 |
|------|---------|
| EDITOR.BSH | `40d7dfcc7fd4d508cbfbcc61343fe957d42257330a06a9d8c4b39bee31cbb9d6` |
| START.BSH | `e29488f08fb514ef8033d5a5f09729897029cb996be895b4726f4dc3d632765b` |
| TOOLS.BSH | `6a86d18d07224bcf6b248d148609f191aba15e3296ac271fa0cadeb8d72d6d9a` |

Dutch:

| Name | SHA-256 |
|------|---------|
| EDITOR.BSH | `701f2e4a24b42945eb1eae2a62c8b3352ca5880a822d6d49b3b95678116666b2` |
| START.BSH | `e87020e4e1cd12ab812ac652d7b7dac3e8605dd56b7fe2e40d955b1698e963d1` |
| TOOLS.BSH | `f549ca99ff0309bb154a0f16b664b8b666767257321e7f84c404c93784d879c3` |

Polish:

| Name | SHA-256 |
|------|---------|
| EDITOR.BSH | `324f90c8ae3d0a17b45c117d7435af86a32c5b01ea900dd19b944de7ad155b50` |
| START.BSH | `886be80f7d6c56ece054b6b375b269850a658d2b59e420dbac29d4aa5a12907c` |
| TOOLS.BSH | `d3428fd3e3087787868ef622012c0897f9c248fd25cc62ecbb077aadd5fb2e18` |
| ZEI14A.ZEI | `ede0d6811689a427d75b1863d9841f76fcfcae0b1f8f9955689d308269f84a65` |
| ZEI20V.ZEI | `fd20022767cc6d56ea9f19806cc854d7f4a742170f4c295bc13b3e494ef788d1` |
| ZEI28V.ZEI | `b9f64817671add44d53244c600d50ea93969628ba9e0f72cd8e0bd07c08f6bd7` |
