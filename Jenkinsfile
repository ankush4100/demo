pipeline {
    agent any
tools {
        maven 'Maven 3.6.0'
    }
    stages {
        stage ('Compile Stage') {

            steps {
                withMaven(maven : 'maven_3_6_0') {
                    sh 'mvn clean install'
                }
            }
        }

        


        
    }
}
