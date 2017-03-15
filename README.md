# Docker container for running PRADS

## Running the container

You can simply run the container by pulling in the image.

```bash
docker pull kbavishi/prads
docker run -i -d --publish 5000:5000 --name=prads kbavishi/prads /bin/bash
```

NOTE - This does not start PRADS, but only builds it. In order to start PRADS after this, you need to run:
```bash
docker exec -it prads prads/src/prads -i <container_intf>
```
You can then replay traffic to `<DUT-IP>:5000` so that PRADS can sniff it.

## Building the container

Alternatively, you can build the container yourself by following these steps:
```bash
git clone https://github.com/kbavishi/docker_prads.git
cd prads
make
```

This will generate an image with the tag `kbavishi/prads`. 

## Credits

1. PRADS - [Link](https://github.com/gamelinux/prads)

