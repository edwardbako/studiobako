class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :lockable, :timeoutable, :trackable

  enum :role, [:admin, :user]

  def full_name
    "#{surname} #{name} #{patronymic}"
  end

  def short_name
    short_name = "#{name} #{surname}"
    short_name.present? ? short_name : email
  end
       
end
