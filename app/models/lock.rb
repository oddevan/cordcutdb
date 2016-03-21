class Lock < ActiveRecord::Base
    belongs_to :region
    belongs_to :tier
    has_and_belongs_to_many :channels
    
    def name
        "#{tier.name}: #{region.name}"
    end
end
