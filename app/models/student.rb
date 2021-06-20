class Student < ApplicationRecord

  def to_s
    "#{first_name} #{last_name}"
  end

  def self.search_by_name(name)
    self.where("first_name LIKE ? OR last_name LIKE ?", "%#{name}","%#{name}" )
 end

end
