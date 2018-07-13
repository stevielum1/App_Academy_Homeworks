# == Schema Information
#
# Table name: tracks
#
#  id         :bigint(8)        not null, primary key
#  album_id   :integer          not null
#  title      :string           not null
#  ord        :integer          not null
#  lyrics     :text
#  bonus      :boolean          default(FALSE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Track < ApplicationRecord
  validates :title, :ord, presence: true
  validates :bonus, inclusion: { in: [true, false] }

  belongs_to :album,
  primary_key: :id,
  foreign_key: :album_id,
  class_name: :Album

  has_one :band,
  through: :album,
  source: :band

  has_many :notes,
  primary_key: :id,
  foreign_key: :track_id,
  class_name: :Note,
  dependent: :destroy
end
