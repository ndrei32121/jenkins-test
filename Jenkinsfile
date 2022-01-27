pipeline {
    agent { label "test"}

    stages {
        stage('Build') {
            steps {
                // git branch: 'main', url: 'https://github.com/and-blk/jenkins-test.git'
                sh '''
                    sudo bash system_tests/soft_test.sh docker
                    sudo bash system_tests/soft_test.sh mkdir
                    sudo bash system_tests/soft_test.sh docker-compose
                    sudo bash build/build.sh
                '''
            }
        }
    }
}
