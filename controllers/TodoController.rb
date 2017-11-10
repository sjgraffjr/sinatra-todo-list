class TodoController < ApplicationController


	get '/' do 
		@todos = Todo.all

		@todos.to_json

	end

	post '/' do
		@todo = Todo.new
		@todo.task = params[:task]
		@todo.save
		puts params.inspect
		@todo.to_json

	end

	delete '/:id' do
		@todo = Todo.find_by(id: params[:id])
		@todo.delete
		'deleted'
	end

	put '/:id' do 
		@todo = Todo.find_by(id: params[:id])
		@todo.task = params[:task]
		@todo.save
		'edit'
	end


end 