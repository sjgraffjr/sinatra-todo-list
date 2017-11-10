class ApplicationController < Sinatra::Base

	require "bundler"
	Bundler.require
	require 'sinatra/cross_origin'

	ActiveRecord::Base.establish_connection(
		:adapter=> 'postgresql',
		:database => 'todo'

		)
	get '/' do 

		'hi Stephen, making a todo'

	end
	set :bind, '0.0.0.0'
		configure do
		enable :cross_origin
		end
		before do
		response.headers['Access-Control-Allow-Origin'] = '*'
		end

		# routes...
		options "*" do
		response.headers["Allow"] = "GET, POST, OPTIONS, PUT, PATCH, DELETE"
		response.headers["Access-Control-Allow-Methods"] = "GET, POST, OPTIONS, PUT, PATCH, DELETE"
		response.headers["Access-Control-Allow-Headers"] = "Authorization, Content-Type, Accept, X-User-Email, X-Auth-Token"
		response.headers["Access-Control-Allow-Origin"] = "*"
		200
		end

end 