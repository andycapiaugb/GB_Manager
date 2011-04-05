class Person < ActiveRecord::Base
  has_one :employee
  has_many :employments
  has_many :entities, :through => :employments
  has_many :solicitations
  has_many :relations , :foreign_key => "relator_id", :class_name => "Relative", :dependent => :destroy
  has_many :relateds, :through => :relations, :source => :related
  has_many :reverse_relations, :foreign_key => "related_id", :class_name => "Relative", :dependent => :destroy
  has_many :relators, :through => :reverse_relations, :source => :relator

  def name
    "#{self.first_name} #{self.last_name}"
  end

  def name_with_national_number
    "#{self.name} (#{self.national_number})"
  end

  def relatives
    self.relations | self.reverse_relations
  end
end
