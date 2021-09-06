class User < ApplicationRecord
  validates :username, presence: true, 
                        length: { minimum: 3, maximum: 25 },
                        uniqueness: { case_sensitive: false }
  VALID_EMAIL_REGEX = /(^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$)/i
  validates :email, presence: true,
                        length: { maximum: 105 },
                        uniqueness: { case_sensitive: false },
                        format: { with: VALID_EMAIL_REGEX }
end
