class Replacement < ActiveRecord::Base
  belongs_to :replacer, :class_name => "Contract"
  belongs_to :replaced, :class_name => "Contract"
end
