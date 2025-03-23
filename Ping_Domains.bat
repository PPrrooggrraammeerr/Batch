@echo off
title ping domains.bat
mode con cols=79 lines=19
color 0a
if exist %cd%\domains.txt (del /q %cd%\domains.txt)
if not exist %cd%\domains.txt (goto :generate_domains)
goto :generate_domains
:generate_domains
echo google.com > domains.txt
echo amazon.com >> domains.txt
echo microsoft.com >> domains.txt
echo facebook.com >> domains.txt
echo twitter.com >> domains.txt
echo yahoo.com >> domains.txt
echo reddit.com >> domains.txt
echo apple.com >> domains.txt
echo github.com >> domains.txt
echo linkedin.com >> domains.txt
echo wikipedia.com >> domains.txt
echo netflix.com >> domains.txt
echo pinterest.com >> domains.txt
echo instagram.com >> domains.txt
echo stackoverflow.com >> domains.txt
echo cnn.com >> domains.txt
echo bbc.com >> domains.txt
echo spotify.com >> domains.txt
echo adobe.com >> domains.txt
echo ebay.com >> domains.txt
echo tumblr.com >> domains.txt
echo quora.com >> domains.txt
echo booking.com >> domains.txt
echo dropbox.com >> domains.txt
echo zoom.us >> domains.txt
echo salesforce.com >> domains.txt
echo slack.com >> domains.txt
echo paypal.com >> domains.txt
echo twitch.com >> domains.txt
echo vimeo.com >> domains.txt
echo airbnb.com >> domains.txt
echo alibaba.com >> domains.txt
echo square.com >> domains.txt
echo wordpress.com >> domains.txt
echo spotify.com >> domains.txt
echo duckduckgo.com >> domains.txt
echo wix.com >> domains.txt
echo shopify.com >> domains.txt
echo expedia.com >> domains.txt
echo target.com >> domains.txt
echo walmart.com >> domains.txt
echo bestbuy.com >> domains.txt
echo apple.com >> domains.txt
echo hp.com >> domains.txt
echo dell.com >> domains.txt
echo samsung.com >> domains.txt
echo sony.com >> domains.txt
echo intel.com >> domains.txt
echo oracle.com >> domains.txt
echo zoom.com >> domains.txt
goto :ping_domains
:ping_domains
for /f "tokens=* usebackq" %%p in (domains.txt) do (ping %%p)
goto :ping_domains
:exit
exit