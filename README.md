### goapp

* sudo docker build -f Dockerfile -t goapp:ver1 .

* sudo docker images
* docker inspect 97e2228b5a95

* docker run -dit goapp:ver1
bac802c31c43c05ffea0e3cc880baaed71f90e07fb310a9beb8847bda36faec5

* docker exec -it ef8895efde4d uname -a
Linux ef8895efde4d 4.15.0-45-generic #48-Ubuntu SMP Tue Jan 29 16:28:13 UTC 2019 x86_64 x86_64 x86_64 GNU/Linux

* docker exec -it ef8895efde4d bash
> $ex

* docker logs bac802c31c43

* docker system prune -a

* docker stats
* docker stop bac802c31c43
bac802c31c43

* docker rm
* docker rmi

### push new image
* docker login

* docker tag local-image:tagname new-repo:tagname # docker tag goapp:v1.23 tty8747/goapp:v1.23

* docker push new-repo:tagname # docker push tty8747/goapp:v1.23
