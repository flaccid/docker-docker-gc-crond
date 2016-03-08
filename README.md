# docker-docker-gc-crond

Run docker-gc regularly under a cron job within a Docker container

## Usage

### Build

    $ docker build -t docker-gc-crond .

### Run

Inherits the usage from https://github.com/eea/docker-gc/blob/master/README.md plus:

Typically:

    $ docker run -itd -v /var/run/docker.sock:/var/run/docker.sock docker-gc-crond

By default `docker-gc` will run every 30 minutes.

#### Runtime Environment Variables

There should be a reasonable amount of flexibility using the available variables. If not please raise an issue so your use case can be covered!

- `FOO` - bar

### Tag and Push

    $ docker tag -f docker-gc-crond flaccid/docker-gc-crond
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
