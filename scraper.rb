#!/usr/bin/env ruby

#pull necessary gems
require 'rubygems'
require 'nokogiri'
require 'restclient'

#declare the hashtag you want to search for
hashtag = "cats"
#number of tweets you want to pull
numTweets = 5

#initialize connection with twitter
page = Nokogiri::HTML(RestClient.get("https://twitter.com/search?f=tweets&vertical=default&q=%23#{hashtag}&src=typd"))
$i=0
while $i < numTweets
  #text from tweet
  puts page.css("p.tweet-text")[$i].text
  #handle of tweet poster
  puts page.css("span.username.js-action-profile-name b")[$i].text
  #date tweet was posted
  puts page.css("span._timestamp.js-short-timestamp")[$i].text
  #permalink of tweet
  puts page.css("a.tweet-timestamp.js-permalink.js-nav.js-tooltip")[$i]['href']
  $i+=1
end

