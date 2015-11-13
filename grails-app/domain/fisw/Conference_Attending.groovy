package fisw

class Conference_Attending {

    String name_conference
    String date
    String place
    String dir_file
    String paper_presentation_name

    static belongsTo = User

    static constraints = {
	name_conference()
	date()
	place()
	dir_file()
	paper_presentation_name nullable:true
    }
}
