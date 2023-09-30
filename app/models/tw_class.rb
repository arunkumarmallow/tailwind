class TwClass < ApplicationRecord
  validates :code, presence: true, uniqueness: true
  validates :tw_class, presence: true
end
