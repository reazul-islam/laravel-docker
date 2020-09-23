pipeline {
  agent {
    dockerfile {
      filename 'Dockerfile'
    }

  }
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

    stage('Push to docker') {
      environment {
        DOCKER_USERNAME = 'muradreazul'
        DOCKER_PASSWORD = 'muradhasan00'
      }
      steps {
        sh '''docker login -u="$DOCKER_USERNAME" -p="$DOCKER_PASSWORD"
docker push muradreazul/devpro'''
      }
    }

  }
}