package fisw

class User extends Usuario {

    String nombre
    String estudios_pregrado
    String estudios_postgrado
    String cargo
    String area_investigacion

    static constraints = {
	nombre()
	estudios_pregrado()
	estudios_postgrado()
	cargo inList:["Estudiante Pregrado","Estudiante Postgrado","Colaborador Internacional","Colaborador Nacional","Jefe de Laboratorio"]
	area_investigacion()
    }

    User(String username, String password,String nombre,String estudios_pregrado,String estudios_postgrado,String cargo,String area_investigacion) {
        super(username, password)
        this.nombre = nombre
        this.estudios_pregrado = estudios_pregrado
        this.estudios_postgrado = estudios_postgrado
        this.cargo = cargo
        this.area_investigacion = area_investigacion
    }

}
