pipeline {
    agent any
     tools { 
        maven 'Maven 3.6.0' 
        jdk 'C:\Program Files\Java\jdk1.8.0_181\bin' 
    }

    stages {
        stage ('Compile Stage') {

            steps {
                    sh 'mvn clean compile'  
            }
        }

        stage ('Testing Stage') {

            steps {
                    sh 'mvn test'
            }
        }


        stage ('Deployment Stage') {
            steps {
                    sh 'mvn deploy'
            }
        }
    }
}
