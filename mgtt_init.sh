sudo wget https://go.dev/dl/go1.17.5.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.17.5.linux-amd64.tar.gz
sudo apt-get install -y docker.io
sudo systemctl restart docker
sudo usermod -a -G docker jenkins
sudo systemctl restart jenkins
sudo docker pull sonatype/nexus3

sudo docker run -d -p 8081:8081 -p 8082:8082 --name nexus -e INSTALL4J_ADD_VM_PARAMS="-Xms512m -Xmx512m -XX:MaxDirectMemorySize=273m" sonatype/nexus3
sudo systemctl restart docker
