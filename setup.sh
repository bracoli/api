clear
yellow "Add Domain for vmess/vless/trojan dll"
echo " "
read -rp "Input ur domain : " -e pp
    if [ -z $pp ]; then
        echo -e "
        Nothing input for domain!
        Then a random domain will be created
        "
        sleep 2
        sub=ctech`</dev/urandom tr -dc a-z0-9 | head -c4`
        echo "peler=${sub}" > /root/scdomain
    else
        echo "peler=$pp" > /root/scdomain
    fi
wget -q "https://raw.githubusercontent.com/bracoli/api/main/cf.sh" && chmod +x cf.sh && ./cf.sh
fi
