package fisw

class Usuario implements Serializable {

	private static final long serialVersionUID = 1

	transient springSecurityService

	String username
	String password 
	boolean enabled
	boolean accountExpired
	boolean accountLocked = true
	boolean passwordExpired

	Usuario(String username, String password) {
		this()
		this.username = username
		this.password = password
	}

	@Override
	int hashCode() {
		username?.hashCode() ?: 0
	}

	@Override
	boolean equals(other) {
		is(other) || (other instanceof Usuario && other.username == username)
	}

	@Override
	String toString() {
		username
	}

	Set<Rol> getAuthorities() {
		UsuarioRol.findAllByUsuario(this)*.rol
	}

	def beforeInsert() {
		encodePassword()
	}

	def beforeUpdate() {
		if (isDirty('password')) {
			encodePassword()
		}
	}

	protected void encodePassword() {
		password = springSecurityService?.passwordEncoder ? springSecurityService.encodePassword(password) : password
	}

	static transients = ['springSecurityService']

	static constraints = {
		username blank: false, unique: true , email:true
		password blank: false, password:true
	}

	static mapping = {
		password column: '`password`'
	}
}
