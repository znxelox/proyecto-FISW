package fisw

class Multimedia {

    String name
    String description
    byte[] archivo
    String type

    static belongsTo = User

    static constraints = {

        name()
        description()
        archivo(maxSize: 204800)
        type inList: ["Foto","Video","Tesis","PDF"]

    }
}
