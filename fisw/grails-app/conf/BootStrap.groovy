import fisw.*
class BootStrap {

    def init = { servletContext ->
        def usuarioRol= new Rol('ROLE_USER').save(failOnError: true)
        def adminRol= new Rol('ROLE_ADMIN').save(failOnError: true)
	def dirRol = new Rol('ROLE_DIRECTOR').save(failOnError: true)

        def adminUser= new Usuario(username: 'admin@live.cl',password: 'admin',enabled: true, accountExpired: false, accountLocked: false, passwordExpired: false).save(failOnError: true)
	def directorUser= new Usuario(username: 'director@live.cl',password: 'director',enabled: true, accountExpired: false, accountLocked: false, passwordExpired: false).save(failOnError: true)

	def user1 = new User(nombre: 'Administrador',user:adminUser).save()
	def user2 = new User(nombre: 'Director',user:directorUser).save()

	UsuarioRol.create user1, adminRol, true
	UsuarioRol.create user2, dirRol, true

    }
    def destroy = {
    }
}
