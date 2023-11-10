pipeline {
  agent any
  stages {
    stage('checkout code') {
      steps {
        git(branch: 'dev', url: 'https://github.com/abdimak1/React1')
        git(url: 'https://github.com/abdimak1/React1', branch: 'main')
      }
    }

  }
}