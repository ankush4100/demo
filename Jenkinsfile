pipeline {
	environment {
    registry = "ankush4100/demo"
    registryCredential = 'demo'
    dockerImage = ''
  }
    agent none
    stages {
        stage('Build') {

		 agent {
        docker {
          image 'maven:3.6.0'
        }
		 }
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
	   stage('Building image') {
      steps{
        script {
          dockerImage = docker.build registry + ":$BUILD_NUMBER"
        }
      }
    }
	    
	   
         
        

        
    }
}
