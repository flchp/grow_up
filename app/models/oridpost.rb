# == Schema Information
#
# Table name: oridposts
#
#  id           :integer          not null, primary key
#  title        :string
#  objective    :text
#  reflective   :text
#  interpretive :text
#  decision     :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  user_id      :integer
#

class Oridpost < ApplicationRecord
  validates :title, presence: true

  belongs_to :user

  def publish!
    self.is_hidden = false
    self.save
  end

  def hide!
    self.is_hidden = true
    self.save
  end

  def display!
    self.is_display = true
    self.save
  end

  def conceal!
    self.is_display = false
    self.save
  end

  scope :published, -> {where(is_hidden: false)}
  scope :displayed, -> {where(is_display: true)}


end
