# finnish-word-estonification
Finite state transducer that makes Finnish words more close to their potential Estonian counterparts

The script is done mainly for educational purposes of the author, but could be useful for finding cognates in Finnish-Estonian parallel texts or dictionaries.

# Usage
Load the script into xfst ```hfst-xfst -l finnish-word-estonification.script```
use command ```up``` with Finnish words

Examples
"Minä olen uusi eestin kielen opettaja"
```
hfst[1]: up minä
mina	0.00000
mine	0.00000
hfst[1]: up olen
ole	0.00000
olen+V	1.00000
hfst[1]: up uusi
uus	0.00000
hfst[1]: up eestin
eesti	0.00000
eestin+V	1.00000
hfst[1]: up kielen
keele	0.00000
keelen+V	1.00000
hfst[1]: up opettaja
obettaja	0.00000
```

"Suomen murteet pysyvät kauan"
```
hfst[1]: up suomen
soome	0.00000
soomen+V	1.00000
hfst[1]: up murteet
murdeed	0.00000
hfst[1]: up pysyvät
püsivad	0.00000
püsived	0.00000
püsuvad	0.00000
püsuved	0.00000
hfst[1]: up kauan
kaua	0.00000
kauan+V	1.00000
```
