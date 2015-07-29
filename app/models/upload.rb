class Upload < ActiveRecord::Base
  attr_accessible :file

  mount_uploader :file, FileUploader



  def to_jq_upload
    {
      "name" => read_attribute(:file),
      "size" => file.size,
      "url" => file.url,
      "delete_url" => "/uploads/#{id}",
      "delete_type" => "DELETE"
    }
  end	
end
