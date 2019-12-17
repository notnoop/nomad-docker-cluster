Setup docker test cluster in docker

To start run:

```
./setup.sh
docker-compose up -d
```


To check that nomad client is connected run the following:

```
# check overall container status
docker-compose ps

# server view
docker-compose exec nomad-server-01 nomad node status
docker-compose exec nomad-server-01 nomad server members

# client view
docker-compose exec nomad-client-01 nomad node status
docker-compose exec nomad-client-01 nomad server members
```
