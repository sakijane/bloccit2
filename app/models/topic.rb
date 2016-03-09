class Topic < ActiveRecord::Base
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :labelings, as: :labelabel
  has_many :labels, through: :labelings
end
