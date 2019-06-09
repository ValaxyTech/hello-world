node{
   
   stage('Checkout form SCM'){
   git 'https://github.com/saikrishna86/hello-world.git'
 }
   stage ('Build -Package'){
     sh 'mvn package'
 }
   stage ('Deploy to tomcat-server'){
   sshagent(['tomcat-dev']) {
      sh 'scp -r /var/lib/jenkins/workspace/cicd-pipeline/webapp/target/*.war sai@10.128.0.22:/opt/apache-tomcat-8.5.41/webapps/'
}
}
 }
