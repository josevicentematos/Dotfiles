#!/usr/bin/env bash
# A dmenu script to shutdown or restart the computer.

CHOICE=$(echo -e "Cancel\nExit\nRestart\nShutdown" | dmenu -i -nf '#BD93F9' -nb '#282A36' -sb '#BD93F9' -sf '#44475A' -fn 'monospace-8' -l 10)

case "$CHOICE" in
  Exit) i3-msg exit & ;;
  Restart) sudo shutdown -h now & ;;
  Shutdown) sudo shutdown -r now & ;;
esac
