class Service < ActiveRecord::Base
    extend FriendlyId
    
    has_many :tiers
    default_scope { order(name: :asc) }
    
    friendly_id :name, use: :slugged
end
