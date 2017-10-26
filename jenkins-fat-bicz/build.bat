set BUILD_NUMBER="0.0.2"
echo Building Jenkins fat bicz docker image czarny/jenkins-fat-bicz:%BUILD_NUMBER%

docker build -t czarny/jenkins-fat-bicz:%BUILD_NUMBER% .

echo Jenkins fat bicz docker image czarny/jenkins-fat-bicz:%BUILD_NUMBER% DONE...