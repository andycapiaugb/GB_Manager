class Replacement < ActiveRecord::Base
  belongs_to :replacer, :class_name => "Contract"
  belongs_to :replaced, :class_name => "Contract"

  attr_accessor :should_destroy

  def should_destroy?
    should_destroy == 1
  end
end
