pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh """

		     python3 -m venv devops 
		     source devops/bin/activate
		     pip install flask
		     pip install flask-cors
		     python3 main.py --host=0.0.0.0 &
		    echo "Backend rodando."		    

		"""
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
