pipeline {

  agent { dockerfile true }
  stages {
    stage('Build image') {
      steps {
        container('docker') {
          sh 'docker build -t tamdt89/flask-docker .'
        }
      }
    }
   stage('Push image') {
      steps {
        container('docker') {
          sh 'docker login -u tamdt89 -p DothanhTam'
          sh 'docker push tamdt89/flask-docker'
        }
      }
    }
  }
}
