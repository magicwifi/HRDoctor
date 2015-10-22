class Doctor < ActiveRecord::Base
  attr_accessible :name, :avatar,:use_gravatar, :main_desc, :price, :url,:doctor_id
  has_many :basic_cases

  validates :name,  presence: true, 
                    format: { without: /(\-| |\.|\/|\\)/, message: "不能包含横线, 斜线, 句点或空格" }
  validates :main_desc, presence: true 
  validates :price, presence: true, format: { with: /\d+/  }
  validates :doctor_id, presence: true, uniqueness:true,format: { with: /\d+/  }
  validates :url, presence: true, format: { with: /http:\/\/[^\s]*/   }
  validates :avatar, presence: true, format: { with: /http:\/\/[^\s]*/   }

  

  def image_data=(data)
    regex = /data:(.*);(.*),/
    realdata = regex.match(data).post_match

    # decode data and create stream on them
    io = CarrierStringIO.new(Base64.decode64(realdata))

    # this will do the thing (avatar is mounted carrierwave uploader)
    self.avatar = io
  end

  def has_avatar?
    self.read_attribute(:avatar).present?
  end

  def use_avatar?
    has_avatar? && !use_gravatar?
  end

  def gravatar_url
    gravatar_id = Digest::MD5.hexdigest(self.name)
    "http://gravatar.com/avatar/#{gravatar_id}.png?s=512&d=retro"
  end

  def final_avatar_url
    self.use_avatar? ? self.avatar : self.gravatar_url
  end


  def reprocess_avatar
    avatar.recreate_versions!
  end

  def cropping?
    !crop_x.blank? && !crop_y.blank? && !crop_w.blank? && !crop_h.blank?
  end
end
