# /music8 #

This Folder contains the Music files. Since the NINA Version(??), the files are encoded in ADPCM. Before that, the files use normal PCM.

## List of Files ##

| Name                      | Notes               |
|---------------------------|---------------------|
| 1st Beginning.wav			| |
| Amazing Grace.wav			| |
| ANNO1602 Theme.wav		| |
| Ave Maria.wav				| |
| Bach Air.wav				| |
| Ballad of Hope.wav		| |
| Brandenburg.wav			| |
| Creators Credits.wav		| |
| Daydream (original).wav	| |
| Daydream.wav				| |
| Dreamer.wav				| |
| Emotion.wav				| |
| Entry of the Cavalry.wav	| |
| Fight1.wav				| |
| Fight2.wav				| |
| Fight3.wav				| |
| Friend.wav				| |
| Greensleaves.wav			| |
| Irish Touch.wav			| |
| Morning mood.wav			| |
| Ocean Trip.wav			| |

# Converting to mp3/aac/flac etc.
You may have noticed that if you try to play the .wav with VLC or another media player that it sounds terrible. The files have a very interesting header that is not interpreted correctly by VLC and other players which gives the corrupt sound.
To convert the files to mp3/aac/flac you can use ffmpeg and force the input format.

These instructions assume you have ffmpeg installed already and can access it from command shell.
1. Go to the music8 folder in Anno 1602 and open your favourite terminal in the folder. (On windows you can shift + right click and click on "Open PowerShell here") 

2. To convert the files you will be using the following command:  
```shell
ffmpeg -n -guess_layout_max 0 -c:a adpcm_ima_ssi -i [file.wav] -ac 2 -c:a mp3 -b:a 192k [out.mp3]
```
<details>
  <summary>Detailed Command Explanation</summary>
  
  - `-n` - do not overwrite existing files (prevents mishaps)
  - `-guess_layout_max 0` - do not guess the channel layout
  - `-c:a adpcm_ima_ssi` - forces `adpcm_ima_ssi` to be used to decode the file
  - `-i [file.wav]` - the source file in the directory e.g.: "Ocean Trip.wav"
  - `-ac 2` - use 2 audio channels (stereo)
  - `-c:a mp3` - encode as mp3 (can be replaced with aac/flac/ac3 etc. See `ffmpeg -encoders` for a full list)
  - `-b:a 192k` - encode with 192kbit/s
  - `[out.mp3]` - output file name
</details>

3. Replace [file.wav] and [out.mp3] with actual filenames and execute the command. The output should look like this:  
```shell
ffmpeg version 4.3 Copyright (c) 2000-2020 the FFmpeg developers
  built with gcc 9.3.1 (GCC) 20200621
  configuration: --enable-gpl --enable-version3 --enable-sdl2 --enable-fontconfig --enable-gnutls --enable-iconv --enable-libass --enable-libdav1d --enable-libbluray --enable-libfreetype --enable-libmp3lame --enable-libopencore-amrnb --enable-libopencore-amrwb --enable-libopenjpeg --enable-libopus --enable-libshine --enable-libsnappy --enable-libsoxr --enable-libsrt --enable-libtheora --enable-libtwolame --enable-libvpx --enable-libwavpack --enable-libwebp --enable-libx264 --enable-libx265 --enable-libxml2 --enable-libzimg --enable-lzma --enable-zlib --enable-gmp --enable-libvidstab --enable-libvmaf --enable-libvorbis --enable-libvo-amrwbenc --enable-libmysofa --enable-libspeex --enable-libxvid --enable-libaom --enable-libgsm --disable-w32threads --enable-libmfx --enable-ffnvcodec --enable-cuda-llvm --enable-cuvid --enable-d3d11va --enable-nvenc --enable-nvdec --enable-dxva2 --enable-avisynth --enable-libopenmpt --enable-amf
  libavutil      56. 51.100 / 56. 51.100
  libavcodec     58. 91.100 / 58. 91.100
  libavformat    58. 45.100 / 58. 45.100
  libavdevice    58. 10.100 / 58. 10.100
  libavfilter     7. 85.100 /  7. 85.100
  libswscale      5.  7.100 /  5.  7.100
  libswresample   3.  7.100 /  3.  7.100
  libpostproc    55.  7.100 / 55.  7.100
Input #0, wav, from 'Ocean Trip.wav':
  Duration: 00:01:46.96, bitrate: 352 kb/s
    Stream #0:0: Audio: adpcm_ima_ssi ([1][0][0][0] / 0x0001), 22050 Hz, 2 channels, s16, 176 kb/s
Stream mapping:
  Stream #0:0 -> #0:0 (adpcm_ima_ssi (native) -> mp3 (mp3_mf))
Press [q] to stop, [?] for help
[mp3_mf @ 000002069c50f880] MFT name: 'MP3 Encoder ACM Wrapper MFT'
Output #0, mp3, to '.\Ocean Trip.mp3':
  Metadata:
    TSSE            : Lavf58.45.100
    Stream #0:0: Audio: mp3 (mp3_mf), 22050 Hz, stereo, s16, 192 kb/s
    Metadata:
      encoder         : Lavc58.91.100 mp3_mf
size=    2066kB time=00:03:33.93 bitrate=  79.1kbits/s speed= 384x
video:0kB audio:2066kB subtitle:0kB other streams:0kB global headers:0kB muxing overhead: 0.026807%
```

4. Repeat for all files you want to have as mp3
