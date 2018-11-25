pipeline {
  agent { dockerfile true }

  stages {

    stage('test') {
      steps {
        sh 'bundle exec rspec'
      }
    }
  }
}
