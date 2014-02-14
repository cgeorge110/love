# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Load local variables for development only
aws_env = File.join(Rails.root, 'config', 'aws_env.rb')
load(aws_env) if File.exists?(aws_env)

# Initialize the Rails application.
Lovesya::Application.initialize!
