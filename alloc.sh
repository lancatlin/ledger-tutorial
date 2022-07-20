#/bin/sh
[ -z $1 ] && ACCOUNT=Assets || ACCOUNT=$1
[ -z $2 ] && UNIT=$ || UNIT=$2
ledger bal $ACCOUNT --format "\
	%-17((depth_spacer)+(partial_account))\
    %10(percent(market(display_total, now, \"$UNIT\"), market(parent.total, now, \"$UNIT\")))\
    %16(market(display_total, now, \"$UNIT\"))\
    \n%/
    "
