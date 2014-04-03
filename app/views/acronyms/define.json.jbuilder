if @acronym.length > 0
  json.acronym @acronym.first.acronym

  json.definitions(@acronym) do |definition|
    json.definition (definition.definition.blank? ? "*definition missing*" : definition.definition)
    json.url acronym_url(definition)
  end
else
  json.error "Acronym not found, please define #{new_acronym_url(acronym: params[:acronym])}"
end
