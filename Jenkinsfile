pipeline {
    agent any {
        label 'AGENT-1'
    }

    stages {
        stage('Build') {
            steps {
                echo "Building"
            }
        }
        stage('Test') {
            steps {
                echo "Testing"
            }
        }
        stage('Deploy') {
            steps {
                echo "Deploying__"
            }
        }
    }
    post{
        always {
            echo 'I will always  Ssay hello Again'
            deleteDir()
        }
        success{
            echo 'Hello Success'
        }
        failure{
            echo 'Hello Failure---'
        }
    }

}