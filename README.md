name: "Check for website health"

on:
  schedule:
    - cron: "*/12 * * * *"

jobs:
  healthcheck:
    runs-on: ubuntu-latest

    steps:
      - name: Ping uuid
        uses: 102/website-healthcheck@v1.0.2
        with:
          web-url: https://nouminsolution.com/
