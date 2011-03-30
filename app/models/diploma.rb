class Diploma < ActiveRecord::Base
  belongs_to :degree
  has_many :solicitations

  #has_one :degree, :foreign_key=>"degree_name"

  def description
    "#{self.degree.name unless self.degree.nil?} in #{self.name unless self.nil?}"
  end
end
