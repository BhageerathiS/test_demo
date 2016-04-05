class Article < ActiveRecord::Base
  has_and_belongs_to_many :categories
  has_many :comments
  validates :title, :content, :created_by, presence: true ,length: { minimum: 5 }
end
