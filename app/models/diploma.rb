class Diploma < ActiveRecord::Base
  belongs_to :degree

  #has_one :degree, :foreign_key=>"degree_name"
end
