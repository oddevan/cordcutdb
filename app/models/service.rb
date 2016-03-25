class Service < ActiveRecord::Base
    has_many :tiers
    has_and_belongs_to_many :regions
end
