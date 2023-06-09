echo "******************************************" 1>&2;
echo "click inside the window you want to map to" 1>&2;
echo "******************************************" 1>&2;
xwininfo -id $(xprop -root | awk '/_NET_ACTIVE_WINDOW\(WINDOW\)/{print $NF}')
