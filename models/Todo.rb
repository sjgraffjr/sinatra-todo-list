class Todo < ActiveRecord::Base
	## don't have always do this part but if active user cant find your table this will help

	self.table_name = 'todos'

end