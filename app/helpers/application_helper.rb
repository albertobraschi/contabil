# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

	def page_title
		title = @page_title ? "| #{@page_title}" : ''
		%(<title>Painel de Controle #{title}</title>)
	end

	
end
