#!/usr/bin/env bash
set -e

chmod -R a+x *.sh
./tools.sh
./install_custom_fonts.sh
./tigervnc.sh
./firefox.sh
./xfce_ui.sh

./vnc_startup.sh
