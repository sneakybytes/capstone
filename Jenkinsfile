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

		stage("Building Docker Image & Upload to Docker Hub") {
			steps {
				echo "Building Image..."
				sh "docker build -t ${registry} ."
				sh "docker login -u ${DOCKERHUBUSER_USR} -p ${DOCKERHUBUSER_PSW}"
				sh "docker push ${registry}"
			}
		}
		stage("Deploying on Kubernetes Cluser") {
			steps {
				echo "Creating Kubernetes cluster..."
				sh "sh k8s_cluster.sh"
			}
		}
		stage("Testing WebApp") {
			steps {
				curl http://127.0.0.1:31010
			}
		}
	}
}
