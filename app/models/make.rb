class Make < ActiveRecord::Base
	validates_presence_of :name
	validates_uniqueness_of :name, case_sensitive: false
	has_many :models, dependent: :nullify
end
