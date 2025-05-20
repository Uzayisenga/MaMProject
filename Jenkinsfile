pipeline {
    agent any

    environment {
        ZEPHYR_TOKEN = credentials('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJjb250ZXh0Ijp7ImJhc2VVcmwiOiJodHRwczovL3Rlc3RtYW1hcHAuYXRsYXNzaWFuLm5ldCIsInVzZXIiOnsiYWNjb3VudElkIjoiNzEyMDIwOmE4MDJjZmJiLWJhN2YtNDNhNi1hMWUwLTA3ZWE0ZjA5MTdlYiIsInRva2VuSWQiOiJjOTQxZWM2NS03MGJkLTRhNDctODRlNy1iOGZiNzE3ZDJmNTIifX0sImlzcyI6ImNvbS5rYW5vYWgudGVzdC1tYW5hZ2VyIiwic3ViIjoiMjIxZjQyMGMtZjJkNC0zYzQwLTg1OTQtMjU3MzFmZWQyZjY2IiwiZXhwIjoxNzc5Mjg0MDQ1LCJpYXQiOjE3NDc3NDgwNDV9.UGQndUJQWXYwLRtFv9h22Q3e5fL8LdIP3i0JDInP58Q')
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
