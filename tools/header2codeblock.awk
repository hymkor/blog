FNR == 1 {
    ORS="\x0A"
    print "```header"
}
/^---*$/ && flag[FILENAME] != 1 {
    print "```"
    flag[FILENAME] = 1
    next
}
{
    print $0
}
