pipeline {
    agent any

    stages {
        stage('Create Directory') {
            steps {
                script {
                    try {
                        sh 'mkdir -p /home/testuser/mydirpipe'
                        echo " Directory created successfully"
                    } catch (Exception e) {
                        error(" Failed to create directory")
                    }
                }
            }
        }

        stage('Create File') {
            steps {
                script {
                    try {
                        sh 'echo "This file was created by Jenkins" > /home/testuser/mydirpipe/myfile.txt'
                        echo " File created successfully"
                    } catch (Exception e) {
                        error(" Failed to create file")
                    }
                }
            }
        }

        stage('Change File Permissions') {
            steps {
                script {
                    try {
                        sh 'chmod 644 /home/testuser/mydirpipe/myfile.txt'
                        echo " File permissions changed successfully"
                    } catch (Exception e) {
                        error(" Failed to change file permissions")
                    }
                }
            }
        }
    }

    post {
        success {
            echo " Pipeline completed successfully — directory, file, and permissions set."
        }
        failure {
            echo " Pipeline failed — check logs for details."
        }
    }
}
