#Login to ACR
docker login {server} -u {userName} -p {password}
#Tag image
docker tag nginx  {server}/nginx
#push image to ACR
docker push {server}/nginx