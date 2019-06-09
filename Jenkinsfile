node{
   stage('Checkout form SCM'){
   git 'https://github.com/saikrishna86/hello-world.git'
 }
   stage ('Build -Package'){
     sh 'mvn package'
 }
   sshagent(['tomcat-dev']) {
      sh 'scp StrictHostKeyChecking=no /var/lib/jenkins/workspace/cicd-pipeline/webapp/target/*.war sai@35.222.68.154:/opt/apache-tomcat-8.5.41/webapp'
}

 }
