pipeline {
	environment {
    registry = "ankush4100/demo"
    registryCredential = 'demo'
    dockerImage = ''
  }
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
	   stage('Docker Build') {
      agent any
      steps {
        bat 'docker build -t ankush4100/jenkins-example-2.3-SNAPSHOT:latest .'
      }
    } 
	    
	   
         
        

        
    }
}
