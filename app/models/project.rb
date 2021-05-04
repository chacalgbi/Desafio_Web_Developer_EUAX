# frozen_string_literal: true

class Project < ApplicationRecord
  has_many :activities, dependent: :destroy

  validates :description, :start_date, :end_date, presence: true

  # Test
  def full_description
    "#{description} - #{start_date} - #{end_date}"
  end
end
