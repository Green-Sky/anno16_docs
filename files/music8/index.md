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
1. Go to the music8 folder in Anno 1602 and shift right click on windows to open a powershell in that folder. Alternatively you can manually navigate to the folder.  
![](https://i.imgur.com/5DtNWoS.png)

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
![](https://i.imgur.com/bmrl5tF.png)

4. Repeat for all files you want to have as mp3
