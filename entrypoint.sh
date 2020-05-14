openssl s_client -connect 3.123.227.193:443 -showcerts \
    </dev/null 2>/dev/null | openssl x509 -outform PEM | sudo tee \
    /usr/local/share/ca-certificates/3.123.227.193.crt
sudo update-ca-certificates

/sbin/tini -- /usr/local/bin/jenkins.sh


