class Subject < ApplicationRecord
  has_many :lecture
  has_one :teacher

  scope :search, -> (search_params) do
    return if search_params.blank?

    subject_like(search_params[:title])
      .teacher_like(search_params[:name])
  end
  scope :subject_like, -> (title) { where('name LIKE ?', "%#{title}%") if title.present? }
  scope :teacher_like, -> (name) { teacher.where('name LIKE ?', "%#{name}%") if name.present? }
end
