pipeline {
    agent {
        docker { image 'hello-world' }
    }
    stages {
        stage('Test1') {
            steps {
                echo 'ok'
            }
        }
        stage('Test2') {
            steps {
                docker run hello-world
            }
        }
    }
}
