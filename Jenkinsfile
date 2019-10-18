pipeline {
     	agent any
	stages {     
     		stage('Checking environment') {
      			sh 'echo "Checking environment..."'
      			sh 'git --version'
      			sh 'echo "Branch: ${env.BRANCH_NAME}"'
      			sh 'docker -v'
	    	}
     		stage('Linting') {
     	
	    	}	
	}
     
}
