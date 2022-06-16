def gv
pipeline {

    agent any
    parameters{
		 choice(name:'VERSION',choices:['1.1','1.2'],description:'')
		 booleanParam(name:'testExecution',defaultValue:true ,description:'')
		 
	 }
    stages {
	  stage("init"){
          steps {
               script{
			gv = load "script.groovy" 
		}
            }
        }
        stage("build"){
            steps {
                echo 'building the application...'
            }
        }
        
    stage("test"){
         when {
		expression{ 
		params.testExecution==true
				}
	 }
            steps {
		    script{
			    gv.buildApp()
		    }
            }
        }
        
    stage("deploy"){
            steps {
                echo 'deploying the application...'
                echo "deploying the application ${params.VERSION}"
            }
        }
    }
}
