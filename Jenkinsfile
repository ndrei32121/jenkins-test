pipeline {
    agent {
        docker { 
            // image 'python:3.8.0'
            label "docker-jnlp"
        }
        
    }

    stages {
        stage('Build') {
            steps {
                sh """
                    cat /etc/*release*
                    python --version
                    hostname
                """
            }
        }
    }
}
