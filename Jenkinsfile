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
                sh './mvnw clean package -DskipTests'
            }
        }
//         stage('Docker Build') {
//             steps {
//                 sh 'docker build -t your-dockerhub/auth-service:latest .'
//             }
//         }
//         stage('Push Docker Image') {
//             steps {
//                 withCredentials([string(credentialsId: 'dockerhub-pass', variable: 'DOCKER_PASS')]) {
//                     sh 'echo $DOCKER_PASS | docker login -u your-dockerhub --password-stdin'
//                     sh 'docker push your-dockerhub/auth-service:latest'
//                 }
//             }
//         }
//         stage('Deploy to Kubernetes') {
//             steps {
//                 sh 'kubectl apply -f k8s/deployment.yaml'
//             }
//         }
    }
}