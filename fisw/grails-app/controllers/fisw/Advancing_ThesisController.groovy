package fisw

import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
@Secured(['permitAll'])
class Advancing_ThesisController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Advancing_Thesis.list(params), model:[advancing_ThesisInstanceCount: Advancing_Thesis.count()]
    }

    def show(Advancing_Thesis advancing_ThesisInstance) {
        respond advancing_ThesisInstance
    }

    def create() {
        respond new Advancing_Thesis(params)
    }

    @Transactional
    def save(Advancing_Thesis advancing_ThesisInstance) {
        if (advancing_ThesisInstance == null) {
            notFound()
            return
        }

        if (advancing_ThesisInstance.hasErrors()) {
            respond advancing_ThesisInstance.errors, view:'create'
            return
        }

        advancing_ThesisInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'advancing_Thesis.label', default: 'Advancing_Thesis'), advancing_ThesisInstance.id])
                redirect advancing_ThesisInstance
            }
            '*' { respond advancing_ThesisInstance, [status: CREATED] }
        }
    }

    def edit(Advancing_Thesis advancing_ThesisInstance) {
        respond advancing_ThesisInstance
    }

    @Transactional
    def update(Advancing_Thesis advancing_ThesisInstance) {
        if (advancing_ThesisInstance == null) {
            notFound()
            return
        }

        if (advancing_ThesisInstance.hasErrors()) {
            respond advancing_ThesisInstance.errors, view:'edit'
            return
        }

        advancing_ThesisInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Advancing_Thesis.label', default: 'Advancing_Thesis'), advancing_ThesisInstance.id])
                redirect advancing_ThesisInstance
            }
            '*'{ respond advancing_ThesisInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Advancing_Thesis advancing_ThesisInstance) {

        if (advancing_ThesisInstance == null) {
            notFound()
            return
        }

        advancing_ThesisInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Advancing_Thesis.label', default: 'Advancing_Thesis'), advancing_ThesisInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'advancing_Thesis.label', default: 'Advancing_Thesis'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
