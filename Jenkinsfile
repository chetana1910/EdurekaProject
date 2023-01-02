pipeline{
    
    tools{
        maven 'mymaven'
    }
    
    agent any
    
    stages{
        
      stage('Build the code'){
          steps{
              git 'https://github.com/chetana1910/DevOpsCodeDemo.git'
              sh 'mvn clean package'
          }
      }
      
      stage('Deploy Code'){
          steps{
               git branch: 'main', url: 'https://github.com/chetana1910/EdurekaProject.git'
              ansiblePlaybook credentialsId: 'ansiblehost', disableHostKeyChecking: true, installation: 'myansible', inventory: 'server.inv', playbook: 'playbook.yml'
          }
      }
    }
}
