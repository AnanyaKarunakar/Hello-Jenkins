pipeline{
    agent any
    // agent {
    //     label 'AGENT-1'
    // }
    stages {
        stage('Build'){
            steps{
                script{
                    sh """
                    echo "Hello, This is Build"
                    """
                }
            }
        }
        stage('Test'){
            steps{
                script{
                    sh """
                    echo "Hello, this is Test"
                    """
                }
            }
        }
        stage("Deploy"){
            steps{
                script{
                    sh """
                    echo "Hello, This is Deploy"
                    """
                }
            }
        }
    }
post {
    always {
        echo 'I will always say Hello again!'
        deleteDir()
    }
    failure {
        echo 'Hello Failure'
    }
    success {
        echo 'Hello Success'
    }
}

}

// /*# Refer this url https://github.com/DAWS-82S/jenkins-practice/blob/main/Jenkinsfile  */

