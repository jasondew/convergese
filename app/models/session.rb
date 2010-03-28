class Session < ActiveRecord::Base
  validates :title, :presence => true
  validates :speaker, :presence => true
end
