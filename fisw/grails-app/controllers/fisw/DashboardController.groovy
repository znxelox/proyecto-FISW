package fisw

import grails.plugin.springsecurity.annotation.Secured

@Secured(['IS_AUTHENTICATED_FULLY'])
class DashboardController {

    def index() { 
    	def usuarios = User.list()
    		[usuarios:usuarios]
    }
}
