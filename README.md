**Inactive Project:** I've stopped using this project in favor of deploying this via Heroku and AWS

dock0/amylum
=======

[![Automated Build](https://img.shields.io/docker/build/dock0/amylum.svg)](https://hub.docker.com/r/dock0/amylum/)
[![Build Status](https://img.shields.io/circleci/project/dock0/amylum/master.svg)](https://circleci.com/gh/dock0/amylum)
[![MIT Licensed](http://img.shields.io/badge/license-MIT-green.svg)](https://tldrlegal.com/license/mit-license)

Container for [my Arch package repo](https://github.com/amylum/server).

## Usage

```
cat > env_file <<EOF
AWS_ACCESS_KEY_ID=your-access-key
AWS_SECRET_ACCESS_KEY=your-secret-key
AWS_REGION=your-region
S3_BUCKET=your-bucket-name
MAINTAINER_EMAIL=you@example.org
HTTP_PORT=80
EOF
docker pull dock0/amylum
docker run -d -p 80:80 --env-file=env_file dock0/amylum
```

If you want to use SSL, add "SSL_DIR=/opt/ssl" to the env file, add "-v /path/to/your/ssl/files:/opt/ssl" to the docker command, and set HTTPS_PORT as desired in the env_file. The expected SSL files are "cert" and "key", contents as described.

## License

This repo is released under the MIT License. See the bundled LICENSE file for details.

