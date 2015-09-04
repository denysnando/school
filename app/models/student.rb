class Student < ActiveRecord::Base
  validates :name, presence: true
  validates :register_number, presence: true, uniqueness: true

  def status_pt
    { 0 => "Ativo",
      1 => "Não Ativo" }[status]
  end

end
