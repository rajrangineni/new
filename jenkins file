node {
    def mvnHome
    stage('clone') { 
    git branch: 'main', url: 'https://github.com/rajrangineni/dev.git'
      
    }
    stage('init') {

        sh 'terraform init'
            
    }
    stage('plan') {
      
       sh 'terraform plan'
            
    }
     stage('apply') {
        
       sh 'terraform apply -auto-approve'
            }
       
    
}
