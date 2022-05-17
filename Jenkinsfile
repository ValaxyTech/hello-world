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
               sh 'mvn clean install'
            }
        }
        stage(Build_Docker_image){
            steps {
                script {
                    sh "docker build -t helloworld/myapp:1.0 ."
                }
    }
}
        stage(pushdockerimage){
            steps {
                script {
                    withCredentials([string(credentialsId: 'dockerhubpwd', variable: 'Dockerhubpwd')]) {
                        sh "docker login -u grahul123 -p ${Dockerhubpwd}"
                        sh "docker push helloworld/myapp:1.0"
    
}
    }
}
