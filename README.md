Chatterbox + WordPress POC
==========================
A Proof-Of-Concept for embedding [Chatterbox](https://github.com/vector-im/chatterbox) in a WordPress site, with a homeserver provided by [matrix-env](https://github.com/Automattic/matrix-env).

## Initial setup
Clone the repo:

```shell
git clone git@github.com:psrpinto/chatterbox.git
```

Install dependencies:

```shell
yarn install
```

This is preconfigured to use matrix-env. If you wish to use another homeserver, modify `public/config.json in` with your homeserver details. See [`types/IChatterboxConfig.ts`](https://github.com/vector-im/chatterbox/blob/main/src/types/IChatterboxConfig.ts) for the format.

## Running locally
Build chatterbox into the `target/` directory:

```shell
make build
```

Start matrix-env:

```shell
cd /path/to/matrix-env
docker compose up
```

Then serve the `target/` directory (requires Python 3):

```shell
make serve
```

You can now visit http://localhost:3001, which renders the built version of Chatterbox in a test site. By *Built version* we mean "pure" JavaScript and other assets, without the need for additional tooling (i.e. don't require `vite`).

## Testing
Chatterbox comes with a suite of integration tests, using cypress.

You can run them by doing
```sh
yarn cypress install
yarn cypress open
``` 

Ensure you copy the `cypress/fixtures/demoInstance.sample.json` file to `cypress/fixtures/demoInstance.json` and edit 
the keys accordingly.
