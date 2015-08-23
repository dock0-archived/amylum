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
EOF
docker pull dock0/amylum
docker run -d -p 80:80 --env-file=env_file dock0/amylum
```

## License

This repo is released under the MIT License. See the bundled LICENSE file for details.

