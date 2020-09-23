pipeline {
  agent any
  stages {
    stage('build') {
      agent {
        dockerfile {
          filename 'Dockerfile'
        }

      }
      steps {
        sh 'docker image build -t mypro .'
      }
    }

  }
}