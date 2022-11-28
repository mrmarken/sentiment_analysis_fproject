
--JOIN tweet and geo tables
CREATE TABLE public.tweets_user_geo_v1 AS
SELECT t1.tweet_id, t1.date, t2.location_name,
t2.latitude, t2.longitude
FROM public.tweets t1
JOIN public.users_geo t2
ON t1.user_id = t2.user_id
WHERE t2.location_name IS NOT NULL AND
t2.latitude IS NOT NULL AND
t2.longitude IS NOT NULL AND
t2.location_name != 'United States' AND
t2.location_name != '%County%';


--Count of certain hashtags groupings
SELECT COUNT(*)
FROM public.hashtag
WHERE  hashtags ='#2a' OR
hashtags = '#2A' OR
hashtags = '#2ndAmendment';

SELECT COUNT(*)
FROM public.hashtag
WHERE  hashtags ='#nra' OR
hashtags = '#NRA';

SELECT COUNT(*)
FROM public.hashtag
WHERE  hashtags ='#guncontrol' OR
hashtags = '#GunControl';


------------------------------------------------------------------------------
--Top 10 Most Frequent Hashtags, not including multi-hashtag strings
SELECT hashtags AS most_frequent_hashtags
FROM public.tweets
WHERE hashtags IS NOT NULL AND
	hashtags != 'Original Tweet' AND
	hashtags != 'Reply Tweet'
GROUP BY hashtags
ORDER BY COUNT(*) DESC LIMIT 50;

--Splitting hashtags into individual columns
SELECT split_part(hashtags,' ',1) as indivdual_hashtags_1,
	split_part(hashtags,' ',2) as indivdual_hashtag_2,
	split_part(hashtags,' ',3) as indivdual_hashtag_3,
	split_part(hashtags,' ',4) as indivdual_hashtag_4,
	split_part(hashtags,' ',5) as indivdual_hashtag_5,
	split_part(hashtags,' ',6) as indivdual_hashtag_6,
	split_part(hashtags,' ',7) as indivdual_hashtag_7,
	split_part(hashtags,' ',8) as indivdual_hashtag_8
FROM public.tweets
WHERE hashtags IS NOT NULL AND
	hashtags != 'Original Tweet' AND
	hashtags != 'Reply Tweet';

--checking new table
SELECT COUNT(*)
FROM public.hashtag;

--Top 10 Most Frequent Hashtags including first 8 tweets of the user from dataset of 8,000
CREATE TABLE public.most_frequent_hashtags AS
SELECT hashtags AS most_frequent_hashtags, COUNT(hashtags)
FROM public.hashtag
WHERE hashtags IS NOT NULL AND
	hashtags LIKE '%#%'
GROUP BY hashtags
ORDER BY COUNT(*) DESC LIMIT 50;


-------------------------------------------------------------------------------
--Top 10 Most Frequent Mentions, not including multi-mention strings
SELECT mentions AS most_frequent_mentions, COUNT(mentions)
FROM public.tweets
WHERE mentions IS NOT NULL AND
	mentions != 'Original Tweet' AND
	mentions != 'Reply Tweet'
GROUP BY mentions
ORDER BY COUNT(*) DESC LIMIT 100;

--Splitting mentions into individual columns
SELECT split_part(mentions,' ',1) as indivdual_mentions_1,
	split_part(mentions,' ',2) as indivdual_mentions_2,
	split_part(mentions,' ',3) as indivdual_mentions_3,
	split_part(mentions,' ',4) as indivdual_mentions_4,
	split_part(mentions,' ',5) as indivdual_mentions_5
FROM public.tweets
WHERE mentions IS NOT NULL AND
	mentions != 'Original Tweet' AND
	mentions != 'Reply Tweet' AND
	mentions LIKE '%@%';


--Top 10 Most Frequent Mentions including first 8 tweets of the user from dataset of 8,000
CREATE TABLE public.most_frequent_mentions AS
SELECT mentions AS most_frequent_mentions, COUNT(mentions)
FROM public.mention
WHERE mentions IS NOT NULL AND
	mentions LIKE '%@%'
GROUP BY mentions
ORDER BY COUNT(*) DESC LIMIT 50;
