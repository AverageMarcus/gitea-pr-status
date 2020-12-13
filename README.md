# gitea-pr-status

Docker image for updating PR status in Gitea

## Features

## Usage

```sh
docker run --it \
  -e GITEA_HOST=YOUR_GITEA_HOST \
  -e ACCESS_TOKEN=YOUR_GITEA_ACCESS_TOKEN\
  docker.cluster.fun/averagemarcus/gitea-pr-status \
  "YOUR_USER/YOUR_REPO" \
  "GIT_COMMIT_SHA" \
  "PR_STATUS"
```

## Building from source

With Docker:

```sh
make docker-build
```

## Resources

* [API Documentation](https://try.gitea.io/api/swagger#/repository/repoCreateStatus)

## Contributing

If you find a bug or have an idea for a new feature please raise an issue to discuss it.

Pull requests are welcomed but please try and follow similar code style as the rest of the project and ensure all tests and code checkers are passing.

Thank you 💛

## License

See [LICENSE](LICENSE)
