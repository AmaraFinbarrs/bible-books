class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable

  has_many :notes

  belongs_to :portal

  before_validation :assign_portal, on: :create

  private

  def assign_portal
    self.portal = Portal.find_by(name: 'member') if portal.blank?
  end
end
