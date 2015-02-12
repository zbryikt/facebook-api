require! <[fs request bluebird]>

base = do
  get-access-token: (appid,secret) ->
    api = "https://graph.facebook.com/oauth/access_token?%20client_id=#{appid}&client_secret=#{secret}&grant_type=client_credentials"
    (res, rej) <- new bluebird _
    (e,r,b) <- request {url: api, method: \GET}, _
    if e or !r or !b => return rej!
    ret = /^access_token=([0-9a-zA-Z\|_]+)$/.exec b.trim!
    if !ret => return rej!
    return res ret.1
  get-share: (url, token = null) ->
    api = "https://graph.facebook.com/v2.1/?id=#{encodeURIComponent(url)}&access_token=#token"
    (res, rej) <- new bluebird _
    (e,r,b) <- request {url: api, method: \get}, _
    if e or !r or !b => return rej!
    return res JSON.parse(b)

    

module.exports = base
