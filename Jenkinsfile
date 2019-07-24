node{
   
   stage('Checkout form SCM'){
        // Get some code from a GitHub repository
     git credentialsId: 'github', url: 'https://github.com/saikrishna86/hello-world.git'
   
 }
   
   // Get the Maven tool.
      // ** NOTE: This Maven tool must be configured
      // **       in the global configuration.  
   
    // Run the maven build
   stage ('Build -Package'){
     sh 'mvn package'
 }
   // Deploy to target tomcat-server
   stage ('Deploy to tomcat-server'){
   sshagent(['tomcat-dev']) {
      sh 'scp -r /var/lib/jenkins/workspace/cicd-pipeline/webapp/target/*.war sai@10.128.0.22:/opt/apache-tomcat-8.5.41/webapps/'
}
}
 }
