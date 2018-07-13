# == Schema Information
#
# Table name: notes
#
#  id          :bigint(8)        not null, primary key
#  author_id   :integer          not null
#  track_id    :integer          not null
#  description :text             not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Note < ApplicationRecord
  validates :description, presence: true

  belongs_to :author,
  primary_key: :id,
  foreign_key: :author_id,
  class_name: :User

  belongs_to :track,
  primary_key: :id,
  foreign_key: :track_id,
  class_name: :Track
end
