pipeline {
  agent any
  stages {
    stage('Checkout') {
      steps {
        git 'https://github.com/YOUR_USERNAME/zephyr-cucumber-demo.git'
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
