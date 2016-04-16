class Region < ActiveRecord::Base
    has_and_belongs_to_many :locks
    has_and_belongs_to_many :tiers
    has_and_belongs_to_many :services
    default_scope { order(name: :asc) }
end
