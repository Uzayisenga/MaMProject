pipeline {
    agent any

    stages {
        stage('Checkout SCM') {
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
                // This is the correct way to use credentials in a declarative pipeline.
                // The ID here MUST match the ID of the Secret text credential in Jenkins.
                withCredentials([string(credentialsId: 'fa2cb66f-0fdc-43cf-8020-fd2d5ebf470c', variable: 'ZEPHYR_TOKEN')]) {
                    // Inside this block, ZEPHYR_TOKEN is available as an environment variable
                    bat 'upload-to-zephyr.bat'
                }
            }
        }
    }
}
