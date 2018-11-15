class FoundAnimalsController < ApplicationController
  def index
    if params[:incident]
      @found_animals = FoundAnimal.where("incident_id = ?", params[:incident].to_i)
    else
      @found_animals = FoundAnimal.all
    end
  end

  def show
    @animal = FoundAnimal.find(params[:id])
  end

  def new
    @incidents = Incident.all
    @health_status = Animal::HEALTH
    @species = Animal::SPECIES
    #@user = session.user
  end

  def create
    animal = FoundAnimal.new
    animal.species = params[:species]
    animal.date_found = params[:date_found]
    animal.location_found = params[:location_found]
    animal.location_current = params[:location_current]
    animal.lat = Geocoder.coordinates(animal.location_current).first
    animal.long = Geocoder.coordinates(animal.location_current).last
    animal.image = params[:image]
    animal.health_status = params[:health_status]
    animal.incident_id = params[:incident_id]
    animal.user_id = 1 #should be session user id
    animal.tags = params[:tags].split(' ')
    animal.tags.unshift(animal.species)
    animal.tags.unshift(animal.health_status)
    animal.tags.unshift(animal.location_found)
    animal.tags = animal.tags.uniq
    animal.tags.map! do |tag|
      tag.downcase
    end
    animal.reunited = false
    if animal.save
      redirect_to(found_animals_path)
    else
      redirect_to '/login'
    end
  end

  def edit
    @animal = FoundAnimal.find(params[:id])
    @incidents = Incident.all
    @animal_species = Animal::SPECIES
    @health_status = Animal::HEALTH
  end

  def update
    animal = FoundAnimal.find(params[:id])
    animal.species = params[:species]
    animal.date_found = params[:date_found]
    animal.location_found = params[:location_found]
    animal.location_current = params[:location_current]
    animal.image = params[:image]
    animal.health_status = params[:health_status]
    animal.incident_id = params[:incident_id]
    animal.tags = params[:tags].split(' ')
    animal.tags.unshift(animal.species)
    animal.tags.unshift(animal.health_status)
    animal.tags.unshift(animal.location_found)
    animal.tags = animal.tags.uniq
    animal_tags.map! do |tag|
      tag.downcase
    end
    animal.reunited = params[:reunited]
    if animal.save
      redirect_to(found_animal_path(animal))
    else
      render :edit
    end
  end


end
