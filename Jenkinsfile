pipeline {
  agent {
    docker {
      image 'ruby:2.5.3'
    }
  }

  environment {
    BUNDLE_PATH='vendor/cache'
    RAILS_ENV='test'
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
        sh 'bundle install --path vendor/bundle; bundle exec rake db:drop; bundle exec rake db:create; bundle exec rake db:migrate'
      }
    }

    stage('test') {
      steps {
        sh 'bundle exec rspec'
      }
    }
  }
}
