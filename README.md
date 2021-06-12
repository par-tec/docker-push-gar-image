# Build Docker Image and Push into Google Artifact Repository

## Inputs

### `image_name`

Docker Image Name

### `image_tag`

Docker Image Tag

### `gar_hostname`

Google Artifact Repository Hostname

### `gar_project`

Google Cloud Project ID.

### `gar_service_account`

Google Cloud Service Account Key (json format).

### `tag_latest_version`

Define if image must be tagged as latest version

## Example usage

- tag v1.0.0 and latest

    ```yaml
    uses: par-tec/docker-push-gar-image@latest
    with:
      image_name: myimage
      image_tag: v1.0.0
      gar_hostname: europe-west4-docker.pkg.dev
      gar_project: ${{ secrets.GCLOUD_PROJECT_ID }}
      gar_service_account: ${{ secrets.GCLOUD_SERVICE_KEY }}
      tag_latest_version: true
    ```

- tag latest 

    ```yaml
    uses: par-tec/docker-push-gar-image@latest
    with:
      image_name: myimage
      image_tag: latest
      gar_hostname: europe-west4-docker.pkg.dev
      gar_project: ${{ secrets.GCLOUD_PROJECT_ID }}
      gar_service_account: ${{ secrets.GCLOUD_SERVICE_KEY }}
    ```