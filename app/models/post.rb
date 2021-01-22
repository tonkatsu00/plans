class Post < ApplicationRecord
  belongs_to :user
  has_many :sub_tasks

  validates :title, presence: true
end
