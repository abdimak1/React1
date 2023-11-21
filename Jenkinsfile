pipeline {
    agent any

    environment {
        DOCKERHUB_CREDENTIALS = credentials('abdimak')
    }

    stages {
        stage('Checkout') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], userRemoteConfigs: [[url: 'https://github.com/abdimak1/React1']]])
            }
        }

        stage('Build') {
            steps {
                bat 'npm install'
                bat 'npm run build'
            }
        }

        stage('Build docker image') {
            steps {
                script {
                    bat 'docker build -t abdimak/abdi:img1 .'
                }
            }
        }

        stage('Login to Docker Hub') {
            steps {
                bat 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
            }
        }

        stage('Push to Docker Hub') {
            steps {
                bat 'docker push abdimak/abdi:image1'
            }
        }
    }
    post {
        always {
            bat 'docker logout'
        }
    }
      
}
