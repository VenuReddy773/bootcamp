#!/bin/bash -x
declare -A sounds
sounds[dog]="bark"
sounds[cow]="moo"
sounds[bird]="tweet"
sounds[wolf]="howl"

echo "cow sound -" ${sounds[cow]}
echo "All animal sound -" ${sounds[@]}
echo "animal - " ${!sounds[@]}
echo "number of animals -" ${#sounds[@]}
unset sounds[dog]
