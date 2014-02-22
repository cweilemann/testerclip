class Checkin < ActiveRecord::Base
  attr_accessible :comment, :location_id, :name, :photo

	# checkin.photo.url => "http://scenic49.s3-website-us-west-1.amazonaws.com/" 

  has_attached_file :photo, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'
  }
 #  ,
 #  :storage => :s3,
	# :s3_credentials => {
	#     :access_key_id => ENV['AWS_SECRET_KEY'],
	#     :secret_access_key => ENV['AWS_ACCESS_KEY'] },
	# :s3_protocol => "https",
	# :path => ":class/:id/:basename_:style.:extension",
	# :url => ':s3_us_url', 
	# :bucket => 'scenic49' 

 #  # Validate the attached image is image/jpg, image/png, etc
 #  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
	
end
