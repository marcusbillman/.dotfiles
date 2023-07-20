#!/bin/bash

messages=(
"Yo yo yo"
"Hey there :)"
"Welcome back"
"Epic gamer"
"Haxxor"
"sup bicth?"
"Hello fukco"
"Have a nice day!"
"Breaching the firewall"
"Hacking the mainframe"
"lol xd"
"u suck lol"
"hewwo uwu~"
"made changes"
"gitgnore"
"z-index: 9999;"
"DROP TABLE students;"
"rm -f *"
"npm start"
"NullPointerException"
"Lorem ipsum"
"Sample Text"
"Placeholder text"
"\^o^/"
)

styles=(
"figlet -f big -c "
"figlet -f script -c "
"figlet -f slant -c "
)

message=${messages[$RANDOM % ${#messages[@]}]}

style=${styles[$RANDOM % ${#styles[@]}]}

$style $message

echo