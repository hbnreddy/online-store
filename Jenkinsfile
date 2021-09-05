pipeline{
    agent any
    triggers {
  pollSCM '* * * * *'
      }

    stages{
        stage("checkout_scm"){
            steps{
                checkout([$class: 'GitSCM', 
                branches: [[name: '*/master']], 
                extensions: [],
                userRemoteConfigs: [[url: 'https://github.com/hbnreddy/online-store.git']]])
            }
        }
        stage("build"){
            steps{
                sh 'mvn clean package'
            }
        }
        stage("deploymentwithAnsible"){
            steps{
            sh 'ansible-playbook sample.yml'
            }
        }
    }
}
