pipeline {
    agent any 
	stages {
        stage('Build') { 
            steps {
		bat '''
<<<<<<< HEAD
=======
            
>>>>>>> c8ff9c304415463a3a0b8a34515786407bdddf0c
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
               copy C:\\Program Files (x86)\\Jenkins\\workspace\\Maven-pipeline\\webapp\\target\webapp.war C:\\apache-tomcat-8.5.50\\webapps
                '''
            }
        }
        
        
    }
}
