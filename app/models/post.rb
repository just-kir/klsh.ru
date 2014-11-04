class Post < ActiveRecord::Base
	validates :tweet, presence: true, 
		length: {minimum: 5} 


  def timestamp
    created_at.strftime('%d %B %Y %H:%M:%S')
  end
end
