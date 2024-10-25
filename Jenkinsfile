pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'chmod +x run_backend.sh'
                sh './run_backend.sh'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}

