FNR == 1 {
    date = ""
}
/Published:/{
    date = " " substr($NF,1,10)
}
match($0,/^Title: /) > 0 {
    printf "- [%s](%s)%s\n",substr($0,RLENGTH+1),FILENAME, date
}
