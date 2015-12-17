package fisw

class Advancing_Thesis {

    String thesis_name
    String description
    String link_thesis

    static hasMany = [advancing_thesis_user:Advancing_Thesis_User,commentaries:Commentary]

    static constraints = {

	thesis_name()
	description()
	link_thesis nullable:true
    }
}
