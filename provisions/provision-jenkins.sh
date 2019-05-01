

apt-get -y update


# apt-get -y install ansible

sudo add-apt-repository ppa:webupd8team/java -y		
sudo apt-get update -y 
echo debconf shared/accepted-oracle-license-v1-1 select true | sudo debconf-set-selections
echo debconf shared/accepted-oracle-license-v1-1 seen true | sudo debconf-set-selections
# sudo apt-get install oracle-java8-installer -q -y
sudo apt install default-jre default-jdk

wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | sudo apt-key add -

sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'

sudo apt-get update -y
sudo apt-get install jenkins -y

