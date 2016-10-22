#!/bin/bash

dbus-send --session /net/sf/roxterm/Options net.sf.roxterm.Options.SetProfile string:$ROXTERM_ID string:'Screencast'

