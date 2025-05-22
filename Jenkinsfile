pipeline {
    agent any

    // REMOVE THIS 'environment' block completely.
    // Secrets should NEVER be hardcoded in the Jenkinsfile.
    // environment {
    //     ZEPHYR_TOKEN = credentials('YOUR_ACTUAL_TOKEN_VALUE_HERE') // <-- THIS IS WRONG
    // }

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
                // Replace 'your-zephyr-credential-id' with the actual ID you see in Jenkins.
                // Based on your screenshot, the ID is: fa2cb66f-0fdc-43cf-8020-fd2d5ebf470c
                withCredentials([string(credentialsId: 'fa2cb66f-0fdc-43cf-8020-fd2d5ebf470c', variable: 'ZEPHYR_TOKEN')]) {
                    // Inside this block, ZEPHYR_TOKEN is available as an environment variable
                    // and will be automatically masked in the logs.
                    bat 'upload-to-zephyr.bat'
                }
            }
        }
    }
}
