class Website < ApplicationRecord
  validates :content,presence: true,length: { in: 1..75 } 
end
