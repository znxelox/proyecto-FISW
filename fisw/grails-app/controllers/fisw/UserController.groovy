package fisw

import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
@Secured(['permitAll'])
class UserController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond User.list(params), model:[userInstanceCount: User.count()]

    }
    def changeLocale = {
            java.util.Locale.setDefault(new Locale(params.lang, params.country))
            redirect(view:"/")
    }

    def buscador(){
        render view:'search'
    }

    def search(){
        def buscando = request.getParameter("buscar")
        def tipo = request.getParameter("tipo")

        if(buscando.empty){
            flash.message = "Ingrese una palabra"
            render view: 'search'
        }
        else{
            if(tipo == 'Persona'){
                def k= User.findByNombre(buscando)
                if(k != null){
                    render view: 'buscar_p' , model:[user: k]
                }
                
            }
            if(tipo == 'Archivo'){
                def k= Multimedia.findByName(buscando)
                if(k != null){
                    render view: 'buscar_p' , model:[multimedia: k]
                }

            }
            if(tipo == 'Cargo'){
                def k= User.findByCargo(buscando)
                if(k != null){
                    render view: 'buscar_c' , model:[user: k]
                }
            }
        }
    }

    def show(User userInstance) {
        respond userInstance
    }

    def create() {
        respond new Usuario(params)
    }

    @Transactional
    def save(User userInstance) {
        if (userInstance == null) {
            notFound()
            return
        }

        if (userInstance.hasErrors()) {
            respond userInstance.errors, view:'create'
            return
        }

        userInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'user.label', default: 'User'), userInstance.id])
                redirect userInstance
            }
            '*' { respond userInstance, [status: CREATED] }
        }
    }

    def edit(User userInstance) {
        respond userInstance
    }

    @Transactional
    def update(User userInstance) {
        if (userInstance == null) {
            notFound()
            return
        }

        if (userInstance.hasErrors()) {
            respond userInstance.errors, view:'edit'
            return
        }

        userInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'User.label', default: 'User'), userInstance.id])
                redirect userInstance
            }
            '*'{ respond userInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(User userInstance) {

        if (userInstance == null) {
            notFound()
            return
        }

        userInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'User.label', default: 'User'), userInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
