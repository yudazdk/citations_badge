# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require "json"

citations_path = Rails.root.join("db/data/helix_lab_instruments__p_1000__sample_records.json")
citations = JSON.parse(File.read(citations_path))

citations.each do |citation_attributes|
  citation = Citation.find_or_initialize_by(doi: citation_attributes.fetch("doi"))
  citation.assign_attributes(citation_attributes)
  citation.save!
end
