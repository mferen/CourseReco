node {
     stage('Build & Push Image Backend') {
        withCredentials([usernamePassword(credentialsId: 'dockercred', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]) {
          sh "docker login -u=$USERNAME -p=$PASSWORD"
        } 
      
	sh "docker build -t mferen03/reco.py:1.0.0 ."
	sh "docker push mferen03/reco.py:1.0.0"

    }
    stage (Run Container){
	
	sh "docker run -name recoapp -d -p 8501:8501 mferen03/reco.py:1.0.0"
	
    }  		


}

