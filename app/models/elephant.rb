class Elephant < ActiveRecord::Base
  has_many :comment2s, dependent: :destroy
end
