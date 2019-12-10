CHECK_INTERVAL=30


notify()
{
    echo $1 | aosd_cat -e 0 -b 250 -B green -R white -p 8 -d 30 -n "fixed 16" -x -30
    # aosd_cat -e 0 -b 250 -B green -R white -p 7 -d 50 -n "fixed 16"
}

notify_critical()
{
    echo $1 | aosd_cat -e 0 -b 250 -B red -R white -p 6 -d 50 -n "fixed 24"
    # aosd_cat -e 0 -b 250 -B red -R white -p 7 -d 250 -n "fixed 24"
}


process()
{
    if grep -qs 1 /sys/class/power_supply/AC/online; then
	test $(expr `cat /sys/class/power_supply/BAT0/capacity`) -gt 98 && notify "Remove AC"
	CHECK_INTERVAL=300
    fi

    if test $(expr `cat /sys/class/power_supply/BAT0/capacity`) -lt 35; then
	if grep -qs 0 /sys/class/power_supply/AC/online; then
	    notify "Plug AC"
	    CHECK_INTERVAL=300
	fi
    fi

    if test $(expr `cat /sys/class/power_supply/BAT0/capacity`) -lt 10; then
	if grep -qs 0 /sys/class/power_supply/AC/online; then
	    notify_critical "Critical: Plug AC"
	    CHECK_INTERVAL=60
	fi
    fi
}


while true; do process; sleep $CHECK_INTERVAL; done
