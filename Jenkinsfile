
pipeline{
    tools{
       
        maven 'mymaven'
    }
	agent any
      stages{
           stage('Checkout'){
	    
               steps{
		 echo 'cloning'
                 git 'https://github.com/chetana1910/DevOpsClassCodes.git'
              }
          }
          stage('Compile'){
             
              steps{
                  echo 'complie the code..'
                  sh 'mvn compile'
	      }
          }
          stage('CodeReview'){
		  
              steps{
		    
		  echo 'codeReview'
                  sh 'mvn pmd:pmd'
              }
          }
           stage('UnitTest'){
		  
              steps{
	         
                  sh 'mvn test'
              }
          
          }
        
          stage('Package'){
		  
              steps{
		  
                  sh 'mvn clean package'
              }
          }
	  
	      stage ('Deploy') {
	      steps{
		      
		     ansiblePlaybook credentialsId: 'Ansiblehost', disableHostKeyChecking: true, installation: 'myansible', inventory: 'server.inv', playbook: 'playbook.yml'
	
	      }
	   }	      
      }
}
