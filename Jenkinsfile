pipeline {
    agent any

    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    // This builds your Docker image from the Dockerfile
                    sh 'docker build -t my-node-image .'
                }
            }
        }
        stage('Run Docker Container') {
            steps {
                script {
                    // Stop and remove any old container with the same name
                    sh 'docker stop my-app-container || true'
                    sh 'docker rm my-app-container || true'

                    // Run the new image as a container
                    // -d = detached (background)
                    // -p 80:8080 = map port 80 (public) to the app's port 8080
                    sh 'docker run -d -p 80:8080 --name my-app-container my-node-image'
                }
            }
        }
    }
}