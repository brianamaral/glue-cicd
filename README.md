# A healthier workflow for using AWS Glue jobs

This repo consistis in my ideal workflow for overcoming some problems that AWS Glue jobs have, and It's an overhaul quality of life modifications that I use for working with this service.

## Workflow 
![alt text](extras/layout.png)

### The workflow consists in the following steps

* Write your aws glue job as a notebook on a local pyspark/jupyter container
* Push your changes or new notebook with some yml configs that will be used by [serverless](https://www.serverless.com/) on your github repo
* The push will trigger your CICD pipeline (AWS CodePipeline, Github Actions, Jenkins)
* In your pipeline, you will have to convert your notebook into python scripts, install the serverless framework and run the "serverless deploy" command.

