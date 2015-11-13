package fisw

class User extends Usuario {

    String nombre
    String estudios_pregrado1
    String estudios_pregrado2
    String estudios_pregrado3
    String estudios_postgrado1
    String estudios_postgrado2
    String estudios_postgrado3
    String area_investigacion
    String cargo
    String otro
    String foto

    Report report
    static hasMany = [magazine_publications:Magazine_Publication,conferences_attendings:Conference_Attending,book_publications:Book_Publication,multimedias:Multimedia,
thesiss:Thesis,project_user:Project_User,advancing_thesiss:Advancing_Thesis]
    static belongsTo = Advancing_Thesis

    static constraints = {
	nombre()
	estudios_pregrado1 nullable:true
	estudios_pregrado2 nullable:true
	estudios_pregrado3 nullable:true
	estudios_postgrado1 nullable:true
	estudios_postgrado2 nullable:true
	estudios_postgrado3 nullable:true
	area_investigacion inList:["Biotecnologia vegetal","Compuestos bioactivos","Microbiologia","Biotecnologia Ambiental","Otros"], nullable:true
	cargo inList:["Estudiante Pregrado","Estudiante Postgrado","Trabajador","Colaborador Internacional","Colaborador Nacional","Jefe de Laboratorio","Otro"], nullable:true
	otro nullable:true
	foto nullable:true
	report nullable:true
    }

    User(String username, String password,String nombre,String estudios_pregrado1,String estudios_pregrado2,String estudios_pregrado3,String estudios_postgrado1,String estudios_postgrado2,String estudios_postgrado3,String area_investigacion,String cargo,String otro, String foto) {
        super(username, password)
        this.nombre = nombre
        this.estudios_pregrado1 = estudios_pregrado1
        this.estudios_pregrado2 = estudios_pregrado2
        this.estudios_pregrado3 = estudios_pregrado3
        this.estudios_postgrado1 = estudios_postgrado1
        this.estudios_postgrado2 = estudios_postgrado2
        this.estudios_postgrado3 = estudios_postgrado3
        this.area_investigacion = area_investigacion
        this.cargo = cargo
	this.otro = otro
	this.foto = foto
    }

}
