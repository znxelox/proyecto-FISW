package fisw

class Project {

    String ejecution_years
    String project_name
    String position_project
    String others

    static hasMany = [project_user:Project_User]

    static constraints = {

	ejecution_years()
	project_name()
	position_project()
	others()

    }
}
