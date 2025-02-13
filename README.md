# BoardgameListingWebApp

		---> Board Game Database Full-Stack Web Application. This web application displays lists of board games and their reviews. While anyone can view the board game lists and reviews, they are required to log in to add/ edit the board games and their reviews. The 'users' have the authority to add board games to the list and add reviews, and the 'managers' have the authority to edit/ delete the reviews on top of the authorities of users. 


![Image](https://github.com/user-attachments/assets/ed06d7e5-1aad-463e-baf4-154e071850c2)
![Image](https://github.com/user-attachments/assets/8b35582a-a42b-4157-b22c-f24d57336466)
![Image](https://github.com/user-attachments/assets/6dbc420c-5be6-47c0-879b-b7269d7e31ea)


## Application Deploy through CICD Pipeline 

### Take Instance base image - ubuntu 
### Size - t2.micro
### Volume size - 25GB


##  Project Workflow
				project-root/
					src/
							main/
								java/  # Java source code 
								resources/  # Resources like configuration files 
								webapp/    # Web application content (for web projects)
 
							test/
								java/   # Test source code 
								resources/  # Test resources 
								webapp/   # Test web application content (for web projects) 
					target/   # Compiled classes and built artifacts 
					pom.xml  # Project Object Model (POM) configuration  
					other project files   # README, LICENSE, etc.

1. Sudo apt-get update

2. sudo apt-get install jdk21-version


3. Maven dependencies and creating a project file along with dependencies
### <---------------------------------------------------------------------------->
mvn archetype:generate -DgroupId=com.mycompany.app -DartifactId=my-app -DarchetypeArtifactId=maven-archetype-quickstart -DarchetypeVersion=1.5 -DinteractiveMode=false


### <----------------------------------------------------------------------------->
4. cd /home/ubuntu/my-app/project

5. git clone https://github.com/jaiswaladi246/Multi-Tier-BankApp-CI.git

6. cd /home/ubuntu/my-app/project/DevOps-CICD

7. mvn compile

8. ls -la   

9. cd ..  < cd /home/ubuntu/my-app/project >

10. ls -la  < To verity the new created directiories >

11. mvn test  < To check target file is created or not >

### <------ Clean command is executed only if the pom.xml file is present in the current directiory and  clean command clear the test/delete the test file and the again run the test command and build test ------->

12. mvn clean test  

13. mvn package

14. mvn deploy

15.  cd /home/ubuntu/my-app/project/path-to-deploy-application-.jar.war

16. Finally execute the <-- java -jar application.war  --> file



## Project GitHub URL :

	https://github.com/jaiswaladi2468/BoardgameListingWebApp.git

## Maven Working Process 

1.			mvn validate
2.			mvn compile
3.			mvn test
4.			mvn package
5.			mvn install
6.			mvn deploy
						> Go to Application_file/target$/database_service_project-0
						> Run Command 
									> java -jar database_service_project-0.jar
												>	For .war file also
									>java -jar database_service_project-0.war
											

# History 

ubuntu@ip-172-31-14-128:~/BoardgameListingWebApp/target$ ls
classes                                               generated-sources       maven-archiver  surefire-reports

database_service_project-0.0.3-SNAPSHOT.jar           generated-test-sources  maven-status    test-classes

database_service_project-0.0.3-SNAPSHOT.jar.original  jacoco.exec             site


ubuntu@ip-172-31-14-128:~/BoardgameListingWebApp/target$ history

# Commands

	sudo apt-get update
	cd /home/ubuntu/
	ls
	pwd
	ls
	java --version
	sudo apt install openjdk-17-jre-headless
	maven
	sudo apt-get install maven
	sudo apt-get update
	git clone https://github.com/jaiswaladi2468/BoardgameListingWebApp.git
	cd BoardgameListingWebApp/
	ls
	mvn compile
	mvn test
	mvn clean test
	ls
	mvn package
	ls
	cd target/
	ls
	java -jar database_service_project-0.0.3-SNAPSHOT.jar
	ls
	history
