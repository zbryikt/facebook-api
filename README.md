facebook-api
=======================

So you want some data from facebook?


Usage
----------------------

npm install http://github.com/zbryikt/facebook-api

    require("facebook-api")
    facebookApi.getAccessToken(YourAppID, YourAppSecret).then(function(token) {
      facebookApi.getShare("http://www.foundi.info", token).then(function(data) {
        console.log(data.share.share_count);
      });
    });


Memo
----------------------
Facebook API

get access token

    https://graph.facebook.com/oauth/access_token?%20client_id=(appid)&client_secret=(appsecret)&grant_type=client_credentials

get share count

    https://graph.facebook.com/v2.1/?id=http%3A%2F%2Fwww.imdb.com?fields=likes&access_token=(accesstoken)


License
----------------------
CC-BY 4.0 https://creativecommons.org/licenses/by/4.0/deed.zh_TW
