pipeline {
    agent any 
	stages {
        stage('Build') { 
            steps {
		bat '''
             cd C:\Program Files (x86)\Jenkins\workspace\Maven-pipeline
            
             mvn clean install 
             '''
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
