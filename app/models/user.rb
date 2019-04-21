class User < ApplicationRecord
  before_create :generate_nickname

  scope :online, -> { where(online: true) }

  #def self.online
  #  where(online: true)
  #end  

  def generate_nickname
    self.nickname = Faker::Name.first_name.downcase
  end

  def as_json
    { nickname: nickname, online: online }
  end
end
