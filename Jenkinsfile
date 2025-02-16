pipeline {

    any agent 

    tools {
        # Once it is configured it is globally configured
        # Example maven "maven3"
        # Example jdk "jdk11"
        maven "maven_version_which_you_downloaded_as_plugin_with_version"
        jdk "jdk_version_which_you_downloaded_as_plugin_with_version"
    }

    stages {
        stage ('Git Checkout') {
            steps {

                    git 'https://github.com/path_of_the_hosting_repository.git'

            }
        }
        stage ('Compile') {
            steps{
                sh "mvn compile"
                echo "Code compilation goes well with no error detection !"
            }
        }

         stage ('Test') {
            steps{
                sh "mvn test"
                echo "Code tesing are smoothly passed !"
            }
        }

         stage ('Package') {
            steps{
                sh "mvn package"
                echo "Packaging Successfully !"
            }
        }

         stage ('Install') {
            steps{
                sh "mvn install"
                echo "Installation Done !"
                echo "Happy Ending !"
            }
        }

    }


}