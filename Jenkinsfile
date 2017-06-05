pipeline {
  agent any
  stages {
    stage('Debian Package') {
      steps {
        sh 'make package_deb'
      }
    }
  }
}