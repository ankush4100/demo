pipeline {
    agent any
def mvnHome=tool name: 'maven-3.6.0', type: 'maven'
    stages {
        stage ('Compile Stage') {

            steps {
                
                sh "${mvnHome}/bin/mvn clean compile"
                
            }
        }

        


        stage ('Deployment Stage') {
            steps {
                
                   sh "${mvnHome}/bin/mvn deploy"
                
            }
        }
    }
}
