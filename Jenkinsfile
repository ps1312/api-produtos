pipeline {
  agent { dockerfile true }

  stages {
    stage('cloning git') {
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
