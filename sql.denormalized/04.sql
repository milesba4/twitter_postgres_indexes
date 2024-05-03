select COUNT(distinct data->>'id')
from tweets_jsonb
where to_tsvector('english', COALESCE(data->'extended_tweet'->>'full_text',data->>'text')) @@ to_tsquery('english','coronavirus') and data->>'lang' = 'en';
