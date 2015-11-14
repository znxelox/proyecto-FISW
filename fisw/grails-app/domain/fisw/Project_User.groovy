package fisw

class Project_User {

    Project project
    User user
    
    String position_project
    Integer implementation_years

    static constraints = {
	position_project()
	implementation_years()
    }
}
