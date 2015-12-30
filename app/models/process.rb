class Process < ActiveRecord::Base
	validates :method, presence: true
end