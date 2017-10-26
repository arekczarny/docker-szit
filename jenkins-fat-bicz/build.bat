set BUILD_NUMBER="0.0.1"
echo Building Jenkins fat bicz docker image czarny/jenkins-fat-bicz:%BUILD_NUMBER%

docker build -t czarny/fat_jenkins:%BUILD_NUMBER% .

echo Jenkins++ docker image czarny/jenkins++:%BUILD_NUMBER% DONE...