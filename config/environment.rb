# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Testerclip::Application.initialize!


require 'aws/s3'
AWS::S3::DEFAULT_HOST = "s3-us-west-1.amazonaws.com"