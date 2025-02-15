CREATE TABLE posts (
    post_id VARCHAR(50) PRIMARY KEY,
    post_title TEXT NOT NULL,
    post_score INT,
    total_comments INT
);

CREATE TABLE comments (
    comment_id VARCHAR(50) PRIMARY KEY,
    post_id VARCHAR(50),
    comment_score INT,
    comment_sentiment ENUM('positive', 'neutral', 'negative'),
    FOREIGN KEY (post_id) REFERENCES posts(post_id) ON DELETE CASCADE
);

show tables;

select * from comments;

select * from posts;