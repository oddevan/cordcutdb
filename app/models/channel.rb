class Channel < ActiveRecord::Base
    has_and_belongs_to_many :tiers
end
