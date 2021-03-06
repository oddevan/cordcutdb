class Channel < ActiveRecord::Base
    extend FriendlyId
    
    has_and_belongs_to_many :tiers
    default_scope { order(name: :asc) }
    
    attr_accessor :css_class
    
    friendly_id :name, use: :slugged
end
