pipeline {

    agent {
        label "linuxbuildnode"
    }

    stages {    
        stage('Build by Maven') {
            steps { 
                sh "mvn clean package"
            }
        }
        
        stage('Build Docker Image') {
            steps {
                sh "docker build -t dipakdock/webapp:${BUILD_TAG} ."
            }
        }

        stage('Push Image to Docker Hub') {
            steps {
                withCredentials([string(credentialsId: 'DOCKER_HUB_PWD', variable: 'DOCKER_HUB_PWD_CODE')]) {
                    sh "docker login -u dipakdock -p $DOCKER_HUB_PWD_CODE"
                }
                 sh "docker push dipakdock/webapp:${BUILD_TAG}"
            }
        }            
    }
}