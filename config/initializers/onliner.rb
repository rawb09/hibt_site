require "redis"

if ( Rails.env.development? || Rails.env.test? )
	uri = URI.parse("localhost:3000")
else
	uri = URI.parse(ENV["REDISTOGO_URL"])
end

REDIS = Redis.new