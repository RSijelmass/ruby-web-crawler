# Web Crawler

A small project to familiarise myself again with Ruby. I have in the past written a web crawler before, so I thought it to be a good exercise to try and do this again.

In the past I have written this in Go, a language that lends itself well for crawling thanks to its multi-threading. An interesting challenge will be to see how I design a crawler in Ruby.

## Set up
To initialise the project, ensure [bundler](https://bundler.io/) is installed and run:
```
bundle install
```

## Testing
To run all tests, run:
```
rspec
```

## Specs
V1
We want this project:
- To be able to start crawling from a certain URL. This URL can be hardcoded.
- to fetch all URLs from this main URL
- to return a list of all URLs that are on this base URL

V2
We want this project:
- To be able to start crawling from a certain URL. This URL can be hardcoded.
- to fetch all URLs from this main URL
- for each URL returned, to go one level deep and fetch all URLs for each child URL
- to return all fetched URLs. We want to have an understanding of the tree structure what child URL belongs to which parent.
