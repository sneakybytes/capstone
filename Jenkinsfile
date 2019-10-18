pipeline {
     	agent any
	stages {     
     		stage('Checking environment') {
			steps {
      				sh 'echo "Checking environment..."'
      				sh 'git --version'
      				sh 'echo "Branch: ${env.BRANCH_NAME}"'
      				sh 'docker -v'
			}
	    	}
	}
     
}
