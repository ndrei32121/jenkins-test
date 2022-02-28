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
            when {
                expression { params.build_image == "yes" }
            }
            steps {
                logStepsGroovy("build is ongoing") {
                    checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/ndrei32121/jenkins-test.git']]])
                    sh(script: "docker build -t test_image:${params.image_version} images/")
                }
                logStepsGroovy("appchecker sh running") {
                    runLinuxScript(scriptName: "app_checker.sh")
                }

            }
        }
        stage('Checkout'){
            steps {
                logStepsGroovy("some test commands are running") {
                    sh(label: 'lint', script: '''
                        pwd
                        ls -la ../
                        hostname
                        whoami
                        
                    ''')
                }
            }
        }
    }
    post {
        always {
            archiveArtifacts artifacts: 'logGroovyFile.log', fingerprint: true
        }
    }
}
