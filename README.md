# Docker container for running PRADS

## Running the container

You can simply run the container by pulling in the image.

```bash
docker pull kbavishi/prads
docker run -i -d --publish 5000:5000 --name=prads kbavishi/prads /bin/bash
```

NOTE - This does not start PRADS, but only builds it. The reason for doing this is that you may want to run your Docker container with `--net=none` and attach a virtual interface later (eg. through [BESS](https://github.com/NetSys/bess/wiki/Hooking-up-BESS-Ports#connecting-vms-and-containers-with-bess-vports)). In this case, we don't know the interface on which PRADS would run.

In order to start PRADS after this, you need to run:
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

