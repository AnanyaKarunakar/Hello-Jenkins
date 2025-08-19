pipeline{
    agent any
    // agent {
    //     label 'AGENT-1'
    // }
    environment {
        COURSE = 'Jenkins'
    }
    options {
        disableConcurrentBuilds()
    }
    // options {
    //     timeout(time:10, unit:'SECONDS')
    //     disableConcurrentBuilds()
    //     retry(3)
    // }
    parameters{
        string(name: 'PERSON', defaultValue: 'Mr Jenkins', description: 'Who should I say hello to?')
        text(name: 'BIOGRAPHY', defaultValue: '', description: 'Enter some information about the person')
        booleanParam(name: 'TOGGLE', defaultValue: true, description: 'Toggle this value')
        choice(name: 'CHOICE', choices: ['One', 'Two', 'Three'], description: 'Pick something')
        password(name: 'PASSWORD', defaultValue: 'SECRET', description: 'Enter a password')
    }
    stages {
        stage('Build '){
            steps{
                script{
                    sh """
                    echo "Hello, This is Build"
                    """
                }
            }
        }
        stage('Testing '){
            steps{
                script{
                    sh """
                    echo "Hello, this is Test  "
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
        // deleteDir()
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

