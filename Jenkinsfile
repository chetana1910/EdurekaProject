pipeline{
    
    tools{
        maven 'mymaven'
    }
    
    agent any
    
    stages{
        
        stage ('Compile the code') {
            
            steps{
                
                git 'https://github.com/Sonal0409/DevOpsCodeDemo.git'
                sh 'mvn compile'
                
            }
            
        }
        
      stage('Build the code'){
          steps{
              git 'https://github.com/Sonal0409/DevOpsCodeDemo.git'
              sh 'mvn clean package'
          }
      }
      
      stage('Deploy Code'){
          steps{
               git branch: 'master', url: 'https://github.com/chetana1910/EdurekaProject.git'
              ansiblePlaybook credentialsId: 'Ansiblehost', disableHostKeyChecking: true, installation: 'myansible', inventory: 'server.inv', playbook: 'playbook.yml'
          }
      }
    }
}
