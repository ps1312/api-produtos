pipeline {
  agent {
    docker {
      image 'joaopaulolins/apiprodutos'
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
