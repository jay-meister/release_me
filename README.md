# ReleaseMe

Learning mix releases

## Application setup:
I start the `RelaseMe.Application` supervising module when the ReleaseMe application is run:
`def application, do: [mod: {ReleaseMe.Application, []}]`

`ReleaseMe.Application` supervises a simple GenServer `ReleaseMe.Server` which periodically prints to the console

## Set up releases:
- `mix release.init` - generates `rel/` directory
- in `rel/env.sh.eex` uncomment: 
```
export RELEASE_DISTRIBUTION=name
export RELEASE_NODE=<%= @release.name %>@127.0.0.1
```

## Create a new Release:
- `MIX_ENV=prod mix release` - generates a new release
- `_build/prod/rel/release_me/bin/release_me start` - starts ReleaseME application
- `_build/prod/rel/release_me/bin/relase_me remote` - open new terminal window and connect to the running node remotely.
- Then run: `Process.whereis(ReleaseMe.Server) |> Process.exit(:exit)`


## Delete Gigalixir app:
- gigalixir apps:destroy -a <app_name>
- gigalixir pg:destroy --help
- gigalixir pg -a <app_name>
- gigalixir pg:destroy --database_id <db_id> -a <app_name>
- gigalixir apps:destroy -a <app_name>