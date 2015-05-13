class Person < ActiveRecord::Base
   attr_accessible :name, :email
     has_and_belongs_to_many :communities
end
