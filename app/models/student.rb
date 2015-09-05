class Student < ActiveRecord::Base
  has_many :class_rooms
  has_many :courses, through: :class_rooms

  validates :name, presence: true
  validates :register_number, presence: true, uniqueness: true

  def status_pt
    { 0 => "Ativo",
      1 => "Não Ativo" }[status]
  end

end
