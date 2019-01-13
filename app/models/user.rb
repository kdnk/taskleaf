# == Schema Information
#
# Table name: users
#
#  id              :bigint(8)        not null, primary key
#  name            :string           not null
#  email           :string           not null
#  password_digest :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  admin           :boolean          default(FALSE), not null
#

class User < ApplicationRecord
  has_secure_password

  has_many :tasks

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
end
