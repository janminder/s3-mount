# docker-s3fs

This is a container that will expose an Amazon S3 bucket as a volume. It is intended to be used as a replacement for a data container.

## Usage

```
docker run -d -e S3_IDENTITY=SOMEIDENTITY -e S3_CREDENTIAL="SOMECRED" -e S3_BUCKET=SOMEBUCKET --device /dev/fuse --name=s3fs --cap-add SYS_ADMIN grahamgilbert/s3fs
```

Exposing a different directory for your data:

```
docker run -d -e S3_IDENTITY=SOMEIDENTITY -e S3_CREDENTIAL="SOMECRED" -e S3_BUCKET=SOMEBUCKET -e S3_LOCATION = "/usr/local/mydata" -v /usr/local/mydata --device /dev/fuse --name=s3fs --cap-add SYS_ADMIN grahamgilbert/s3fs
```
