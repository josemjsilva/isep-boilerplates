sudo apt update && sudo apt install default-jdk -y
sudo useradd -r -m -U -d /opt/tomcat -s /bin/false tomcat
curl -O https://downloads.apache.org/tomcat/tomcat-9/v9.0.72/bin/apache-tomcat-9.0.72.tar.gz
sudo mv apache-tomcat-9.0.72.tar.gz /tmp/apache-tomcat-9.0.72.tar.gz
sudo tar xf /tmp/apache-tomcat-9*.tar.gz -C /opt/tomcat
sudo mv /opt/tomcat/apache-tomcat-9.0.72 /opt/tomcat/latest
sudo chown -R tomcat: /opt/tomcat/latest
sudo sh -c 'chmod +x /opt/tomcat/latest/bin/*.sh'
cd /etc/systemd/system
curl -O https://raw.githubusercontent.com/zesilva15/isep-boilerplates/main/tomcat.service
sudo systemctl daemon-reload
sudo systemctl start tomcat
