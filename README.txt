install gems 'nokogiri' and 'restclient'

within the script, declare the hashtag you wish to search for, and how many tweets you want to pull

---------------------------------------

This is just a proof of concept I threw together for a client project

Twitter doesn't index every tweet by hashtag, so using it to pull less popular hashtags doesn't always return the best results.

With this, it instead goes directly to twitter, searches for the desired hashtag under the "live" tab, and returns the desired amount of tweets.

The script is currently pretty useless, but could easily be altered to insert the data into a database or something similar.


