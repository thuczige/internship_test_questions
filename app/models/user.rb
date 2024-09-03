class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :recoverable, :rememberable,
    :validatable, :confirmable, :lockable, :timeoutable, :trackable, :omniauthable

  has_many :examinations, dependent: :destroy
end
