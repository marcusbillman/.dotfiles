#!/bin/bash

URL="https://v2.jokeapi.dev/joke/programming?blacklistFlags=nsfw,racist,sexist"

# ANSI escape codes for text formatting
BLUE="\033[0;34m"
DARKGRAY="\033[90m"
ITALIC="\033[3m"
RESET="\033[0m"

# Make GET request to JokeAPI
response=$(curl -s "$URL")

# Exit if request failed (HTTP status code != 200)
http_status=$(curl -s -w "%{http_code}" -o /dev/null "$URL")
if [ "$http_status" -ne 200 ]; then
  exit 1
fi

# Parse and echo response JSON using jq
type=$(echo "$response" | jq -r '.type')
if [ "$type" == "twopart" ]; then
  setup=$(echo "$response" | jq -r '.setup')
  delivery=$(echo "$response" | jq -r '.delivery')
  echo -e "${ITALIC}${DARKGRAY}${setup}${RESET}"
  echo -e "${ITALIC}${BLUE}    $delivery${RESET}"
else
  joke=$(echo "$response" | jq -r '.joke')
  echo -e "${ITALIC}${DARKGRAY}${joke}${RESET}"
fi

echo
