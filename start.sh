#!/bin/bash
Xvfb :99 -screen 0 1280x800x24 -nolisten tcp &
./node_modules/.bin/bbc-a11y $@
