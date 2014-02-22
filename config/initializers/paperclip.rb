Paperclip::Attachment.default_options[:url] = ':scenic49.s3-website-us-west-1.amazonaws.com'
Paperclip::Attachment.default_options[:path] = '/:class/:attachment/:id_partition/:style/:filename'


Paperclip::Attachment.default_options[:storage] = :s3
Paperclip::Attachment.default_options[:s3_protocol] = 'http'
Paperclip::Attachment.default_options[:s3_credentials] =
  { :bucket => ENV['AWS_BUCKET_NAME'],
    :access_key_id => ENV['AWS_ACCESS_KEY'],
    :secret_access_key => ENV['AWS_SECRET_KEY'] }


# Paperclip.interpolates(:s3_eu_url) { |attachment, style|
#   "#{attachment.s3_protocol}://s3-us-west-1.amazonaws.com/#{attachment.scenic49}/#{attachment.path(style).gsub(%r{^/}, "")}"
# }