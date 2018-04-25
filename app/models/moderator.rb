class Moderator < ApplicationRecord
	has_secure_password
	has_many :posts
	has_many :articles

	validates :fullname, presence: true
	validates :username, presence: true, format: {with: /@/, message: 'Epostadressen er ugyldig!'}
	validates :role, presence: true
	validates :password, presence: true
	
end
