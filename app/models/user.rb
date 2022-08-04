class User < ApplicationRecord
  validates :username, presence: true, 
                       uniqueness: true,
                       length: { in: 3..20 }
  validates :email, presence: true,
                    format: { with: /.+@.+\..+/}
  validates :password, presence: true,
                       format: { with: /.*[A-Z].*/ },
                       format: { with: /.*[a-z].*/ },
                       format: { with: /.*\d.*/ },
                       format: { with: /.*[^\w].*/ }
end
