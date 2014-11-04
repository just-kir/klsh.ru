class Doc < ActiveRecord::Base
validates :title, presence: true
validates :link, presence: true
validates :name, presence: true

end
