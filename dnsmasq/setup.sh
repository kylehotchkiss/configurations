# Install Homebrew
brew install dnsmasq

# Copy config example
cp $(brew list dnsmasq | grep /dnsmasq.conf.example$) /usr/local/etc/dnsmasq.conf

# Start DNSMasq on startup
sudo cp $(brew list dnsmasq | grep /homebrew.mxcl.dnsmasq.plist$) /Library/LaunchDaemons/

# Handle all .mac TLDs
echo "address=/mac/127.0.0.1" >> /usr/local/etc/dnsmasq.conf

# Start DNSMasq
sudo launchctl load /Library/LaunchDaemons/homebrew.mxcl.dnsmasq.plist

# Tell OSX to send all .mac requests to DNSMasq
sudo mkdir -p /etc/resolver
sudo tee /etc/resolver/mac >/dev/null <<EOF
nameserver 127.0.0.1
EOF

# Ping to test
ping your-laptop.mac