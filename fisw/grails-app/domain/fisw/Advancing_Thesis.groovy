package fisw

class Advancing_Thesis {

    String thesis_name
    String description
    byte[] dir_file
    String link_thesis

    static hasMany = [advancing_thesis_user:Advancing_Thesis_User]

    static constraints = {

	thesis_name()
	description()
	dir_file nullable:true,maxSize: 1024 * 1024 * 2
	link_thesis nullable:true
    }
}
