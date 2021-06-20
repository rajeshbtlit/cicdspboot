pipeline {
    agent any
    environment {
        imagename = "rajeshc/study"
        registryCredential = 'ab78ce32-dfeb-4255-ad15-2b7b92e8851e'
        dockerImage = ''
      }

    triggers {
        pollSCM '* * * * *'
    }
    stages {
        stage('Build') {
            steps {
                sh './mvnw clean package'
            }
        }
        stage('Test') {
            steps {
                sh './mvnw  test'
            }
        }
        stage('Dockerize') {
                    steps {
                        script {
                                  dockerImage = docker.build cicdspboot
                                }
                    }
                }
    }
}