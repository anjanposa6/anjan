pipeline {
  agent any
  options {
    timestamps()
  }
  stages {
    stage('Checkout') {
      steps {
        git branch: 'main', url: 'https://github.com/anjanposa6/ip-check.git'
      }
    }
    stage('Execute IP Check') {
      steps {
        sh 'chmod +x ip_check.sh'
        sh './ip_check.sh | tee ip_output.log'
      }
    }
    stage('Archive Logs') {
      steps {
        archiveArtifacts artifacts: 'ip_output.log', fingerprint: true
      }
    }
  }
  post {
    always {
      echo 'Pipeline completed.'
    }
  }
}
