# nuvolaris-test

In this repo there is are source of the test kit

Note that this repo does nothing by itself except building the test container used by other repos.

In order to develop with it, you have to get an AWS account, get the credentials, copy `.env.dist` to `.env`, edit it adding all the secrets.

Then you can:

- `task build` to build the container
- `task enter` to enter in the container accessing to the scripts in current directory

... more to come ...
