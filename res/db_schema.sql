-- Create tweets table
CREATE TABLE tweets (
    tweet_id VARCHAR(50) UNIQUE,
    user_id VARCHAR(50),
    date VARCHAR(50),
    full_text VARCHAR(1000),
    tweet_type VARCHAR(30),
    hashtags VARCHAR(500),
    mentions VARCHAR(500),
    reply_count INT,
    quote_count INT,
    likes_count INT,
    retweet_counts INT,
    hyperlink VARCHAR(500),
    PRIMARY KEY(tweet_id),
    CONSTRAINT fk_user
        FOREIGN KEY(user_id)
            REFERENCES users_geo(user_id)
            ON DELETE SET NULL
  
);

-- Create users_geo table
CREATE TABLE users_geo (
    user_id VARCHAR(50) UNIQUE,
    country_code VARCHAR(10),
    location_name VARCHAR(50),
    latitude FLOAT(24),
    longitude FLOAT(24),
    PRIMARY KEY(user_id)
 
);


SELECT COUNT(*) FROM users_geo;
SELECT COUNT(*) FROM tweets;