json.acronym @definitions.first.acronym

json.definitions(@definitions) do |definition|
  json.definition definition.definition
  json.url acronym_url(definition)
end
