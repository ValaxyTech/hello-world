@Library('docker-shared-lib')_

/* Pipeline */
pipeline {
  agent { label "containerBuilds" }
  options { 
    ansiColor('xterm') 
    disableConcurrentBuilds()
    skipDefaultCheckout true
  }

  environment {
    HOME           = "${WORKSPACE}"
  }

  stages {
    stage ('cleanWs & checkout scm') {
      steps {
        script {
          deleteDir()
          cleanWs()
          checkout scm
        }
      }
    }
    stage ('preparation') {
      steps {
        script {
          env.DOCKERFILES        = dockerfiles
          env.GITHUB_REPO        = github_repo.toLowerCase()
          env.DOCKER_TAG         = docker_tag.toLowerCase()
        }
      }
    }
    stage('Container build') {
        when {
            allOf {
            expression { dockerfiles }
            branch "master"
            }
        }
        steps {
            script {
                dockerBuild.login()
                dockerBuild.build(env.DOCKER_TAG)
                dockerBuild.push(env.DOCKER_TAG)
            }
        }
    }
  }
  post { 
    always {
      script {
        cleanWs()
      }
    }
  }
}
