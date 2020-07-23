// THIS IS GLOBAL VARIABLE DECLARATION workspace
def workspace; 
node(){
    stage('chekcout'){
        echo " =================START OF CHECKOUT STAGE================"
        checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/venkat44488/test-project.git']]])
        // ASSIGNING VALUE TO VARIABLE
        workspace=pwd()  
        //PRINTING THE VARIABLE
        echo "$workspace"  
        echo " ========END OF CHECKOUT STAGE================"
    }
    stage('build'){
        echo 'This is buld stage'
        // PRINTING THE VARIABLE IN ANOTHER STAGE.
        echo "WE CAN USE  WROKSPACE VARIABLE ANY WHERE $workspace"
        
    }
    stage('deploy')
    {
         echo "================ this is deploy stage==========="
         
    }
    stage('test')
    {
        echo "================ this is test stage end of pipeline script========"
    }
}
