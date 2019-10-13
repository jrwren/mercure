# Is it the winter break yet

## Deployment

`make deploy-function`

## Usage

```shell
$ curl -sL bit.ly/is-it-winter-break-yet | jq
{
  "is_winter_break_yet": "false",
  "winter_break": {
    "start_time": "2019-10-14T00:00:00Z",
    "end_time": "2020-04-14T00:00:00Z"
  }
}
```
