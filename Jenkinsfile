pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {

                sh "mvn clean compile"
            }
        }
        stage('Test') {
            steps {
                sh "mvn test site"
            }

             post {
                always {
                    junit allowEmptyResults: true, testResults: 'target/surefire-reports/*.xml'
                }
            }
        }

        stage('deploy') {
            steps {
                sh "mvn package"
            }
        }


        stage('Build Docker image'){
            steps {
                sh 'docker build -t sainathreddy/docker_jenkins_pipeline:${BUILD_NUMBER} .'
            }
        }
}
