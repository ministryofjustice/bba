class Acronym < ActiveRecord::Base
  attr_accessible :acronym, :definition, :info, :url

  default_scope order('created_at DESC')

  scope :defined, where("definition <> ''")
  scope :undefined, where("definition = ''")
  scope :search, lambda { |q| where(['acronym ilike ?', "%#{q}%"]) if q.present? }
end
