package fisw

class Advancing_Thesis {

    String thesis_name
    String description
    String dir_file
    String link_thesis

    static hasMany = [advancing_thesis_user:Advancing_Thesis_User,commentaries:Commentary]

    static constraints = {

	thesis_name()
	description()
	dir_file nullable:true,maxSize: 1024 * 1024 * 2
	link_thesis nullable:true
    }
}
