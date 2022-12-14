class AnimalsController < ApplicationController
    def index
        animals = Animal.all
        render json: animals
    end

    def show
        animals = Animal.find(params[:id])
        render json: animals
    end

    def create
        animals = Animal.create(animal_params)
        if animals.valid?
            render json: animals
        else
            render json: errors
        end
    end

    def destroy
        animal = Animal.find(params[:id])
        if animal.destroy
            render json: animal
        else
            render json: errors
        end
    end

    def update
        animal = Animal.find(params[:id])
        animal.update(animal_params)
            if animal.valid?
                render json: animal
            else
                render json: errors
            end
        end
        

    private
        def animal_params
        params.require(:animal).permit(:strings, :common_name, :scientific_binomial)
        end
end
    
