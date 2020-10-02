if ! (( ip a | grep tun0 > /dev/null )) then
    dig TXT +short o-o.myaddr.l.google.com @ns1.google.com | tr -d \" > ip
    now=$(date)
    git commit ip -m "update ip on ${now}"
    git push
fi
