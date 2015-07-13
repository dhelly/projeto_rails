class Contato < ActiveRecord::Base
    
    validates :nome, presence: true, length: { maximum: 30 }
    validates :email, presence: true, length: { maximum: 30 }, format: {with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, on: :create}
    validates :mensagem, presence: true
    
    before_save { self.email = email.downcase}

end
