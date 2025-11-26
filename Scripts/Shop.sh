#!/usr/bin/env bash

RESET="\e[0m"
BOLD="\e[1m"
RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
CYAN="\e[36m"

pause(){ sleep "$1"; }

clear
echo -e "${YELLOW}${BOLD}--⋆ Welcome to the Light shop ! ⋆--${RESET}"
pause 1

echo -e "${GREEN}The shopkeeper : (...) ${RESET}"
pause 1
echo -e "${GREEN}The shopkeeper : Hey! Welcome to our shop ^v^ ${RESET}"
pause 1.5
echo -e "${GREEN}The shopkeeper : Can I.. help you with anything? ${RESET}"
pause 1

echo ""
echo -e "${BOLD}1) Buy something."
echo "2) Ask for info."
echo "3) (: "
echo -n "> "
read choice

case $choice in
    1)
        echo -e "${GREEN}Shopkeeper:Great choice!${RESET}"
        pause 1
        echo -e "${GREEN}Here's what we have:${RESET}"
        pause 1
        echo "LED Desk Lamp — $50"
        echo "Floor Lamp — $120"
        echo "Night Light — $15"
        ;;
    2)
        echo -e "${GREEN}Shopkeeper: We're a local lighting store...${RESET}"
        pause 1.5
        echo -e "${GREEN}All our lamps are carefully selected for quality and style.${RESET}"
        ;;
    3)
        echo -e "${GREEN}Shopkeeper: ^w^ ${RED}<3${RESET}"
        ;;
    *)
        echo "Invalid choice. please enter 1, 2, or 3!"
        ;;
esac
