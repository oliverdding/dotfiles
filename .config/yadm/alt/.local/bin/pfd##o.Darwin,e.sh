#!/usr/bin/env bash

osascript 2>/dev/null -e '
tell application "Finder"
return POSIX path of (target of window 1 as alias)
end tell'
