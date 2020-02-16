<h1>Ros-Project</h1>

<h2>Overview</h2>
This project will spin up a total of 4 docker containers.  


1. Container one is the master roscore  

2. Container two is a simple publishing node   

3. Container three is a simple listening node  

4. Container four is a gitlab image that will listen for changes to this repository  



<h2>Installation</h2>
This project was built and tested in Ubuntu 18.04.3 LTS bionic

The packages that were installed on this instance are as follows:
*  ROS Melodic (http://wiki.ros.org/melodic/Installation/Ubuntu)  
*  Docker version 19.03.6  
*  Docker-compose version 1.17.1  
*  Gitlab-runner version 12.7.1  


<h2>Information</h2>
Included in this repository is the actual package created under catkin_ws
This repository should contain everything necessary for testing outside
of the above listed installations.

<h2>Instructions</h2>
To test this repository, one must simple go to the directory /project and
execute "docker-compose up -d"

To verify that the Ros nodes are communicating succesfully, you can inspect the logs created by the listener node
showing that it is receiving messages from the publisher node. This can be done
by executing "docker-compose logs listener"
This should yield messages showing the following:
![Imgur](https://i.imgur.com/T37z9Td.png)

Additionally, you can push changes to this repository, editting any of the code. 
When this is done, you can see that the fourth container, running the gitlab
container will update the changes:
![Imgur](https://i.imgur.com/55dfBw8.png)


<h2>Resources</h2>
Author: Chase Cargill

