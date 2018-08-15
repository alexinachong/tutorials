class Cat < ApplicationRecord
  include ActionView::Helpers::DateHelper

  validates :birth_date, presence: true
  validates :color, presence: true, inclusion: CAT_COLORS
  validates :name, presence: true
  validates :sex, presence: true, inclusion: %w(M F)
  validates :description, presence: true

  CAT_COLORS = %w(black brown orange white).freeze

  def age
    time_ago_in_words(birth_date)
  end
end
