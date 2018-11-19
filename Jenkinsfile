pipeline {
    agent any
    stages {
        stage ('Compile Stage') {
def mvnHome= tool name: 'maven-3.6.0', type: 'maven'
            steps {
                
                sh "${mvnHome}/bin/mvn clean compile"
                
            }
        }

        stage ('Deployment Stage') {
            def mvnHome= tool name: 'maven-3.6.0', type: 'maven'
            steps {
                   sh "${mvnHome}/bin/mvn deploy"
                
            }
        }
    }
}
