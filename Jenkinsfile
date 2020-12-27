pipeline {
    agent any 
	stages {
        stage('Build') { 
            steps {
		bat '''
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
               
             bat '''
               copy C:\\Program Files (x86)\\Jenkins\\workspace\\Maven-pipeline\\webapp\\target\\webapp.war C:\\apache-tomcat-8.5.50\\webapps\\
                '''
            }
        }
        
        
    }
}
