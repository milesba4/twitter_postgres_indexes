SET max_parallel_maintenance_workers = 60;
SET max_parallel_workers = 60;
SET maintenance_work_mem TO '16 GB';
CREATE INDEX idx_norm2 ON tweet_tags(tag, id_tweets);
CREATE INDEX idx_norm3 ON tweet_tags(id_tweets, tag);
CREATE INDEX idx_norm5 ON tweets USING GIN(to_tsvector('english', text)) WHERE lang = 'en';
CREATE INDEX idx_norm6 ON tweets(id_tweets, lang);
CREATE INDEX idx_norm7 ON tweets(lang);
CREATE INDEX idx_norm8 ON tweet_tags(tag text_pattern_ops, id_tweets);
