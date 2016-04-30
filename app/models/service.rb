class Service < ActiveRecord::Base
    extend FriendlyId
    
    has_many :tiers
    has_and_belongs_to_many :regions
    default_scope { order(name: :asc) }
    
    friendly_id :name, use: :slugged
end
