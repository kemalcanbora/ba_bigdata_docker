[![Gitter chat](https://badges.gitter.im/gitterHQ/gitter.png)](https://gitter.im/big-data-europe/docker-hadoop-spark-workbench)

# How to use HDFS/Spark Workbench

To start an HDFS/Spark Workbench:
```
    docker-compose up -d
```
 
## Interfaces

* Namenode: http://localhost:50070
* Datanode: http://localhost:50075
* Spark-master: http://localhost:8080
* Spark-notebook: http://localhost:9001
* PySpark-notebook: http://localhost:8888
* Hue (HDFS Filebrowser): http://localhost:8088/home

## Important

When opening Hue, you might encounter ```NoReverseMatch: u'about' is not a registered namespace``` error after login. I disabled 'about' page (which is default one), because it caused docker container to hang. To access Hue when you have such an error, you need to append /home to your URI: ```http://docker-host-ip:8088/home```
 
## Jupyter Token Solution
Step by step;

 * Find spark-notebook docker id  > ```docker-compose ps```
 * Exec in > ```docker exec -it <NOTEBOOK-DOCKER-ID> sh```
 * Run it > ```jupyter notebook list```
 * Click URL that's all 

## Count Example for Spark Notebooks
```
val spark = SparkSession
  .builder()
  .appName("Simple Count Example")
  .getOrCreate()

val tf = spark.read.textFile("/data.csv")
tf.count()
```

## Maintainer
* Kemalcan Bora @Bilgeadam

Note: this repository was a part of BDE H2020 EU project and no longer actively maintained by the project participants. If you want to see original files you can check  
https://github.com/big-data-europe/docker-hadoop-spark-workbench