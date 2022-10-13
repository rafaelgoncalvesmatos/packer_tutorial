### Usando

```shell
docker-ubuntu2.pkr.hcl  example.pkrvars.hcl
╭─ 🤓   /tmp/packer_tutorial/step4  on    main ?1    ✔  1.39    4.67G   at 11:30:01    100%  
╰─ packer --var-file=example.pkrvars.hcl docker-ubuntu2.pkr.hcl 
Usage: packer [--version] [--help] <command> [<args>]

Available commands are:
    build           build image(s) from template
    console         creates a console for testing variable interpolation
    fix             fixes templates from old versions of packer
    fmt             Rewrites HCL2 config files to canonical format
    hcl2_upgrade    transform a JSON template into an HCL2 configuration
    init            Install missing plugins or upgrade plugins
    inspect         see components of a template
    plugins         Interact with Packer plugins and catalog
    validate        check that a template is valid
    version         Prints the Packer version

╭─ 🤓   /tmp/packer_tutorial/step4  on    main ?1 
╰─ packer build --var-file=example.pkrvars.hcl docker-ubuntu2.pkr.hcl
learn-packer.docker.ubuntu: output will be in this color.

==> learn-packer.docker.ubuntu: Creating a temporary directory for sharing data...
==> learn-packer.docker.ubuntu: Pulling Docker image: ubuntu:bionic
    learn-packer.docker.ubuntu: bionic: Pulling from library/ubuntu
    learn-packer.docker.ubuntu: e706e0a9f423: Pulling fs layer
    learn-packer.docker.ubuntu: e706e0a9f423: Verifying Checksum
    learn-packer.docker.ubuntu: e706e0a9f423: Download complete
    learn-packer.docker.ubuntu: e706e0a9f423: Pull complete
    learn-packer.docker.ubuntu: Digest: sha256:40b84b75884ff39e4cac4bf62cb9678227b1fbf9dbe3f67ef2a6b073aa4bb529
    learn-packer.docker.ubuntu: Status: Downloaded newer image for ubuntu:bionic
    learn-packer.docker.ubuntu: docker.io/library/ubuntu:bionic
==> learn-packer.docker.ubuntu: Starting docker container...
    learn-packer.docker.ubuntu: Run command: docker run -v /home/rafael/.config/packer/tmp4235744789:/packer-files -d -i -t --entrypoint=/bin/sh -- ubuntu:bionic
    learn-packer.docker.ubuntu: Container ID: 10fa5329c9ec33d78e19fc6b243f3a3cd034dbbab1b8caac6f186aafecd6bf56
==> learn-packer.docker.ubuntu: Using docker communicator to connect: 172.17.0.2
==> learn-packer.docker.ubuntu: Provisioning with shell script: /tmp/packer-shell1679194105
    learn-packer.docker.ubuntu: Adding file I AM HERE
==> learn-packer.docker.ubuntu: Provisioning with shell script: /tmp/packer-shell1528880691
    learn-packer.docker.ubuntu: Using ubuntu:bionic with docker image
==> learn-packer.docker.ubuntu: Committing the container
    learn-packer.docker.ubuntu: Image ID: sha256:13d1dc00b32369910e62f7e9f831c25afbf15a64924e62da8975297b54e150cf
==> learn-packer.docker.ubuntu: Killing the container: 10fa5329c9ec33d78e19fc6b243f3a3cd034dbbab1b8caac6f186aafecd6bf56
Build 'learn-packer.docker.ubuntu' finished after 15 seconds 527 milliseconds.

==> Wait completed after 15 seconds 528 milliseconds

==> Builds finished. The artifacts of successful builds are:
--> learn-packer.docker.ubuntu: Imported Docker image: sha256:13d1dc00b32369910e62f7e9f831c25afbf15a64924e62da8975297b54e150cf
```

Por padrao todos os arquivos que termine como pkrvars.hcl é lido independente se passar ou nao o parametro --var-file=

```shell
╰─ packer build --var-file=example.pkrvars.hcl docker-ubuntu2.pkr.hcl
```

Outra forma tambem é passando a variavel no momento da execucao