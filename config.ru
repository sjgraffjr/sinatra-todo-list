require 'sinatra/base'
require './controllers/ApplicationController'
require './models/Todo'
require './controllers/TodoController'
map('/'){run ApplicationController}
map('/todos') {run TodoController}