pipeline
{
    agent any

    stages 
    {
        stage('Build') 
        {
            steps 
            {
                echo 'Hello World'
            }
        }
        stage('Test') 
        {
            steps 
            {
                echo 'Hello World'
            }
        }
        stage('Deploy') 
        {
            steps 
            {
                echo 'Hello World'

            }
        }
    }

    post
    {
      
        always
        {
          emailext body: 'summery and jenkins are the basci things ', subject: 'pipeline status', to: 'sudeekshaconstructions@gmail.com'
        }
    }
}    
