#!/bin/bash

INPUT="input.txt"
max=0
while IFS= read -r line; do
    [ "$line" == "" ] && {
        [ $elf -gt $max ] && max=$elf ; elf=0 ; continue
    }
    elf=$((line+elf))
done < "$INPUT"
echo $max