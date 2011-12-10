class User < ActiveRecord::Base
  has_many :events

  def self.find_or_create_from_auth_hash(hash)
    Rails.logger.debug "\n"
    Rails.logger.debug "hash=#{hash.inspect}"
    Rails.logger.debug "hash[uid]=#{hash['uid'].inspect}"
    Rails.logger.debug "hash[provider]=#{hash['provider'].inspect}"
    Rails.logger.debug "\n"
    user = User.find_by_uid(hash["uid"], :conditions => ["provider=?", hash["provider"]])
    if user.nil?
      user = User.new(:uid=> hash["uid"], :provider => hash["provider"])
      user.email = hash["info"]["email"]
      user.name = hash["info"]["name"]
      user.nickname = hash["info"]["nickname"]
      user.save!
    end
    user
  end

end
# == Schema Information
#
# Table name: users
#
#  id         :integer         not null, primary key
#  provider   :string(255)
#  uid        :string(255)
#  name       :string(255)
#  email      :string(255)
#  nickname   :string(255)
#  created_at :datetime
#  updated_at :datetime
#

