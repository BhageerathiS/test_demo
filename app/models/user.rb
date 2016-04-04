class User < ActiveRecord::Base

  has_many :articles, dependent: :destroy
  belongs_to :role
end
