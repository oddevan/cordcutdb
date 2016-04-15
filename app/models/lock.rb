class Lock < ActiveRecord::Base
    has_and_belongs_to_many :regions
    belongs_to :tier
    has_and_belongs_to_many :channels
end
