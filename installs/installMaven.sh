currDir=$PWD
mkdir -p $M2_HOME
cd $MVN_HOME
echo installMaven EXECUTING: wget $mvnURL
wget $mvnURL
echo installMaven EXECUTING: tar -xvzf $mvnZippedFile
tar -xvzf $mvnZippedFile
echo "M2_HOME=$M2_HOME" >  $mvn_CI_EnvFile
echo "M2=$M2" >>  $mvn_CI_EnvFile
echo "PATH=$PATH:$M2_HOME:$M2" >>  $mvn_CI_EnvFile

cd $currDir
