package fisw

class Thesis {

    String thesis_name
    String university_name
    String university_country
    String tutor_name
    String co_tutor_name
    String dir_file
    String type

    static belongsTo = User

    static constraints = {

	thesis_name()
	university_name()
	university_country()
	tutor_name()
	co_tutor_name nullable:true
	dir_file()
	type inList: ["Pregrado","Postgrado"]

    }
}
