pipeline {
    agent any
    stages {
        stage('Create container') {
            steps {

                echo '============= start building image =============='
                dir ('files') {
                sh 'docker build . '
                }
                echo '============= finish building image =============='
            }
        }
    }
}
