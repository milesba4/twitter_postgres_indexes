create index idx_denorm1 on tweets_jsonb using gin((data->'entities'->'hashtags'));
create index idx_denorm2 on tweets_jsonb using gin((data->'extended_tweet'->'entities'->'hashtags'));
create index idx_denorm3 on tweets_jsonb using gin(to_tsvector('english', COALESCE(data->'extended_tweet'->>'full_text', data->>'text'))) where (data->>'lang'='en');
create index idx_denorm4 on tweets_jsonb((data->>'lang'));
