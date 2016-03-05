class Tier < ActiveRecord::Base
  belongs_to :service
  belongs_to :prereq, class_name: "Tier"
  has_and_belongs_to_many :channels
end
