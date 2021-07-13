docker network create homework_fadeev_network

docker build -f Dockerfile.server -t alpine_nc_server .
docker build -f Dockerfile.client -t alpine_nc_client .

docker run -d --name=alpine_server --network=homework_fadeev_network --hostname=servak  alpine_nc_server
docker run -d --name=alpine_client --network=homework_fadeev_network alpine_nc_client /client.sh
