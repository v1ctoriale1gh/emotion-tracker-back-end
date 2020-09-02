class Log < ApplicationRecord
    belongs_to :user
    has_many :emotions
    accepts_nested_attributes_for :emotions
    
end
