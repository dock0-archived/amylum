dock0/amylum
=======

[![Automated Build](http://img.shields.io/badge/automated-build-green.svg)](https://hub.docker.com/r/dock0/amylum/)
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
RACK_ENV=production
PORT=80
EOF
docker pull dock0/amylum
docker run -d -p 80:80 --env-file=env_file dock0/amylum
```

If you want to use SSL, add "SSL_DIR=/opt/ssl" to the env file, swap 80 for 443 in the docker command and env file, and add "-v /path/to/your/ssl/files:/opt/ssl" to the docker command. The expected SSL files are "cert" and "key", contents as described.

## License

This repo is released under the MIT License. See the bundled LICENSE file for details.

