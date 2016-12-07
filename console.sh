#!/usr/bin/env bash

# Source:
# - http://stackoverflow.com/questions/4332478/read-the-current-text-color-in-a-xterm/4332530#4332530
# - https://natelandau.com/bash-scripting-utilities/


BLACK=$(tput setaf 0)
RED=$(tput setaf 1)
GREEN=$(tput setaf 2)
YELLOW=$(tput setaf 3)
LIME_YELLOW=$(tput setaf 190)
POWDER_BLUE=$(tput setaf 153)
BLUE=$(tput setaf 4)
MAGENTA=$(tput setaf 5)
CYAN=$(tput setaf 6)
WHITE=$(tput setaf 7)
BRIGHT=$(tput bold)
NORMAL=$(tput sgr0)
BOLD=$(tput bold)
BLINK=$(tput blink)
REVERSE=$(tput smso)
UNDERLINE=$(tput smul)

log_header() { 
	printf "\n${BOLD}${MAGENTA}==========  %s  ==========${NORMAL}\n" "$@"
}


log_success() {
	printf "${GREEN}✔ %s${NORMAL}\n" "$@"
}

log_failure() {
	printf "${RED}✖ %s${NORMAL}\n" "$@"
}

log_warning() {
	printf "${YELLOW}➜ %s${NORMAL}\n" "$@"
}

log_info() {
	printf "${UNDERLINE}${BLINK}${WHITE}Info:${NORMAL}  ${WHITE}%s${NORMAL}\n" "$@"
}