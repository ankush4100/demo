pipeline {
    agent any
    
    stages {
        stage ('Compile Stage') {

            steps {
                bat(/"${mvnHome}\bin\mvn" -Dintegration-tests.skip=true clean package/)
						
						pom = readMavenPom file: 'pom.xml'
						print pom.version
            }
        }

        


        
    }
}
