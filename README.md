# ReleaseMe

Learning mix releases

I start a small GenServer is started when the ReleaseMe application is run

## Installation

Steps:
`mix release.init` - generates `rel/` directory
`MIX_ENV=prod mix release` - generates a new release
`_build/prod/rel/release_me/bin/release_me start` - starts ReleaseME application