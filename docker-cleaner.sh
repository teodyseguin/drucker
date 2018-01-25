#!/bin/sh

# Delete 'exited' containers
docker rm -v $(docker ps -a -q -f status=exited)

# Delete 'dangling' images (If there are no images you will get a docker: "rmi" requires a minimum of 1 argument)
docker rmi $(docker images -f "dangling=true" -q)

# Delete 'dangling' volumes (If there are no images you will get a docker: "volume rm" requires a minimum of 1 argument)
docker volume rm $(docker volume ls -qf dangling=true)
