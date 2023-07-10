# lib/tasks/populate_models.rake

task populate_models: :environment do
  Division.populate_division
  Book.populate_from_api
  Chapter.populate_from_api
  Verse.populate_from_api('NIV')
end
