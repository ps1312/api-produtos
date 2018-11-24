pipeline {
  agent { dockerfile true }

  stages {
    stage('build') {
      steps {
        git credentialsId: 'git-creds', url: 'https://github.com/ps1312/api-produtos.git'
      }
    }

    stage('test') {
      steps {
        sh 'bundle exec rspec'
      }
    }
  }
}
