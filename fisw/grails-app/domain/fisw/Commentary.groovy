package fisw

class Commentary {

    String text
    Date date
    
    static belongsTo = User

    static constraints = {
	text()
	date()
    }
}
