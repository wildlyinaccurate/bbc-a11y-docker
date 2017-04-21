## bbc-a11y

A Docker image containing [bbc-a11y](https://github.com/bbc/bbc-a11y) and all the necessary packages.

### Usage

Test a single page:

```
docker run --rm --tty wildlyinaccurate/bbc-a11y http://www.bbc.co.uk/news/0
```

Or run tests from a config file:

```
docker run --rm --tty --volume $PWD:/ws wildlyinaccurate/bbc-a11y --config /ws/a11y.js
```
