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

        environment {
    ZEPHYR_TOKEN = credentials('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJjb250ZXh0Ijp7ImJhc2VVcmwiOiJodHRwczovL3Rlc3RtYW1hcHAuYXRsYXNzaWFuLm5ldCIsInVzZXIiOnsiYWNjb3VudElkIjoiNzEyMDIwOmE4MDJjZmJiLWJhN2YtNDNhNi1hMWUwLTA3ZWE0ZjA5MTdlYiIsInRva2VuSWQiOiI4ZGIzNjY5YS02ZGI2LTQwOTktYWU1OS00OWJhZTIwNGIyMGYifX0sImlzcyI6ImNvbS5rYW5vYWgudGVzdC1tYW5hZ2VyIiwic3ViIjoiMjIxZjQyMGMtZjJkNC0zYzQwLTg1OTQtMjU3MzFmZWQyZjY2IiwiZXhwIjoxNzc4NzYzNzUwLCJpYXQiOjE3NDcyMjc3NTB9.oPFZvlpsTU3XTra9I_3TC3wJuezd_xCTI48t3wlkhLw')
}


        stage('Upload to Zephyr') {
            steps {
              
                bat 'upload-to-zephyr.bat'
            }
        }
    }
}
