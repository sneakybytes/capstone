pipeline {
     	agent any
	stages {     
     		stage('Checking environment') {
			steps {
      				sh 'echo "Checking environment..."'
      				sh 'git --version'
      				echo "Branch: ${env.BRANCH_NAME}"
      				sh 'docker -v'
			}
	    	}
		stage("Linting") {
			steps { 
				echo 'Linting...'
      				sh '/bin/hadolint Dockerfile'
			}
		}
	}
     
}
