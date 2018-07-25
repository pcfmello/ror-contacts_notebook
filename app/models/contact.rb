class Contact < ActiveRecord::Base
  belongs_to :kind
  has_one :address
  has_many :phones
end
