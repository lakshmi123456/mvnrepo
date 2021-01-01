node {
    def app   
    stage ('scm checkout'){
        git credentialsId: 'b3204c65-c12b-4a5c-bf9c-de4644e2daa7', url: 'https://github.com/lakshmi123456/mvnrepo.git'
        
        
    }
    
    stage ('mvn install package'){
        sh label: '', script: 'mvn clean install package'
    }

    stage('Build image') {         
         app = docker.build("sainathreddy/testexperiment")    
    }     
    
}
