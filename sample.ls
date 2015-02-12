require! <[./index ./secret]>

index.get-access-token secret.appid, secret.secret .then (token) ->
  index.get-share \http://www.foundi.info, token .then (data) ->
    console.log data
  .catch -> console.log "failed: get count"
.catch -> console.log "failed: access token #it"

