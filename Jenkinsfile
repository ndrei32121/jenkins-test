@Library('jenkins-lib') _

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
                printHello(name: "Andrey")
                sh """
                    cat /etc/*release*
                    hostname
                    docker run --rm --name ub-test ubuntu:20.04 sleep 30s
                """
            }
        }
    }
}
