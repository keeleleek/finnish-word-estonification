fin-estonifier.fst : finnish-word-estonification.script
	echo "save stack fin-estonifier.fst" | hfst-xfst -l finnish-word-estonification.script --pipe-mode
