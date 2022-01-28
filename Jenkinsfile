pipeline {
    agent {
        docker { image 'python:3.8.0' }
    }

    stages {
        stage('Build') {
            steps {
                
                // git branch: 'main', url: 'https://github.com/and-blk/jenkins-test.git'
                sh """
                    cat /etc/*release*
                    python --version
                    // sudo bash system_tests/soft_test.sh docker
                    // sudo bash system_tests/soft_test.sh mkdir
                    // sudo bash system_tests/soft_test.sh docker-compose
                    // echo ${currentBuild.number}
                    // sudo bash build/build.sh ${currentBuild.number}
                """
            }
        }
    }
}
