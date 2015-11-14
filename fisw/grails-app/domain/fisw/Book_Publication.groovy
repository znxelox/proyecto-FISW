package fisw

class Book_Publication {

    String title
    String author
    String isbn
    Integer year
    String dir_file
    String editorial

    static belongsTo = User

    static constraints = {

        title()
        author()
        isbn()
        year()
        dir_file()
        editorial()

    }
}
