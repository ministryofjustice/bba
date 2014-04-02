class Acronym < ActiveRecord::Base
  attr_accessible :acronym, :definition, :info, :url

  scope :define, -> (a) { where('acronym ilike ?', "#{a}") if a.present? }
end
