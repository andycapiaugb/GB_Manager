class Relative < ActiveRecord::Base
  belongs_to :relator, :class_name => "Person"
  belongs_to :related, :class_name => "Person"
end
