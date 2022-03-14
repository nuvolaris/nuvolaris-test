# nuvolaris-test

This is the testkit.

It builds a container for testing.

The container contains all the tools to build various Kubernetes clusters and test Nuvolaris in them.

TO use it:

- copy `.env.dist` in `.env` and fill it with the required secrets 
- built the container with `task build`
- enter in the container for development with `task enter`

TODO: run it in a CI Environment
