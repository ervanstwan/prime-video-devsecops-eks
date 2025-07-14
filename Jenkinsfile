pipeline {
  agent any

  stages {
    stage('Build') {
      steps {
        sh 'docker build -t yourdockerhub/prime-video-clone:latest .'
      }
    }
    stage('Test') {
      steps {
        sh 'npm test'
      }
    }
    stage('Static Code Analysis') {
      steps {
        sh 'sonar-scanner'
      }
    }
    stage('Security Scan') {
      steps {
        sh 'trivy image yourdockerhub/prime-video-clone:latest'
      }
    }
    stage('Push Image') {
      steps {
        withDockerRegistry(credentialsId: 'dockerhub-creds', url: '') {
          sh 'docker push yourdockerhub/prime-video-clone:latest'
        }
      }
    }
    stage('Deploy to K8s') {
      steps {
        sh 'helm upgrade --install prime-video helm/'
      }
    }
  }
}
