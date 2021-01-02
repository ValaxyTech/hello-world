@Library('docker-shared-lib')_

/* Pipeline */
pipeline {
  agent { docker { image 'maven:3.6.3' } }
    stages {
        stage('build') {
            steps {
                sh 'mvn --version'
            }
         }
          steps {
            script {
                dockerBuild.login()
                dockerBuild.build("padmajakonduru/hello:latest")
                dockerBuild.push("padmajakonduru/hello:latest")
            }
        }
    }
  }
