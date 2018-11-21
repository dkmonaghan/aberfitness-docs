# Deplyoing your .NET app to Aberfitness

## Encrypting Docker Hub Credentials

Docker Hub doesn't provide API tokens, so you need to encrypt your Docker Hub username/password using the Travis repo-specific public key.

To avoid infecting your machine with ruby/travis rubbish, you can do this inside a docker container:

```sh
docker run --name temptravisthing -it ubuntu
```

Inside the container, run:
```sh
apt-get update
apt-get install ruby-dev gcc libffi-dev make
gem install travis
travis encrypt -r sem5640-2018/the-name-of-your-repo ENCRYPTED_DOCKER_USERNAME="your_docker_hub_username_NOT_EMAIL_ADDRESS"
travis encrypt -r sem5640-2018/the-name-of-your-repo ENCRYPTED_DOCKER_PASSWORD="your_docker_hub_password"
exit
```

Copy the two "secure" strings and put them at the top level of your travis.yml, for example:

```
env:
    global:
    - secure: "lkjfkljgf"
    - secure: "osjfjgl"
```

Clean up your docker container

```sh
docker rm container temptravisthing
```

---

## Update your .travis.yml

Using the example in this directory, copy the `stages:` and `jobs:` section.

Change the value of the `solution:` key to match the name of your solution.

Ensure the test command is correct for running tests in your project.

Make sure you don't delete the existing slack notifications key.

---

## Copy the docker.sh script

Copy the `docker.sh` file from this directory to `/bin` in your git repo.

Update `docker.sh` and replace all instances of `YourProjectName` with the name of your project.

---

## Create your Dockerfile

Copy the example `Dockerfile` and `.dockerignore` to `/YourProjectName` in your git repo.

Update the last line of `Dockerfile` and change `placeholder.dll` to the name of your project.

---

## Commit your changes

You'll need to force-add bin/docker.sh

`git add -f bin/docker.sh`

---

## Let us know it's ready

Join `#dev-deployment` on slack and let us know that your app is ready to be deployed.