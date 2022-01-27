pipeline {
    agent { label "test"}

    stages {
        stage('Build') {
            steps {
                // git branch: 'main', url: 'https://github.com/and-blk/jenkins-test.git'
                sh '''
                    sudo chmod +x system_tests/soft_test.sh
                    sudo system_tests/soft_test.sh docker
                    sudo system_tests/soft_test.sh mkdir
                    sudo system_tests/soft_test.sh docker-compose
                    sudo build/build.sh
                '''
            }
        }
    }
}
