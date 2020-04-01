#!/bin/bash                                                                                                                                          
                                                                                                                                                     
#Entering to the home directiory                                                                                                                     
cd /                                                                                                                                                 
#creating the appserver directory                                                                                                                    
mkdir test3                                                                                                                                          
chmod 777 test3
#entering to the test3                                                                                                                          
cd test3                                                                                                                                             
#cloning the files here and springboot_mumbai/FlighStatusServiceImpl                                                                             
git clone https://ansible-story@dev.azure.com/ansible-story/springbootapp_mumbai/_git/springbootapp_mumbai                                          
cd
cp /tmp/pom.xml /test3/springbootapp_mumbai/FlightStatusServiceImpl/pom.xml
sudo rm -rf /tmp/pom.xml
cd /test3/springbootapp_mumbai/FlightStatusServiceImpl
#change the home path in pom.xml file                                                                                                                
#sed '61s/(/home/ubuntu/deployapp1/springbootapp_mumbai/FlightStatusServiceImpl)//home/ubuntu/test2/springbootapp_mumbai/FlightStatusServiceImpl/gi' pom.xml                                            
sudo nohup mvn spring-boot:run -Doracle.jdbc.timezoneAsRegion=false &
sleep 10m
