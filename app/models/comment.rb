class Comment < ApplicationRecord
  belongs_to :post
 belongs_to :user
 validates :content, length: { minimum: 1 }
 
end



