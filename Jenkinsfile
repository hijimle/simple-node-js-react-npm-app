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
				sh 'npm install --timing'
				sh 'npm -v'
				sh 'cat /root/.npm/_logs/*.log'
				sh 'cp /root/.npm/_logs/*.log /var/jenkins_home/workspace/jimle'
				sh 'npm config get cache'
            }
        }
        stage('Test') {
            steps {
                sh './jenkins/scripts/test.sh'
            }
        }
        stage('Deliver') { 
            steps {
				sh 'npm -v'
                sh './jenkins/scripts/deliver.sh' 
				sh 'whoami'
                input message: 'Finished using the web site? (Click "Proceed" to continue)' 
                sh './jenkins/scripts/kill.sh' 
            }
        }
    }
}