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
                    sh "docker build -t grahul123/myapp:1.0 ."
                }
    }
}
        stage(pushdockerimage){
            steps {
                script {
                    withCredentials([string(credentialsId: 'dockerhubpwd', variable: 'Dockerhubpwd')]) {
                        sh "docker login -u grahul123 -p ${Dockerhubpwd}"
                        sh "docker push grahul123/myapp:1.0"
    
}
    }
}
 }
        stage(Deploy_to_K8S_Cluster){
            steps {
                sshagent(['k8s_machine']) {
                    sh "scp -o StrictHostKeyChecking=no pod1.yaml ec2-user@3.88.129.66:/var/lib/jenkins/deploy"
                    sh "kubectl apply -f pod1.yaml ."
                }
            }
 }
}
}
