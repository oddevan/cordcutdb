class Tier < ActiveRecord::Base
  belongs_to :service
  has_and_belongs_to_many :channels
  has_many :locks
  has_and_belongs_to_many :regions
  
  has_many :addons, class_name: "Tier", foreign_key: 'prereq_id'
  belongs_to :prereq, class_name: "Tier"
  
  default_scope { order(name: :asc) }
end
