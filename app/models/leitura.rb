class Leitura < ActiveRecord::Base
    belongs_to :user, class_name: User
    
    validates :titulo, presence: true, length: { maximum: 30 }
    validates :autor, presence: true, length: { maximum: 30 }
    validates :mes, presence: true, length: { maximum: 15 }
    validates :duracao, presence: true, length: { maximum: 15 }
    validates :observ, presence: true, length: { maximum: 45 }

end
