node{
    stage('SCM Checkout'){
    git branch: 'patch-1', credentialsId: 'Git_Credential', url: 'https://github.com/shabtamboli01/hello-world.git'
                        }
    stage('mvn compile package built task'){
        sh label: '', script: 'mvn clean package'
    }
    stage('deploy war to the Testing tomcat server'){
        deploy adapters: [tomcat9(credentialsId: 'Tomcat_Credentials', path: '', url: 'http://40.89.167.73:8090/')], contextPath: null, onFailure: false, war: '**/*.war'
    }
    
}
