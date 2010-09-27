# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
AmgcorpCom::Application.initialize!

begin
  YAML::load_file(File.join(%w(config environment.yml))).each_pair{|key, value| ENV[key] = value }
rescue
  # The environment variables config file will be missing in production.
end