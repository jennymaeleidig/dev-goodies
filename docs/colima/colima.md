## Installing Colima and Docker

1. Install colima: `brew install colima`
2. Install docker: `brew install docker`
3. Add the following to your terminal profile:

```env
#expose docker to colima
export DOCKER_HOST="unix://$HOME/.colima/docker.sock"
```

4. Install docker-compose: `brew install docker-compose`
5. Then configure docker-compose as a Docker plugin so you can use docker compose as a command instead of the legacy docker-compose script. First, create a folder in your home directory to hold Docker CLI plugins:

```bash
mkdir -p ~/.docker/cli-plugins
```

6. Then create a symlink between docker-compose and the newly created plugins folder:

```bash
ln -sfn $(brew --prefix)/opt/docker-compose/bin/docker-compose ~/.docker/cli-plugins/docker-compose
```

7. Run docker-compose: `docker compose`
8. Ensure the output looks like the following:

```console
Usage:  docker compose [OPTIONS
] COMMAND

Docker Compose

Options:
      --ansi string                Control when to print ANSI control characters ("never"|"always"|"auto") (default "auto")
      --compatibility              Run compose in backward compatibility mode
      --env-file string            Specify an alternate environment file.

...
  version     Show the Docker Compose version information

Run 'docker compose COMMAND --help' for more information on a command.
```

### Steps 9,

10 and 11 are optional 9. You’ll also need Buildx to build some Docker containers. This is installed with Docker Engine on macOS, but you can install this with Homebrew: `brew install docker-Buildx` 10. Once downloaded, symlink it to the cli-plugins folder:

```bash
ln -sfn $(brew --prefix)/opt/docker-buildx/bin/docker-buildx ~/.docker/cli-plugins/docker-buildx
```

11. Install additional guest agent binaries: `brew install lima-additional-guestagents`

## Setting Up Colima

1. Run colima `colima start`
2. Colima will likely get stuck at the following output or similar see: "[Colima unable to start](https://github.com/abiosoft/colima/issues/871)":

```
[hostagent
] Waiting for the essential requirement 3 of 5: "sshfs binary to be installed"
```

3. To resolve, you must manually install the sshfs binary in the colima vm via the following command. Enter the command from another terminal once you are stuck at the message from Step 2 above. See [this
   ](https: //github.com/abiosoft/colima/issues/871#issuecomment-1813431845) comment.

```bash
colima ssh -- sh -c "sudo apt-get update && sudo apt-get install -y -o Dpkg::Options::=--force-confdef -o Dpkg::Options::=--force-confnew sshfs"
```

4. Once colima is up at running, we will need to give docker access behind the proxy. To do so, first ssh in to the VM: `colima ssh`
5. Following the steps in [this
   ](https: //github.com/abiosoft/colima/issues/294#issuecomment-1131440640) post, first install a text editor in the VM. Example: `sudo apt-get install vim`
6. Next, edit the docker init script `sudo vi /etc/init.d/docker` by appending the following:

```bash
set -o allexport
if [ -f /etc/environment
]; then source /etc/environment; fi
set +o allexport
```

7. Stop colima via: `colima stop`

### Config Changes

1. Additionally, we will need to increase some of the default resource provisionings. In this same `$HOME/.colima/default/colima.yaml`, add or replace the following:

```yaml
cpu: 4
...
memory: 6
```

2. Alternatively, you can start colima with the following command to give it the required resources:

```bash
colima start --cpu 4 --memory 6
```

3. Start colima:

```sh
colima start
```

4. Colima should be ready to use!
