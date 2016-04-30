class Region < ActiveRecord::Base
    extend FriendlyId

    has_and_belongs_to_many :locks
    has_and_belongs_to_many :tiers
    has_and_belongs_to_many :services
    default_scope { order(name: :asc) }
    
    friendly_id :name, use: :slugged
end
