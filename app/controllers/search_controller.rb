require 'rdf/virtuoso'

class SearchController < ApplicationController
  def index
  end

  private

  def get_all_labs
    uri = 'http://lod.ifmo.ru/sparql'
    repo = RDF::Virtuoso::Repository.new(uri)
    QUERY = RDF::Virtuoso::Query
    graph = RDF::URI.new('http://lod.ifmo.ru')

    query = QUERY.select(:department, :name)
                 .distinct
                 .where(
                   [:department, RDF::URI.new('http://www.w3.org/1999/02/22-rdf-syntax-ns#type'), RDF::URI.new('http://vivoplus.aksw.org/ontology#Laboratory')],
                   [:department, RDF::URI.new('http://www.w3.org/1999/02/22-rdf-syntax-ns#type'), RDF::URI.new('http://vivoweb.org/ontology/core#Laboratory')],
                   [:department, RDF::URI.new('http://www.w3.org/2000/01/rdf-schema#label'), :name]
                ).graph(graph)

    result = repo.select(query) # array of hashes
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
