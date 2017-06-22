# My First Chef Recipe

# Include Java Recipe in runlist
# recipe[java]

# Include Java Cookbook 
#include_recipe 'java'

# Apache Package installation
# Package insalled but httpd service is not yet enabled and started

# Java Package Installation
#package 'java' do
#	package_name 'JAVA_PKG'
#end

# Enable and Start Java Service
#service 'java' do
#	action [:enable,:start]
#end


#execute 'jdkInstallationMsg-cmd' do
#	command 'echo "Java installation started"'
#end

execute 'jdk-cmd' do
	command 'sudo yum install java'
end

#execute 'setJavaAlternativesMsg-cmd' do
#	command 'echo "Installing Java alternatives"'
#end

#execute 'setJavaAlternatives-cmd' do
#	command 'sudo alternatives --install /usr/bin/java java /usr/java/latest/bin/java 200000 && sudo alternatives --install /usr/bin/javac javac /usr/java/latest/bin/javac 200000 && sudo alternatives --install /usr/bin/jar jar /usr/java/latest/bin/jar 200000 && sudo alternatives --config java'
#end

execute 'setJavaPath-cmd' do
	command 'export JAVA_HOME=/usr/lib/jvm/java*'
end

# execute 'addJenkinsInYumRepoMsg-cmd' do
# 	command 'echo "Adding Jenkins Repository"'
# end

# execute 'addJenkinsInYumRepo-cmd' do
# 	command 'sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo'
# end

# execute 'jenkinsPkgAndKeyMSg-cmd' do
# 	command 'echo "Adding Jenkins package and key"'
# end

# execute 'jenkinsPkgAndKey-cmd' do
# 	command 'sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key'
# end

# execute 'installJenkinsMsg-cmd' do
# 	command 'echo "Jenkins installation initialized"'
# end

# execute 'installJenkins-cmd' do
# 	command 'sudo yum install jenkins'
# end

#execute 'installJenkinsSystemCheckMsg-cmd' do
#	command 'systemctl enable jenkins.service && systemctl restart jenkins.service'
#end
