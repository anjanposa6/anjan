pipeline {
    agent any   // Runs on any available Ubuntu/Linux agent
    stages {
        stage('Checkout') {
            steps {
                // Clone your GitHub repository
                git branch: 'main', url: 'https://github.com/anjanposa6/anjan.git'
            }
        }
        stage('Run Script') {
            steps {
                // Ensure script is executable
                sh 'chmod +x git-ip.sh'
                // Run the script
                sh './git-ip.sh'
            }
        }
    }
    post {
        success {
            echo 'Pipeline executed successfully!'
        }
        failure {
            echo 'Pipeline failed!'
        }
    }
}
