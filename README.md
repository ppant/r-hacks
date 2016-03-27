# r-hacks
Common r programming racks

1. OAuth for Github

Modern API provided by Google, Twitter, Facebook, Github etc uses <a href="http://oauth.net/">OAuth</a> for authentication and authorization. In this example I am using GitHub API. We get a json response which can be used to fetch specific information. In this code I have used my <a href="https://api.github.com/users/ppant/repos">Github account.</a>Code is written R programming languages.

Here are the steps:
1. Find <a href="http://oauth.net/">OAuth</a> settings for Github
2. Create a application in Github
3. Add/Modify secret keys
4. Get <a href="http://oauth.net/">OAuth</a> credentials
5. Finally use API and parse json data to show response