class CatController < ApplicationController

  get '/' do
    Cat.all.to_json
  end

  get '/:id' do
    @id = params[:id]
    Cat.find(@id).to_json
  end

  post '/cats' do
    @name = params[:name]
    @note = params[:note]
    @image = params[:image]


   @model = Cat.new
   @model.name = @name
   @model.note = @note
   @model.image = @image
   @model.save



  end


  patch '/:id' do
    @id = params[:id]
    @name = params[:name]
    @note = params[:note]
    @image = params[:image]



    @model = Cat.find(@id)
    @model.name = @name
    @model.note = @note
    @model.image = @image
    @model.save
    @model.to_json
  end

  delete '/:id' do
    @id = params[:id]
    @model = Cat.find(@id)
    @model.destroy
    {:message => "item has been destroyed"}.to_json
  end

end