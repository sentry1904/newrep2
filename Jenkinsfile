pipeline {
    agent any

    stages {
        stage('Create Directory') {
            steps {
                sh '''
                   sudo mkdir -p /home/administrator/newrep2/mkdir
                '''
            }
        }

        stage('Create File') {
            steps {
                sh '''
                    echo "This is a test file created by Jenkins" > /home/jenkins/mydir/myfile.txt
                '''
            }
        }

        stage('Change Permissions') {
            steps {
                sh '''
                    chmod 755 /home/administrator/newrep2/mydir
                    chmod 644 /home/administrator/newrep2/mydir/myfile.txt
                '''
            }
        }
    }

    post {
        success {
            echo ' Directory and file created successfully with proper permissions.'
        }
        failure {
            echo 'Something went wrong while creating directory or file.'
        }
    }
}

