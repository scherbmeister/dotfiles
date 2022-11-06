$ports = @(22,2222, 80, 443, 8080)

foreach ($port in $ports) {
    netsh interface portproxy delete v4tov4 listenaddress=0.0.0.0 listenport=$port
    netsh interface portproxy add v4tov4 listenaddress=0.0.0.0 listenport=$port connectaddress=localhost connectport=$port
}
netsh interface portproxy show v4tov4

