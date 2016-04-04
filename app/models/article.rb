class Article < ActiveRecord::Base
  has_and_belongs_to_many :categories
  validates :title, :content, :created_by, presence: true
end
