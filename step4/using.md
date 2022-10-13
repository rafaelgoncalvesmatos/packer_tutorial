# Multi build

```shell
--> learn-packer.docker.ubuntu: Imported Docker image: sha256:1d018a2f8b960fc41cfb84406555f5fb448d6eb602af9d742cad16dcf8ed5550
╭─ 🤓   /tmp/packer_tutorial/step5  on    main !1                                                                                                                                                        ✔  took 5s   2.20    1.67G   at 12:08:23    100%  
╰─ packer build . 
learn-packer.docker.ubuntu: output will be in this color.
learn-packer.docker.ubuntu-bionic: output will be in this color.
learn-packer.docker.ubuntu-groovy: output will be in this color.

==> learn-packer.docker.ubuntu-groovy: Creating a temporary directory for sharing data...
==> learn-packer.docker.ubuntu: Creating a temporary directory for sharing data...
==> learn-packer.docker.ubuntu-bionic: Creating a temporary directory for sharing data...
==> learn-packer.docker.ubuntu: Pulling Docker image: ubuntu:bionic
==> learn-packer.docker.ubuntu-bionic: Pulling Docker image: ubuntu:xenial
==> learn-packer.docker.ubuntu-groovy: Pulling Docker image: ubuntu:groovy
    learn-packer.docker.ubuntu-bionic: xenial: Pulling from library/ubuntu
    learn-packer.docker.ubuntu-bionic: Digest: sha256:91bd29a464fdabfcf44e29e1f2a5f213c6dfa750b6290e40dd6998ac79da3c41
    learn-packer.docker.ubuntu-bionic: Status: Image is up to date for ubuntu:xenial
    learn-packer.docker.ubuntu-bionic: docker.io/library/ubuntu:xenial
==> learn-packer.docker.ubuntu-bionic: Starting docker container...
    learn-packer.docker.ubuntu-bionic: Run command: docker run -v /home/rafael/.config/packer/tmp3927270568:/packer-files -d -i -t --entrypoint=/bin/sh -- ubuntu:xenial
    learn-packer.docker.ubuntu: bionic: Pulling from library/ubuntu
    learn-packer.docker.ubuntu: Digest: sha256:40b84b75884ff39e4cac4bf62cb9678227b1fbf9dbe3f67ef2a6b073aa4bb529
    learn-packer.docker.ubuntu: Status: Image is up to date for ubuntu:bionic
    learn-packer.docker.ubuntu: docker.io/library/ubuntu:bionic
==> learn-packer.docker.ubuntu: Starting docker container...
    learn-packer.docker.ubuntu: Run command: docker run -v /home/rafael/.config/packer/tmp912892353:/packer-files -d -i -t --entrypoint=/bin/sh -- ubuntu:bionic
    learn-packer.docker.ubuntu-groovy: groovy: Pulling from library/ubuntu
    learn-packer.docker.ubuntu-bionic: Container ID: fc606d4676a5bdd6b3af0292bc73a3f855f105eea9c034ab97df6e9507083785
    learn-packer.docker.ubuntu: Container ID: 2b5d7e1afa9ad496a1a77df3687545a8314aba1e9f92d0a7edf656f691840253
==> learn-packer.docker.ubuntu-bionic: Using docker communicator to connect: 172.17.0.2
==> learn-packer.docker.ubuntu: Using docker communicator to connect: 172.17.0.3
==> learn-packer.docker.ubuntu-bionic: Provisioning with shell script: /tmp/packer-shell1713937300
==> learn-packer.docker.ubuntu: Provisioning with shell script: /tmp/packer-shell1391373428
    learn-packer.docker.ubuntu: Adding file on ubuntu docker image
    learn-packer.docker.ubuntu-bionic: Adding file on ubuntu docker image
==> learn-packer.docker.ubuntu-bionic: Provisioning with shell script: /tmp/packer-shell4118558898
==> learn-packer.docker.ubuntu: Provisioning with shell script: /tmp/packer-shell1122688591
    learn-packer.docker.ubuntu: Running ubuntu Docker image.
    learn-packer.docker.ubuntu-bionic: Running ubuntu Docker image.
    learn-packer.docker.ubuntu-groovy: 32f3531c8415: Pulling fs layer
==> learn-packer.docker.ubuntu-bionic: Committing the container
==> learn-packer.docker.ubuntu: Committing the container
    learn-packer.docker.ubuntu: Image ID: sha256:de852926be475c09417f7dd57c3fdc9a235b3781476402ff90436e9dd9421f39
==> learn-packer.docker.ubuntu: Killing the container: 2b5d7e1afa9ad496a1a77df3687545a8314aba1e9f92d0a7edf656f691840253
    learn-packer.docker.ubuntu-bionic: Image ID: sha256:2385abd2b5a64fa5c2cea2f1df81f4420efcea799f00351fb0f63d2d5d424bea
==> learn-packer.docker.ubuntu-bionic: Killing the container: fc606d4676a5bdd6b3af0292bc73a3f855f105eea9c034ab97df6e9507083785
Build 'learn-packer.docker.ubuntu' finished after 4 seconds 917 milliseconds.
Build 'learn-packer.docker.ubuntu-bionic' finished after 4 seconds 963 milliseconds.
    learn-packer.docker.ubuntu-groovy: 32f3531c8415: Verifying Checksum
    learn-packer.docker.ubuntu-groovy: 32f3531c8415: Download complete
    learn-packer.docker.ubuntu-groovy: 32f3531c8415: Pull complete
    learn-packer.docker.ubuntu-groovy: Digest: sha256:a7b08558af07bcccca994b01e1c84f1d14a2156e0099fcf7fcf73f52d082791e
    learn-packer.docker.ubuntu-groovy: Status: Downloaded newer image for ubuntu:groovy
    learn-packer.docker.ubuntu-groovy: docker.io/library/ubuntu:groovy
==> learn-packer.docker.ubuntu-groovy: Starting docker container...
    learn-packer.docker.ubuntu-groovy: Run command: docker run -v /home/rafael/.config/packer/tmp3489372629:/packer-files -d -i -t --entrypoint=/bin/sh -- ubuntu:groovy
    learn-packer.docker.ubuntu-groovy: Container ID: f663dd68f4d2e5350115c1a8228993c1844f34e404b2754a77bca88d66036f70
==> learn-packer.docker.ubuntu-groovy: Using docker communicator to connect: 172.17.0.2
==> learn-packer.docker.ubuntu-groovy: Provisioning with shell script: /tmp/packer-shell3110787375
    learn-packer.docker.ubuntu-groovy: Adding file on ubuntu docker image
==> learn-packer.docker.ubuntu-groovy: Provisioning with shell script: /tmp/packer-shell1771792950
    learn-packer.docker.ubuntu-groovy: Running ubuntu Docker image.
==> learn-packer.docker.ubuntu-groovy: Committing the container
    learn-packer.docker.ubuntu-groovy: Image ID: sha256:1d0cb6733c642071d404dc2f34517e3b68adb2703dc7d5dd45f1fa96e5a49ec4
==> learn-packer.docker.ubuntu-groovy: Killing the container: f663dd68f4d2e5350115c1a8228993c1844f34e404b2754a77bca88d66036f70
Build 'learn-packer.docker.ubuntu-groovy' finished after 11 seconds 683 milliseconds.

==> Wait completed after 11 seconds 683 milliseconds

==> Builds finished. The artifacts of successful builds are:
--> learn-packer.docker.ubuntu: Imported Docker image: sha256:de852926be475c09417f7dd57c3fdc9a235b3781476402ff90436e9dd9421f39
--> learn-packer.docker.ubuntu-bionic: Imported Docker image: sha256:2385abd2b5a64fa5c2cea2f1df81f4420efcea799f00351fb0f63d2d5d424bea
--> learn-packer.docker.ubuntu-groovy: Imported Docker image: sha256:1d0cb6733c642071d404dc2f34517e3b68adb2703dc7d5dd45f1fa96e5a49ec4
╭─ 🤓   /tmp/packer_tutorial/step5  on    main !1                                                                                     

╭─ 🤓   /tmp/packer_tutorial/step5  on    main !1                                                                                                                                                                    ✔  1.37    5.02G   at 12:37:16    100%  
╰─ docker images 
REPOSITORY   TAG       IMAGE ID       CREATED             SIZE
<none>       <none>    1d0cb6733c64   31 seconds ago      79.4MB
<none>       <none>    de852926be47   38 seconds ago      63.1MB
<none>       <none>    2385abd2b5a6   38 seconds ago      135MB
<none>       <none>    4fdf0ab7a07c   29 minutes ago      135MB
<none>       <none>    1d018a2f8b96   29 minutes ago      63.1MB
<none>       <none>    c5f0f17233df   29 minutes ago      63.1MB
<none>       <none>    ac7173e042af   29 minutes ago      135MB
<none>       <none>    dc7c312f23cf   32 minutes ago      135MB
<none>       <none>    bbd299ce4dc6   32 minutes ago      63.1MB
<none>       <none>    105035c1aaa3   About an hour ago   135MB
<none>       <none>    13d1dc00b323   About an hour ago   63.1MB
<none>       <none>    e1a516e30ea6   About an hour ago   135MB
<none>       <none>    b821f2035b8f   About an hour ago   135MB
<none>       <none>    94b2e7183095   About an hour ago   135MB
<none>       <none>    bb7e9a1f9463   About an hour ago   135MB
<none>       <none>    64a9f7c7cae3   2 hours ago         135MB
ubuntu       bionic    71cb16d32be4   8 days ago          63.1MB
debian       buster    249addecdc86   4 weeks ago         114MB
alpine       latest    d7d3d98c851f   2 months ago        5.53MB
ubuntu       xenial    b6f507652425   13 months ago       135MB
ubuntu       groovy    e508bd6d694e   14 months ago       79.4MB
```