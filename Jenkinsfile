@Library('jenkins-lib') _

pipeline {
    agent {
        label "docker-ssh"
        // docker { 
        //     image 'python:3.8.0'
        //     label "test"
        // }
        
    }
    environment {
        BASE_DIR = 'src/git/'
    }

    stages {
        stage('Build') {
            steps {
                logStepsGroovy("app body has been completed") {
                    dir("~/") {
                        sh(script: "echo inside logStepsGroovy")
                    }
                }   
                runLinuxScript(scriptName: "app_checker.sh")

            }
        }
        stage('Checkout'){
            steps {
                sh(label: 'lint', script: '''
                    pwd
                    ls -la ../
                    hostname
                    whoami
                    sleep 1m
                ''')
            }
        }
    }
    post {
        always {
            archiveArtifacts artifacts: 'logGroovyFile.log', fingerprint: true
        }
    }
}
