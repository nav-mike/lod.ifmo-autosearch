class SearchController < ApplicationController
  def index
  end

  # get all laboratories
  # PREFIX vivoplus:<http://vivoplus.aksw.org/ontology#>
  # select distinct * where {
  #   ?department a vivoplus:Laboratory ;
  #               a vivo:Laboratory;
  #               rdfs:label ?name.
  # }

  # get all people
  # PREFIX foaf: <http://xmlns.com/foaf/0.1/>
  # PREFIX vivo:<http://vivoweb.org/ontology/core#>
  # select distinct * where {
  #   ?person a foaf:Person ;
  #           foaf:firstName ?firstName;
  #           vivo:middleName ?middleName;
  #           foaf:lastName ?lastName.
  # }

  # get all research area
  # PREFIX vivoplus:<http://vivoplus.aksw.org/ontology#>
  # PREFIX rdfs:<http://www.w3.org/2000/01/rdf-schema#>
  # select distinct * where {
  #   ?researchArea a vivoplus:ResearchArea;
  #                 rdfs:label ?label.
  # }
end
