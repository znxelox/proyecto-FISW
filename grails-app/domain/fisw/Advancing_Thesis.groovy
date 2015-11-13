package fisw

class Advancing_Thesis {

    String thesis_name
    String description
    String dir_file
    String link_thesis

    static hasMany = [users:User]

    static constraints = {

	thesis_name()
	description()
	dir_file nullable:true
	link_thesis nullable:true
    }
}
