# docker-s3fs

## Usage

```
docker run -d -e S3_IDENTITY=SOMEIDENTITY -e S3_CREDENTIAL="SOMECRED" -e S3_BUCKET=SOMEBUCKET --device /dev/fuse --name=s3fs --cap-add SYS_ADMIN grahamgilbert/s3fs
```
