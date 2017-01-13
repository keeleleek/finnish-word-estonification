# Estonification of Finnish words
A finite state transducer that makes Finnish words more close to their potential Estonian counterparts.

The script was done mainly for educational purposes of the author, but could be useful for finding cognates in Finnish-Estonian parallel texts or dictionaries.

# Usage
FSTs can be used in many ways. Here are described two ways: compiling the FST with make, and running the script directly with hfst-xfst.

## Compiling the script
The FST script can be compiled and thereafter be used with several other HFST interfaces, e.g hfst-lookup and hfst-proc2.

First run make to compile. Simply run ```make```.

The compiled tool ```fin-estonifier.fst``` can be run with ```hfst-lookup``` for single word lookups or ```hfst-proc2``` for full text input.

Example of estonification of a single word 'teatterin' using hfst-lookup (the correct Estonian wordform is 'teatri'):
```
hfst-lookup fin-estonifier.fst
> teatterin
teatterin	teaderi	0,000000
teatterin	teatri	0,000000
teatterin	teaderin+V	1,000000
teatterin	teatrin+V	1,000000
```

Example of estonification of a full sentence using hfst-proc2:
```echo "minä olen teidän uusi viron kielen opettaja" | hfst-proc2 fin-estonifier.fst```


## Running the script with hfst-xfst
Load the script into xfst ```hfst-xfst -l finnish-word-estonification.script```
and use command ```up``` with Finnish words

Two examples using the command up for looking up single words within the hfst-xfst interface.

Finnish "Minä olen uusi eestin kielen opettaja" should be estonificated "Mina olen uus eesti keele õpetaja".
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

Finnish "Suomen murteet pysyvät kauan" should be estonificated "Soome murded püsivad kaua".
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


# Errata
There exists many errors and faults. Some will be dealt with and some not. The project will soon get a more solid framework for testing.
