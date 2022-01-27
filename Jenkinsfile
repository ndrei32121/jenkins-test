pipeline {
    agent { label "test"}

    stages {
        stage('Clone') {
            steps {
                // git branch: 'main', url: 'https://github.com/and-blk/jenkins-test.git'
                sh '''
                    sudo chmod +x system_tests/sofr_test.sh
                    sudo system_tests/sofr_test.sh docker
                    sudo system_tests/sofr_test.sh mkdir
                    sudo system_tests/sofr_test.sh docker-compose


                '''
            }
        }
    }
}
