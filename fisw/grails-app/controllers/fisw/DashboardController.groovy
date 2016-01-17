package fisw

import grails.plugin.springsecurity.annotation.Secured

@Secured(['IS_AUTHENTICATED_FULLY'])
class DashboardController {
    def index() { 
    	def usuarios = User.list()
    		[usuarios:usuarios]
    }
    def changeLocale = {
            java.util.Locale.setDefault(new Locale(params.lang, params.country))
            redirect(view:"/")
    }
    
}
