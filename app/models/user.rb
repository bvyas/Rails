class User < ActiveRecord::Base
	belongs_to :category
	has_many :ideas
end
