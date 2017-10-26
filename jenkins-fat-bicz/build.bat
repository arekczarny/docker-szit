set BUILD_NUMBER="0.0.1"
echo Building Jenkins fat bicz docker image czarny/jenkins-fat-bicz:%BUILD_NUMBER%

docker build --no-cache -t czarny/jenkins-fat-bicz:%BUILD_NUMBER% .

echo Jenkins fat bicz docker image czarny/jenkins-fat-bicz:%BUILD_NUMBER% DONE...