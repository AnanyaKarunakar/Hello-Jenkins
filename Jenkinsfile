pipeline{
    agent any
    // agent {
    //     label 'AGENT-1'
    // }
    // environment {
    //     COURSE = 'Jenkins'
    // }
    // options {
    //     disableConcurrentBuilds()
    // }
    // // options {
    // //     timeout(time:10, unit:'SECONDS')
    // //     disableConcurrentBuilds()
    // //     retry(3)
    // // }
    // parameters{
    //     string(name: 'PERSON', defaultValue: 'Mr Jenkins', description: 'Who should I say hello to?')
    //     text(name: 'BIOGRAPHY', defaultValue: '', description: 'Enter some information about the person')
    //     booleanParam(name: 'TOGGLE', defaultValue: true, description: 'Toggle this value')
    //     choice(name: 'CHOICE', choices: ['One', 'Two', 'Three'], description: 'Pick something')
    //     password(name: 'PASSWORD', defaultValue: 'SECRET', description: 'Enter a password')
    // }
    // when {
    //     branch 'production'
    // }
    stages {
        stage('Build') {
            steps {
                echo "Building on ${env.BRANCH_NAME}"
            }
        }

        stage('Deploy to Prod') {
            when {
                branch 'production'   // ✅ Only run this stage if branch is production
            }
            steps {
                echo "Deploying to Production!"
                sh './deploy-prod.sh'
            }
        }

        stage('Deploy to Dev') {
            when {
                branch 'develop'      // ✅ Only run this stage if branch is develop
            }
            steps {
                echo "Deploying to Dev!"
                sh './deploy-dev.sh'
            }
        }
    }
}

//     stages {
//         stage('Build '){
//             input {
//                 message "Should we continue?"
//                 ok "Yes, we should."
//                 submitter "alice,bob"
//                 parameters {
//                     string(name: 'PERSON', defaultValue: 'Mr Karunakar', description: 'Who should I say hello to?')
//                 }
//             }
//             steps{
//                 script{
//                     sh """
//                     echo "Hello, This is Build"
//                     """
//                 }
//             }
//         }
//         stage('Testing '){
//             steps{
//                 script{
//                     sh """
//                     echo "Hello, this is Test  "
//                     """
//                 }
//             }
//         }
//         stage("Deploy"){
//             steps{
//                 script{
//                     sh """
//                     echo "Hello, This is Deploy"
//                     """
//                 }
//             }
//         }
//     }
// post {
//     always {
//         echo 'I will always say Hello again!'
//         // deleteDir()
//     }
//     failure {
//         echo 'Hello Failure'
//     }
//     success {
//         echo 'Hello Success'
//     }
// }

// }

// /*# Refer this url https://github.com/DAWS-82S/jenkins-practice/blob/main/Jenkinsfile  */

// pipeline {
//     agent  {
//         label 'AGENT-1'
//     }
//     environment { 
//         COURSE = 'jenkins'
//     }
//     options {
//         timeout(time: 30, unit: 'MINUTES') 
//         disableConcurrentBuilds()
//     }
//     parameters {
//         string(name: 'PERSON', defaultValue: 'Mr Jenkins', description: 'Who should I say hello to?')
//         text(name: 'BIOGRAPHY', defaultValue: '', description: 'Enter some information about the person')
//         booleanParam(name: 'TOGGLE', defaultValue: true, description: 'Toggle this value')
//         choice(name: 'CHOICE', choices: ['One', 'Two', 'Three'], description: 'Pick something')
//         password(name: 'PASSWORD', defaultValue: 'SECRET', description: 'Enter a password') 
//     }
//     // Build
//     stages {
//         stage('Build') {
//             steps {
//                 script{
//                     sh """
//                         echo "Hello Build"
//                         sleep 10
//                         env
//                         echo "Hello ${params.PERSON}"
//                     """
//                 }
//             }
//         }
//         stage('Test') {
//             steps {
//                 script{
//                     echo 'Testing..'
//                 }
//             }
//         }
//         stage('Deploy') {
//             input {
//                 message "Should we continue?"
//                 ok "Yes, we should."
//                 submitter "alice,bob"
//                 parameters {
//                     string(name: 'PERSON', defaultValue: 'Mr Jenkins', description: 'Who should I say hello to?')
//                 }
//             }
//             steps {
//                 script{
//                     echo "Hello, ${PERSON}, nice to meet you."
                    
//                     echo 'Deploying..'
//                 }
//             }
//         }
        
//     }

//     post { 
//         always { 
//             echo 'I will always say Hello again!'
//             deleteDir()
//         }
//         success { 
//             echo 'Hello Success'
//         }
//         failure { 
//             echo 'Hello Failure'
//         }
//     }
// }