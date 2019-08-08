node{
    stage('SCM Checkout'){
    git branch: 'patch-1', credentialsId: 'git-cred', url: 'https://github.com/shabtamboli01/hello-world.git'
                        }
    stage('mvn compile package built task'){
        sh label: '', script: 'mvn clean package'
    }
    stage('deploy war to the Testing tomcat server'){
        deploy adapters: [tomcat9(credentialsId: 'tomcat_credential', path: '', url: 'http://40.118.225.106:8090/')], contextPath: null, onFailure: false, war: '**/*.war'
    }
    
}
