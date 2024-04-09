## Example of running Express.js app without node_modules

For: https://twitter.com/papanberjalan/status/1777611772813300055

### Steps:
1. Bundle the JS app
```sh
yarn build
```

2. Build the docker image 
```sh
docker build -t no-modules-express .
```

3. Start a container with the image
```sh
docker run -p 3000:3000 no-modules-express
```

4. Verify `localhost:3000` returns `"Hello world!"`

5. Verify container does not include `/usr/src/app/node_modules`
