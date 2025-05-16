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
                
                bat 'mvn clean test'
            }
        }

        stage('Upload to Zephyr') {
            steps {
              
                bat 'upload-to-zephyr.bat'
            }
        }
    }
}
