@Library('docker-shared-lib')_

/* Pipeline */
pipeline {
  agent { docker { image 'maven:latest' } }
    stages {
      stage('build') {
            steps {
                sh 'mvn --version'
            }
      }
      stage('Push into registry'){
          steps {
            script {
                dockerBuild.login()
                dockerBuild.build("padmajakonduru/hello:latest")
                dockerBuild.push("padmajakonduru/hello:latest")
            }
        }
      }
    }
      
  }
