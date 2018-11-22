pipeline {
  agent {
    docker {
      image 'ruby:2.5.3'
    }

  }
  stages {
    stage('build') {
      steps {
        git credentialsId: 'git-creds', url: 'https://github.com/ps1312/api-produtos.git'
        sh 'ls'
      }
    }
    stage('install dependencies') {
      steps {
        sh 'bundle install'
      }
    }

    stage('test') {
      steps {
        sh 'rspec'
      }
    }
  }
}
