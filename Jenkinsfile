pipeline {
    agent {
        docker {
            image 'node:13.10-alpine'
            args '-p 5556:5556'
			args '-u root:root'
        }
    }
    environment { 
        CI = 'true'
    }
    stages {
        stage('Build') {
            steps {
				sh 'yarn install'
				sh 'yarn -v'
            }
        }
        stage('Test') {
            steps {
                sh './jenkins/scripts/test.sh'
            }
        }
        stage('Deliver') { 
            steps {
				sh 'yarn -v'
                sh './jenkins/scripts/deliver.sh' 
				sh 'whoami'
                input message: 'Finished using the web site? (Click "Proceed" to continue)' 
                sh './jenkins/scripts/kill.sh' 
            }
        }
    }
}