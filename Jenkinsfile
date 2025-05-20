pipeline {
    agent any

    environment {
        ZEPHYR_TOKEN = credentials('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJjb250ZXh0Ijp7ImJhc2VVcmwiOiJodHRwczovL3Rlc3RtYW1hcHAuYXRsYXNzaWFuLm5ldCIsInVzZXIiOnsiYWNjb3VudElkIjoiNzEyMDIwOmE4MDJjZmJiLWJhN2YtNDNhNi1hMWUwLTA3ZWE0ZjA5MTdlYiIsInRva2VuSWQiOiIxOWQxYTM3Mi1hMzBiLTQ0YTYtOGFmZC00MzY0MjlkYWY1OTAifX0sImlzcyI6ImNvbS5rYW5vYWgudGVzdC1tYW5hZ2VyIiwic3ViIjoiMjIxZjQyMGMtZjJkNC0zYzQwLTg1OTQtMjU3MzFmZWQyZjY2IiwiZXhwIjoxNzc5MTg1NDc5LCJpYXQiOjE3NDc2NDk0Nzl9.py_qedK8CwLsxVUAStGKB0ZwOsve3qto2_M8LL_Ht_0')
    }

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
