class Doc < ActiveRecord::Base
has_many :comment4s, dependent: :destroy
validates :title, presence: true
validates :link, presence: true
validates :name, presence: true

end
