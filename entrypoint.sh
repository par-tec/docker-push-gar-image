#!/bin/sh -l

IMAGE="$INPUT_GAR_HOSTNAME/$INPUT_GAR_PROJECT/$INPUT_IMAGE_NAME:$INPUT_IMAGE_TAG"

echo $INPUT_GAR_SERVICE_ACCOUNT | docker login -u _json_key --password-stdin https://$INPUT_GAR_HOSTNAME

docker build -t $IMAGE $INPUT_DOCKER_CONTEXT

docker push $IMAGE

if [[ "$INPUT_TAG_LATEST_VERSION" != "false" && "$INPUT_IMAGE_TAG" != "latest" ]] ; then
    latest_image="$(echo $IMAGE | cut -d ':' -f1):latest"
    docker tag $IMAGE $latest_image
    docker push $latest_image
fi
