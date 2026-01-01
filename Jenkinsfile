pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Pulls code from your GitHub repo
                checkout scm
            }
        }

        stage('Verify Files') {
            steps {
                echo 'Checking if files exist...'
                sh 'ls -ltr'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying to Apache Server...'
                // Running the shell script
                sh 'chmod +x deploy.sh'
                sh './deploy.sh'
            }
        }
    }
    
    post {
        success {
            echo 'Deployment Complete! Visit your EC2 Public IP.'
        }
        failure {
            echo 'Deployment Failed. Check the Jenkins console logs.'
        }
    }
}