class SickCase < ActiveRecord::Base
  attr_accessible :description, :name, :title, :poster, :user_id, :public,
                  :price
  validates_presence_of :title

  has_many :sick_hists, :dependent => :destroy
  has_many :activities, :dependent => :destroy
  belongs_to :user


  scope :pub, -> { where(public: true) }

  mount_uploader :poster, PosterUploader

  attr_accessor :crop_x, :crop_y, :crop_w, :crop_h

  after_update :reprocess_poster, :if => :cropping?

  # this method will be called during standard assignment in your controller
  # (like `update_attributes`)
  def image_data=(data)
    regex = /data:(.*);(.*),/
    realdata = regex.match(data).post_match

    # decode data and create stream on them
    io = CarrierStringIO.new(Base64.decode64(realdata))

    # this will do the thing (poster is mounted carrierwave uploader)
    self.poster = io
  end

  def reprocess_poster
    poster.recreate_versions!
  end

  def cropping?
    !crop_x.blank? && !crop_y.blank? && !crop_w.blank? && !crop_h.blank?
  end

  def open_to_user?(user)
    return true if self.price == 0||self.price.blank?
    return false if user.nil?
    return true if user == self.user
    return true if is_paid_user?(user)
    return true if collaborator?(user)
  end

end
