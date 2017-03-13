class User < ApplicationRecord

  has_many :matches

  before_save {self.email = email.downcase}

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :first_name, presence: true, length: {maximum: 50}
  validates :last_name, presence: true, length: {maximum: 50}
  validates :email, presence: true,
                    format: {with: VALID_EMAIL_REGEX},
                    uniqueness: {case_sensitive: false},
                    length: {maximum: 255}
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 },
                       allow_nil: true

  Roles = [:default]

  def is? (requested_role)
    self.role == requested_role.to_s
  end

end
