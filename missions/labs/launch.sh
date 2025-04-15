#!/bin/bash -e
TIME_WARP=1
COMMUNITY="alpha"
GUI="yes"

echo "Launching $COMMUNITY MOOS Community with WARP:" $TIME_WARP
pAntler $COMMUNITY.moos --MOOSTimeWarp=$TIME_WARP >& /dev/null &

uMAC -t $COMMUNITY.moos
kill -- -$$
