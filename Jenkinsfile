pipeline {
    agent any
    stages {
        stage('Build') {

            steps {

                script {
				
				
				
                    def mvnHome = tool name: 'maven-3.6.0', type: 'maven'

                    if (isUnix()) {

						sh "'${mvnHome}/bin/mvn' -Dintegration-tests.skip=true clean package"
						
						

                    } else {
					
                        bat(/"${mvnHome}\bin\mvn" -Dintegration-tests.skip=true clean package/)
						
                    }

                }



            }

        }
	    stage('Build image') {

        app = docker.build("ankush4100/demo")
    }
        

        
    }
}
