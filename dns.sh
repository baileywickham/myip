if ! (( ip a | grep tun0 > /dev/null )) then
    dig +short myip.opendns.com @resolver1.opendns.com > ip
    now=$(date)
    git commit ip -m 'update ip on ${now}' > /dev/null
    git push > /dev/null
fi
