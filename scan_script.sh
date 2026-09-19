cat << 'EOF' > scan_script.sh
#!/bin/bash

# Basic sslscan against a target
sslscan 192.168.56.101:443

# Scan and save results to a file
sslscan --show-certificate 192.168.56.101:443 > sslscan_report.txt

# Alternative tool for comparison: testssl.sh
testssl.sh https://192.168.56.101
EOF
