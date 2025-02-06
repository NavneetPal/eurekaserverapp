@Library("Shared") _
pipeline {
    agent {label 'vinod'}

    stages {
        stage('Hello'){
            steps{
                script{
                    hello()
                }
            }
        }
        stage('Code') {
            steps {
                script{
                    clone('https://github.com/NavneetPal/eurekaserverapp.git','main')
                }
            }
        }
        stage('Package') {
            steps{
                script{
                    package_app()
                }
            }
        }
        stage('Build') {
            steps {
                script{
                    docker_build("eureka-jenkin-server","latest","navneetpal")
                }
            }
        }
        stage('Push to DockerHub'){
            steps{
                script{
                    docker_push("eureka-jenkin-server","latest","navneetpal")
                }
            }
        }
        stage('Deploy') {
            steps {
                script{
                    docker_compose()
                }
            }
        }
    }
}
