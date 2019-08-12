pipeline {
   agent any
      tools {
            jdk "Java-1.8"
            maven "Maven-3.6.1"
      }
      stages {
        stage ('Git Checkout ') {

            steps {
                git branch: 'master',
                    credentialsId: 'gitcredentials',
                    url: 'https://github.com/parveensindhwani/hello-world.git'
                }
            }
			
		stage ('Build') {
		   steps {
		      sh '''
			  cd $WORKSPACE
			  mvn clean install package
			  
			  
			  '''
			      }
            }
		stage ('Deploy') {
		   steps {
		      sh '''
		      cd $WORKSPACE
		      sudo cp $WORKSPACE/webapp/target/webapp.war $WORKSPACE
		      sudo docker build -t "tomcat:1.0" .
		      #sudo docker rm -f webapp
		      sudo docker run --name webapp -d -p 80:8080 tomcat:1.0
			  
			  
			  '''
			      }
            }
		
		
		
		}
	} 
