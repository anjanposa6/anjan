pipeline {
    agent any   // Runs on any available Windows agent
    stages {
        stage('Checkout') {
            steps {
                // Clone your GitHub repository
                git branch: 'main', url: 'https://github.com/anjanposa6/anjan.git'
            }
        }
        stage('Run Script') {
            steps {
                // Run a Windows batch script
                // If you have converted git-ip.sh into git-ip.bat:
                bat 'git-ip.bat'

                // OR, if you want to run the .sh file via Git Bash:
                // bat '"C:\\Program Files\\Git\\bin\\bash.exe" git-ip.sh'
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
