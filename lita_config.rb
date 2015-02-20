Lita.configure do |config|

  # name and mention_name are set in the lita integration config @ fmitech.slack.com/services
  # name is configured here anyway for the purpose of displaying in commands like "roy help"
  config.robot.name = "roy"
  config.robot.alias = "~"

  # The locale code for the language to use.
  # config.robot.locale = :en

  # The severity of messages to log. Options are:
  # :debug, :info, :warn, :error, :fatal
  # Messages at the selected level and above will be logged.
  config.robot.log_level = :info

  # An array of user IDs that are considered administrators. These users
  # the ability to add and remove other users from authorization groups.
  # What is considered a user ID will change depending on which adapter you use.
  config.robot.admins = [
                          "U03N02TG7" # chloe reimer
                        ]

  # The adapter you want to connect with. Make sure you've added the
  # appropriate gem to the Gemfile.
  config.robot.adapter = :slack
  config.adapters.slack.token = ENV["SLACK_TOKEN"]

  ## Example: Set options for the chosen adapter.
  # config.adapter.username = "myname"
  # config.adapter.password = "secret"

  ## Example: Set options for the Redis connection.
  # config.redis.host = "127.0.0.1"
  # config.redis.port = 1234

  ## Example: Set configuration for any loaded handlers. See the handler's
  ## documentation for options.
  # config.handlers.some_handler.some_config_key = "value"

  # configure redistogo on heroku
  config.redis[:url] = ENV["REDISTOGO_URL"]
  config.http.port = ENV["PORT"]

  # configure memegen gem
  config.handlers.memegen.command_only = true
  config.handlers.memegen.username = ENV['MEMEGEN_USERNAME']
  config.handlers.memegen.password = ENV['MEMEGEN_PASSWORD']

end
