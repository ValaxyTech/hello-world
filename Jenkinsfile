pipeline{
    agent any

    tools {
         maven 'maven3'
        
    }

    stages{
        stage('checkout'){
            steps{
                checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[credentialsId: '', url: 'https://github.com/Arungangoni/hello-world.git']]])
            }
        }
        stage('build'){
            steps{
               sh 'mvn install'
            }
        }
    }
}
