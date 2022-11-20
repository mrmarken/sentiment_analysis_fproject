-- Create tweets table
CREATE TABLE tweets (
    tweet_id VARCHAR(50) PRIMARY KEY,
    date_created VARCHAR(50),
    full_text VARCHAR(1000),
    tweet_type VARCHAR(30),
    hashtags VARCHAR(500),
    mentions VARCHAR(500),
    user_id VARCHAR(50),
    city VARCHAR(30),
    county VARCHAR(30),
    fips_county CHAR(5),
    state VARCHAR(30),
    fips_state CHAR(2),
    country VARCHAR(30),
    latitude FLOAT,
    longitude FLOAT,
    reply_count INT,
    quote_count INT,
    likes_count INT,
    retweet_counts INT,
    hyperlink VARCHAR(500),
    dummy_sentiment VARCHAR(10),
    UNIQUE(tweet_id)
  
);


SELECT COUNT(*) FROM tweets;
SELECT * FROM tweets LIMIT 10;