package fisw

class Magazine_Publication {
    
    String associates_area
    String other
    String dir_file
    String authors
    String title
    String year
    String magazine
    String keywords

    static belongsTo = User

    static constraints = {
		
    	associates_area inList: ["Biotecnologia vegetal","Compuestos bioactivos","Microbiologia","Biotecnologia Ambiental","Otros"]
	other nullable:true
    	dir_file()
    	authors()
    	title()
        year()
        magazine()
        keywords()
    }
}
