pipeline {
    agent any

    stages {
        stage('Develop') {
            steps {
                echo 'Developing'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing'
            }
        }
        stage('Release') {
            steps {
         sh '''#!/bin/bash
               flutter build apk --debug 
         '''
    }
        }
    }
}
