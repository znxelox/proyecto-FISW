package fisw

class Multimedia {

    String name
    String description
    String dir_file
    String type

    static belongsTo = User

    static constraints = {

        name()
        description()
        dir_file()
        type inList: ["Foto","Video"]

    }
}
