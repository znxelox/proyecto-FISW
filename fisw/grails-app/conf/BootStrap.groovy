import fisw.*
class BootStrap {

    def init = { servletContext ->
        def usuarioRol= new Rol('ROLE_USER').save(failOnError: true)
        def adminRol= new Rol('ROLE_ADMIN').save(failOnError: true)
	def dirRol = new Rol('ROLE_DIRECTOR').save(failOnError: true)

        def adminUser= new Usuario(username: 'masterduck@live.cl',password: 'admin',enabled: true, accountExpired: false, accountLocked: false, passwordExpired: false).save(failOnError: true)
	def user1 = new User(nombre: 'Luis',user:adminUser).save()
	UsuarioRol.create user1, adminRol, true
    }
    def destroy = {
    }
}
