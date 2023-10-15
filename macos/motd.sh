#!/bin/bash

messages=(
  "Hey there :)"
  "Welcome back"
  "Epic gamer"
  "Have a nice day!"
  "Breaching the firewall"
  "Hacking the mainframe"
  "made changes"
  "gitgnore"
  "z-index: 9999;"
  "Lorem ipsum"
)

message=${messages[$RANDOM % ${#messages[@]}]}

figlet -c -f script $message

echo
