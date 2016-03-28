class Channel < ActiveRecord::Base
    has_and_belongs_to_many :tiers
    has_and_belongs_to_many :locks
    default_scope { order(name: :asc) }
    
    attr_accessor :css_class
end
