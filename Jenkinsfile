pipeline {
    agent any 
	stages {
        stage('Build') { 
            steps {
              sh 'mvn clean install' 
            }
        }
        stage('Test') { 
            steps {
                echo 'this is tseting application'
            }
        }
        stage('Deploy') { 
            steps {
                echo 'this is Deploying application'
            }
        }
    }
}