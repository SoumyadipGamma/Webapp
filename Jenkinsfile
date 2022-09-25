pipeline {

    agent {
        label "linuxbuildnode"
    }

    stages {    
        stage('Build by Maven') {
            steps { 
                sh 'mvn clean package'
            }
        }
        
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t dipakdock/webapp:${BUILD_TAG} .'
            }
        }        
    }
}