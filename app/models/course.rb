class Course < ActiveRecord::Base
  validates :name, presence: true

  def status_pt
    { 0 => "Ativo",
      1 => "Não Ativo" }[status]
  end
end
