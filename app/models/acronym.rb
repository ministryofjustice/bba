class Acronym < ActiveRecord::Base
  scope :define, -> (a) { where('acronym ilike ?', "#{a}") if a.present? }
end
