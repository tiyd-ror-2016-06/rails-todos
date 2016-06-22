class Item < ActiveRecord::Base
  belongs_to :list
  validates_presence_of :list, :description
  validates_length_of :description, minimum: 2
  validates_uniqueness_of :description, scope: :list
end
