## Load required modules 
library(httr)
library(httpuv)
require(jsonlite)


        # 1. Find OAuth settings for github:
        #    http://developer.github.com/v3/oauth/
          oauth_endpoints("github")
        
        # 2. To make your own application, register at at 
        #    https://github.com/settings/applications. 
        ##  https://github.com/settings/applications/321837
        ## Use any URL for the homepage URL
        #    (http://github.com is fine) and  http://localhost:1410 as the callback url. You will need httpuv
          
        #
        #    Replace your key and secret below.
        myapp <- oauth_app("github",
                           key = "7cd28c82639b7cf76fcc",
                           secret = "d1c90e32e12baa81dabec79cd1ea7d8edfd6bf53")

        # 3. Get OAuth credentials
        github_token <- oauth2.0_token(oauth_endpoints("github"), myapp)
        ## Authentication will be done automatically
        
        # 4. Use API
        gtoken <- config(token = github_token)
        req <- GET("https://api.github.com/users/jtleek/repos", gtoken)
        stop_for_status(req)
        ##content(req)
        output <- content(req)
         ## Either of the two can be used to fetch the required info, name and date created 
        out<-list(output[[8]]$name, output[[8]]$created_at)
        
        BROWSE("https://api.github.com/users/jtleek/repos",authenticate("Access Token","x-oauth-basic","basic"))
        # OR:
        # req <- with_config(gtoken, GET("https://api.github.com/users/jtleek/repos"))
        # stop_for_status(req)
        # content(req)
        