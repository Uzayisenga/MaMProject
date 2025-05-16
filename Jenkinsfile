pipeline {
  agent any
  stages {
    stage('Checkout') {
      steps {
        git 'https://github.com/Uzayisenga/MaMProject.git'
      }
    }
    stage('Build and Test') {
      steps {
        sh 'mvn test'
      }
    }
    stage('Upload to Zephyr') {
      steps {
        sh './upload-to-zephyr.sh'
      }
    }
  }
}
