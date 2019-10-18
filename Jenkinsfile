node {
     	agent any
	stages {     
     		stage('Checking environment') {
      			echo 'Checking environment...'
      			sh 'git --version'
      			echo "Branch: ${env.BRANCH_NAME}"
      			sh 'docker -v'
	    	}
     		stage("Linting") {
     	
	    	}	
	}
     
}
