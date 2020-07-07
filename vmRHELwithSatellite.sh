#!/bin/bash   
###################################################################################
#	Author: H.M. Shah Paran Ali
#	OS Environment: RHEL 6.x and 7.x
#	Description: Automatically VM RedHat registered with Satellite
#	Email: paran.duet@gmail.com
###################################################################################

######## Find Out OS Version #############
osVersion=`cat /etc/redhat-release | awk '{print $7}'`;
echo "!!!Warning!!! Please open another session of this server before execute this process."
echo "Welcome to VM RHEL subscription with satellite"
read -p "Would you like to execute the process [Y/N] : " feedback
	if [ $feedback == 'Y' ] || [ $feedback == 'y' ] ; then
		if [ $osVersion == "7.4" ] || [ $osVersion == "7.0" ] || [ $osVersion == "7.3" ] || [ $osVersion == "7.1" ] || [ $osVersion == "7.2" ] || [ $osVersion == "7.5" ] || [ $osVersion == "7.6" ] || [ $osVersion == "7.7" ]; then
			
			echo "Add Hostname: 192.168.46.228 rhsat01.islamibankbd.com rhsat01";
			read -p "If information is correct, press [Y/y]:" hostInfo
			if [ $hostInfo == 'Y' ] || [ $hostInfo == 'y' ] ; then
				echo "192.168.46.228  rhsat01.islamibankbd.com rhsat01" >>  /etc/hosts 
				yum localinstall http://192.168.46.228/pub/katello-ca-consumer-latest.noarch.rpm
				echo "Subscription Status";
				subscription-manager status
				echo "Registered with Satellite RHEL7";
				subscription-manager register --force --org=ibbl --activationkey="PROD-RHEL7-KEY"
				yum clean all
				yum repolist
				echo "Satellite Tools Repo is going to be added";
				subscription-manager repos --enable=rhel-\*-satellite-tools-\*-rpms
				subscription-manager repos --enable=rhel-7-server-insights-3-rpms
				echo "Check YUM Repolist Again"
				yum repolist
				yum install katello-agent -y
				yum install redhat-access-insights  -y 
				redhat-access-insights --register
				echo "VM RHEL7 Subscription Successfully Completed";
			else
				read -p "What do you want to change, Host IP [i] or Domain[d] or All[a] :" choice
				if [ $choice == 'i' ] || [ $choice == 'I' ] ; then
					read -p "Provide your correct Host IP[i.e. 192.168.46.228]: " hostIp
					echo "$hostIp  rhsat01.islamibankbd.com rhsat01" >>  /etc/hosts
					yum localinstall http://$hostIp/pub/katello-ca-consumer-latest.noarch.rpm
					echo "Subscription Status";
					subscription-manager status
					echo "Registered with Satellite RHEL7";
					subscription-manager register --force --org=ibbl --activationkey="PROD-RHEL7-KEY"
					yum clean all
					yum repolist
					echo "Satellite Tools Repo is going to be added";
					subscription-manager repos --enable=rhel-\*-satellite-tools-\*-rpms
					subscription-manager repos --enable=rhel-7-server-insights-3-rpms
					echo "Check YUM Repolist Again"
					yum repolist
					yum install katello-agent -y
					yum install redhat-access-insights  -y 
					redhat-access-insights --register
				elif [ $choice == 'd' ] || [ $choice == 'D' ] ; then
					read -p "Provide your correct domain name [i.e. rhsat01.islamibankbd.com]: " domainName
					echo "192.168.46.228  $domainName rhsat01" >>  /etc/hosts
					yum localinstall http://192.168.46.228/pub/katello-ca-consumer-latest.noarch.rpm
					echo "Subscription Status";
					subscription-manager status
					echo "Registered with Satellite RHEL7";
					subscription-manager register --force --org=ibbl --activationkey="PROD-RHEL7-KEY"
					yum clean all
					yum repolist
					echo "Satellite Tools Repo is going to be added";
					subscription-manager repos --enable=rhel-\*-satellite-tools-\*-rpms
					subscription-manager repos --enable=rhel-7-server-insights-3-rpms
					echo "Check YUM Repolist Again"
					yum repolist
					yum install katello-agent -y
					yum install redhat-access-insights  -y 
					redhat-access-insights --register

				elif [ $choice == 'a' ] || [ $choice == 'A' ] ; then
					read -p "Provide your correct Host IP[i.e. 192.168.46.228]: " hostIp
					read -p "Provide your correct domain name [i.e. rhsat01.islamibankbd.com]: " domainName
					echo "$hostIp  $domainName rhsat01" >>  /etc/hosts
					yum localinstall http://$hostIp/pub/katello-ca-consumer-latest.noarch.rpm
					echo "Subscription Status";
					subscription-manager status
					echo "Registered with Satellite RHEL7";
					subscription-manager register --force --org=ibbl --activationkey="PROD-RHEL7-KEY"
					yum clean all
					yum repolist
					echo "Satellite Tools Repo is going to be added";
					subscription-manager repos --enable=rhel-\*-satellite-tools-\*-rpms
					subscription-manager repos --enable=rhel-7-server-insights-3-rpms
					echo "Check YUM Repolist Again"
					yum repolist
					yum install katello-agent -y
					yum install redhat-access-insights  -y 
					redhat-access-insights --register
				else
					echo "You have entered wrong value, program is going to terminate";
					sleep 3;
					exit;
				fi
				echo "VM RHEL7 Subscription successfully completed";
			fi
			
		elif [ $osVersion == "6.0" ] || [ $osVersion == "6.1" ] || [ $osVersion == "6.2" ] || [ $osVersion == "6.3" ] || [ $osVersion == "6.4" ] || [ $osVersion == "6.5" ] || [ $osVersion == "6.6" ] || [ $osVersion == "6.7" ] || [ $osVersion == "6.8" ] || [ $osVersion == "6.9" ] ; then
			
			echo "Add Hostname: 192.168.46.228 rhsat01.islamibankbd.com rhsat01";
			read -p "If information is correct, press [Y/y]:" hostInfo
			if [ $hostInfo == 'Y' ] || [ $hostInfo == 'y' ] ; then
				echo "192.168.46.228  rhsat01.islamibankbd.com rhsat01" >>  /etc/hosts 
				yum localinstall http://192.168.46.228/pub/katello-ca-consumer-latest.noarch.rpm
				echo "Subscription Status";
				subscription-manager status
				echo "Registered with Satellite RHEL7";
				subscription-manager register --force --org=ibbl --activationkey="PROD-RHEL7-KEY"
				yum clean all
				yum repolist
				echo "Satellite Tools Repo is going to be added";
				subscription-manager repos --enable=rhel-\*-satellite-tools-\*-rpms
				subscription-manager repos --enable=rhel-7-server-insights-3-rpms
				echo "Check YUM Repolist Again"
				yum repolist
				yum install katello-agent -y
				yum install redhat-access-insights  -y 
				redhat-access-insights --register
				echo "VM RHEL7 Subscription Successfully Completed";
			else
				read -p "What do you want to change, Host IP [i] or Domain[d] or All[a] :" choice
				if [ $choice == 'i' ] || [ $choice == 'I' ] ; then
					read -p "Provide your correct Host IP[i.e. 192.168.46.228]: " hostIp
					echo "$hostIp  rhsat01.islamibankbd.com rhsat01" >>  /etc/hosts
					yum localinstall http://$hostIp/pub/katello-ca-consumer-latest.noarch.rpm
					echo "Subscription Status";
					subscription-manager status
					echo "Registered with Satellite RHEL7";
					subscription-manager register --force --org=ibbl --activationkey="PROD-RHEL7-KEY"
					yum clean all
					yum repolist
					echo "Satellite Tools Repo is going to be added";
					subscription-manager repos --enable=rhel-\*-satellite-tools-\*-rpms
					subscription-manager repos --enable=rhel-7-server-insights-3-rpms
					echo "Check YUM Repolist Again"
					yum repolist
					yum install katello-agent -y
					yum install redhat-access-insights  -y 
					redhat-access-insights --register
				elif [ $choice == 'd' ] || [ $choice == 'D' ] ; then
					read -p "Provide your correct domain name [i.e. rhsat01.islamibankbd.com]: " domainName
					echo "192.168.46.228  $domainName rhsat01" >>  /etc/hosts
					yum localinstall http://192.168.46.228/pub/katello-ca-consumer-latest.noarch.rpm
					echo "Subscription Status";
					subscription-manager status
					echo "Registered with Satellite RHEL7";
					subscription-manager register --force --org=ibbl --activationkey="PROD-RHEL7-KEY"
					yum clean all
					yum repolist
					echo "Satellite Tools Repo is going to be added";
					subscription-manager repos --enable=rhel-\*-satellite-tools-\*-rpms
					subscription-manager repos --enable=rhel-7-server-insights-3-rpms
					echo "Check YUM Repolist Again"
					yum repolist
					yum install katello-agent -y
					yum install redhat-access-insights  -y 
					redhat-access-insights --register

				elif [ $choice == 'a' ] || [ $choice == 'A' ] ; then
					read -p "Provide your correct Host IP[i.e. 192.168.46.228]: " hostIp
					read -p "Provide your correct domain name [i.e. rhsat01.islamibankbd.com]: " domainName
					echo "$hostIp  $domainName rhsat01" >>  /etc/hosts
					yum localinstall http://$hostIp/pub/katello-ca-consumer-latest.noarch.rpm
					echo "Subscription Status";
					subscription-manager status
					echo "Registered with Satellite RHEL7";
					subscription-manager register --force --org=ibbl --activationkey="PROD-RHEL7-KEY"
					yum clean all
					yum repolist
					echo "Satellite Tools Repo is going to be added";
					subscription-manager repos --enable=rhel-\*-satellite-tools-\*-rpms
					subscription-manager repos --enable=rhel-7-server-insights-3-rpms
					echo "Check YUM Repolist Again"
					yum repolist
					yum install katello-agent -y
					yum install redhat-access-insights  -y 
					redhat-access-insights --register
				else
					echo "You have entered wrong value, program is going to terminate";
					sleep 3;
					exit;
				fi
				echo "VM RHEL6 Subscription Successfully Completed";
			fi
		fi
	fi