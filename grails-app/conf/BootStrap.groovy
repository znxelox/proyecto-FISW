import fisw.*
class BootStrap {

    def init = { servletContext ->
        def usuarioRol= new Rol('ROLE_USER').save(failOnError: true)
        def adminRol= new Rol('ROLE_ADMIN').save(failOnError: true)

        def usuarioUser=new Usuario('masterduck7@live.cl','user').save(failOnError: true)
        def adminUser= new Usuario('masterduck@live.cl','admin').save(failOnError: true)

        UsuarioRol.create usuarioUser,usuarioRol,true
        UsuarioRol.create adminUser,adminRol,true
    }
    def destroy = {
    }
}
