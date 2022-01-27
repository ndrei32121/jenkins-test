pipeline {
    agent { label "test"}

    stages {
        stage('Build') {
            steps {
                // git branch: 'main', url: 'https://github.com/and-blk/jenkins-test.git'
                sh '''
                    sudo sh system_tests/soft_test.sh docker
                    sudo sh system_tests/soft_test.sh mkdir
                    sudo sh system_tests/soft_test.sh docker-compose
                    sudo sh build/build.sh
                '''
            }
        }
    }
}
