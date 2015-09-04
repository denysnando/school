class Course < ActiveRecord::Base
  has_many :class_rooms
  has_many :students, through: :class_rooms

  validates :name, presence: true

  def status_pt
    { 0 => "Ativo",
      1 => "Não Ativo" }[status]
  end
end
