pipeline {
    agent any

	environment {
	    DOCKERHUBUSER = credentials('dockerid')
		registry = 'sneakybytes/capstone-httpd'
	}
	
	stages {     
     	stage('Checking environment') {
			steps {
				echo "Checking environment..."
				sh 'git --version'
				echo "Branch: ${env.BRANCH_NAME}"
				sh 'docker -v'
			}
		}

		stage("Linting") {
			steps { 
				echo "Linting..."
      			sh '/bin/hadolint Dockerfile'
			}
		}

		stage("Building Image") {
			steps {
				echo "Building Image..."
				sh "docker build -t ${registry} ."
				sh "docker login -u ${DOCKERHUBUSER_USR} -p ${DOCKERHUBUSER_PSW}"
				echo "Uploading to Docker registry"
				sh "docker push ${registry}"
			}
		}
		stage("Deploy") {
			steps {
				echo "Deploy WebApp to Kubernetes..."
				sh "sh k8s_cluster.sh"
			}
		}
		stage("Testing WebApp") {
			steps {
				sh "curl http://127.0.0.1:31010"
			}
		}
	}
}
