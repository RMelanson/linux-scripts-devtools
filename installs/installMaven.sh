currDir=$PWD
mkdir $M2_HOME
cd $M2_HOME
echo installMaven EXECUTING: wget $mvnURL
wget $mvnURL
echo installMaven EXECUTING: tar -xvzf $mvnZippedFile
tar -xvzf $mvnVersion
echo "M2_HOME=$M2_HOME" >  $mvn_CI_EnvFile
echo "M2=$M2" >>  $mvn_CI_EnvFile
echo "PATH=$PATH:
echo ". $mvn_CI_EnvFile" >> /etc/bashrc

cd $currDir
