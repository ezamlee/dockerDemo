docker build . -t ezzamlee/dockerdemo:app_v1.4

docker network create  test

docker run --rm -d -p 27017:27017 --network test --name mongo 

docker logs mongo

docker run --network test --rm -d --name back -p 3000:3000 -e "NODE_ENV=production" -e "MONGODB_URI=mongodb://mongo:27017/conduit" -e "SECRET=secret"   ezzamlee/dockerdemo:app_v1.4