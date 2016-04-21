json.array!(@result) do |asset|
  if asset[:name].present?
    json.name asset[:name].value
  end
  
  if asset[:first_name].present? && asset[:middle_name].present? && asset[:last_name].present?
    json.name "#{asset[:first_name].value} #{asset[:middle_name].value} #{asset[:last_name].value}"
  end
  
  if asset[:department].present?
    json.id asset[:department].value
  end
  
  if asset[:person].present?
    json.id asset[:person].value
  end
end