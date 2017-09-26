# docker-docker-gc-crond

Run docker-gc regularly under a cron job within a Docker container

## Usage

### Build

    $ docker build -t flaccid/docker-gc-crond .

### Run

Inherits the usage from https://github.com/eea/docker-gc/blob/master/README.md plus:

Typically:

    $ docker run -itd -v /var/run/docker.sock:/var/run/docker.sock flaccid/docker-gc-crond

By default `docker-gc` will run every 30 minutes.

#### Runtime Environment Variables

There should be a reasonable amount of flexibility using the available variables. If not please raise an issue so your use case can be covered!

- `CRON_SCHEDULE` - Defaults to `0,30 * * * *` (on the hour and half hour)
- `LOG_TO_SYSLOG` - `0` or `1`
- `SYSLOG_FACILITY` - Defaults to `user`
- `SYSLOG_LEVEL` - Defaults to `info`
- `SYSLOG_TAG` - Defaults to `docker-gc`
- `DRY_RUN` - Defaults to `false`. Sets `DRY_RUN_CONTAINERS` and `DRY_RUN_IMAGES` in one option.
- `DRY_RUN_CONTAINERS` - Defaults to `false`
- `DRY_RUN_IMAGES` - Defaults to `false`
- `EXCLUDE_IMAGES` - Space separated list of images to exclude
- `EXCLUDE_CONTAINERS` - Space separated list of containers to exclude

### Push to Docker Hub

    $ docker push flaccid/docker-gc-crond

License and Authors
-------------------
- Author: Chris Fordham (<chris@fordham-nagy.id.au>)

```text
Copyright 2016, Chris Fordham

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
