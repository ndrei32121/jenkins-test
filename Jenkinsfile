pipeline {
    agent {
        label "docker-ssh"
        // docker { 
        //     image 'python:3.8.0'
        //     label "test"
        // }
        
    }

    stages {
        stage('Build') {
            steps {
                sh """
                    cat /etc/*release*
                    hostname
                    sleep 3m
                """
            }
        }
    }
}
