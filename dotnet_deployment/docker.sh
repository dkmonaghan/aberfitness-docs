echo "$ENCRYPTED_DOCKER_PASSWORD" | docker login -u "$ENCRYPTED_DOCKER_USERNAME" --password-stdin
cd YourProjectName
docker build -t sem56402018/YourProjectName:$1 -t sem56402018/YourProjectName:$TRAVIS_COMMIT .
docker push sem56402018/YourProjectName:$TRAVIS_COMMIT
docker push sem56402018/YourProjectName:$1