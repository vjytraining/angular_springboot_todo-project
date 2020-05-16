node {
   stage('init') {
      checkout scm
    }
    stage('build') {
       sh '''
          mvn clean package
        '''
    }
    stage('Build image') {
       app = docker.build("deeksharai668/todotest1") 
    }

     stage('push image') {
        docker.withRegistry('https://registry.hub.docker.com', 'DOCKERHUB DEEKSHA') {
            app.push("latest")
         }
            echo "trying to docker image to docker hub"
     }
   
}

