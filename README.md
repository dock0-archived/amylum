dock0/amylum
=======

[![Automated Build](http://img.shields.io/badge/automated-build-green.svg)](https://registry.hub.docker.com/u/dock0/amylum/)
[![MIT Licensed](http://img.shields.io/badge/license-MIT-green.svg)](https://tldrlegal.com/license/mit-license)

Container for [my Arch package repo](https://github.com/amylum/server).

## Usage

```
cat > env_file <<EOF
AWS_ACCESS_KEY_ID=your-access-key
AWS_SECRET_ACCESS_KEY=your-secret-key
AWS_REGION=your-region
S3_BUCKET=your-bucket-name
EOF
docker pull dock0/amylum
docker run -d -p 80:80 dock0/amylum
```

## License

This repo is released under the MIT License. See the bundled LICENSE file for details.

