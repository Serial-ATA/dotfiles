#!/bin/sh

/usr/bin/mpd ~/.config/mpd/mpd.conf; sleep 1 && mpd_discord_richpresence --no-idle
