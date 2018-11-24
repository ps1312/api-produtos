pipeline {
  agent {
    docker {
      image 'joaopaulolins/apiprodutos:devops'
    }
  }

  stages {

    stage('test') {
      steps {
        sh 'bundle exec rspec'
      }
    }
  }
}
