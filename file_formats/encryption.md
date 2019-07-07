# Encryption #

It's not really `Encryption` but anyway, some game data text files are encrypted using [Two's complement](https://en.wikipedia.org/wiki/Two%27s_complement). Since it's used to represent negative values in signed integers, one can simply de-/encrypt it using the sign operator `-`.

for example in C:
```C
char decrypted = -encrypted;
```

## Encrypted Files ##

Usualy all files ending with `.cod`.

- editor.cod
- figuren.cod
- haeuser.cod
- text.cod

## Notes ##

[MDCII-Engine Implementation](https://github.com/roybaer/mdcii-engine/blob/master/src/codcat.cpp)

