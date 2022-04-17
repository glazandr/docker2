pipeline {
    agent {
        docker { image 'hello-world' }
    }
    stages {
        stage('Test1') {
            steps {
                MSYS_NO_PATHCONV=1
                docker ps
            }
        }

    }
}
