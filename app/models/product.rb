class Product < ActiveRecord::Base
  has_attached_file :productphoto,
    :styles => { :medium => "413x532" },
    :storage => :dropbox,
    :dropbox_credentials => Rails.root.join("config/dropbox.yml"),
     # :dropbox_options => {environment: ENV["RACK_ENV"]}
    :dropbox_options => {
    :path => proc { |style| "#{style}/#{id}_#{productphoto.original_filename}"},:unique_filename => true
    }
end
