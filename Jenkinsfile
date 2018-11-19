pipeline {
    agent any
    stages {
        stage('Build') {

            steps {

                script {
				
				
				
                    def mvnHome = tool 'Maven'

                    if (isUnix()) {

						sh "'${mvnHome}/bin/mvn' -Dintegration-tests.skip=true clean package"
						
						pom = readMavenPom file: 'pom.xml'
						print pom.version

                    } else {
					
                        bat(/"${mvnHome}\bin\mvn" -Dintegration-tests.skip=true clean package/)
						
						pom = readMavenPom file: 'pom.xml'
						print pom.version
                        

						
                    }

                }



            }

        }
        

        
    }
}
