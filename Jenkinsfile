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
       app = docker.build("deeksharai668/imageTodo") 
    }

     stage('push image') {
        docker.withRegistry('https://registry.hub.docker.com', 'DOCKERDEEKSHA') {
            app.push("latest")
         }
            echo "trying to docker image to docker hub"
     }
   
}

