pipeline {

    agent {
        label "linuxbuildnode"
    }

    stages {    
        stage('Pull from SCM') {
            steps {
                git 'https://github.com/opendoc-tree/javademo.git'
            }
        }

        stage('Build by Maven') {
            steps { 
                sh 'mvn clean package'
            }
        }
        
        stage('Deploy') {
            steps {
                sh 'java -jar target/*.jar'
            }
        }        
    }
}