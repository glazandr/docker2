pipeline {
    agent {
        docker { image 'hello-world' }
    }
    stages {
        stage('Test1') {
            steps {
                docker ps
            }
        }

    }
}
