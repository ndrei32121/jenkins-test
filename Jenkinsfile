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
                runLinuxScript(name: "app_checker.sh")
            }
        }
    }
}
