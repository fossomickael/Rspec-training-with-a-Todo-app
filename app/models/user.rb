class User < ApplicationRecord
  has_many :todos

  def signed_in?
    email.present?
  end
end
