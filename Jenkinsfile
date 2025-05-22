pipeline {
    agent any

    // Remove the 'environment' block that hardcodes the token.
    // Secrets should be managed securely via Jenkins Credentials.

    stages {
        stage('Checkout SCM') { // Renamed for clarity, matches log
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
                // Use withCredentials to securely fetch the token by its ID
                // Replace 'your-zephyr-credential-id' with the actual ID
                // you gave your secret text credential in Jenkins.
                withCredentials([string(credentialsId: 'fa2cb66f-0fdc-43cf-8020-fd2d5ebf470c', variable: 'ZEPHYR_TOKEN')]) {
                    // Inside this block, ZEPHYR_TOKEN is available as an environment variable
                    // and will be automatically masked in the logs.
                    bat 'upload-to-zephyr.bat'
                }
            }
        }
    }
}
