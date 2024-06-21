terraform output | awk '{print $3}' > /var/lib/jenkins/inventory
sleep 300
