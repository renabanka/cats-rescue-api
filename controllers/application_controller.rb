class ApplicationController < Sinatra::Base

  require 'bundler'
  Bundler.require

  ActiveRecord::Base.establish_connection(
      :adapter => 'mysql2',
      :database => 'Cats'

  )

  set :public_folder, File.expand_path('../../public', __FILE__)
  set :views, File.expand_path('../../views', __FILE__)

  enable :sessions

  not_found do
    erb :not_found
  end

  get '/' do
    erb :home
  end

end