class Transaction < ApplicationRecord
  belongs_to :baker, foreign_key: 'baker_id', class_name: 'User'
  belongs_to :purchaser, foreign_key: 'purchaser_id', class_name: 'User'
end
