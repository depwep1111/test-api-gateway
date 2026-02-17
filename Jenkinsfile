pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/depwep1111/test-api-gateway.git'
            }
        }
        stage('Build') {
            steps {
                bat 'mvnw clean package -DskipTests'
            }
        }
        stage('Docker Build') {
            steps {
                bat 'docker build -t tranthanhvt0982/test-api-gateway:latest .'
            }
        }
        stage('Push Docker Image') {
            steps {
                withCredentials([string(credentialsId: 'dockerhub-pass', variable: 'DOCKER_PASS')]) {
                    bat 'echo %DOCKER_PASS% | docker login -u tranthanhvt0982 --password-stdin'
                    bat 'docker push tranthanhvt0982/test-api-gateway:latest'
                }
            }
        }
        stage('Deploy to Kubernetes') {
            steps {
                bat 'kubectl apply -f k8s/deployment.yaml'
            }
        }
    }
}