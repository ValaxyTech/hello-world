pipeline {
    agent any 
	stages {
        stage('Build') { 
            steps {
		  sh '''
                cd C:\Program Files (x86)\Jenkins\workspace\Maven-pipeline
                '''
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
