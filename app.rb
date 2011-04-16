require 'rubygems'
require 'sinatra'
require 'rforce'


#forms de destinos tv

  get '/ayuda' do

        haml :form_ayuda
    end
    
    
	post '/ayuda' do
		     # name = params[:name]
		      fname = params[:fname]
		      email= params[:email]
		      phone = params[:phone]
		      menu_medio = params[:menu_medio]
		      coment = params[:coment]
		      amigo = params[:amigo]
		      menu_motivo = params[:menu_motivo]
		      
		         
		      
				  binding = RForce::Binding.new \
     'https://www.salesforce.com/services/Soap/u/20.0'

   				binding.login \
     'salesforce@destinostv.com', 'company1Ax1UThsF7WR3ek78vvR0zRjV'
   
   
     			contacto = [
                    :type,      'Contacto__c',
                    :name,      "#{fname}",
                    :NombreCompleto__c,      "#{fname}",
                    :CorreoElectronico__c,      "#{email}",
                    :Telefono__c,      "#{phone}",
                    :MedioContacto__c,      "#{menu_medio}",
                    :Comentarios__c, "#{coment}",
                    :SuscribirAmigoDestinos__c, "#{amigo}",
                    :Formulario__c, "Ayuda",
                    :MotivoConsulta__c, "#{menu_motivo}"
                   ]

     			binding.create :sObject => contacto		      
					
		      haml :red1
		  end


  get '/amigo' do

        haml :form_amigo
    end
    
    
	post '/amigo' do
		     # name = params[:name]
		      fname = params[:fname]
		      email= params[:email]
		      phone = params[:phone]
		      pais = params[:pais]
		      ciudad = params[:ciudad]
		      amigo = params[:amigo]
		      fecha = params[:fecha]
		      
		         
		      
				  binding = RForce::Binding.new \
     'https://www.salesforce.com/services/Soap/u/20.0'

   				binding.login \
     'salesforce@destinostv.com', 'company1Ax1UThsF7WR3ek78vvR0zRjV'
   
   
     			contacto = [
                    :type,      'Contacto__c',
                    :name,      "#{fname}",
                    :NombreCompleto__c,      "#{fname}",
                    :CorreoElectronico__c,      "#{email}",
                    :Telefono__c,      "#{phone}",
                    :SuscribirAmigoDestinos__c, "#{amigo}",
                    :Formulario__c, "Amigo",
                    :FechaNacimiento__c, "#{fecha}",
                    :Ciudad__c, "#{ciudad}",
                    :Pais__c, "#{pais}"
                   ]

     			binding.create :sObject => contacto		      
					
		      haml :red2
		  end

  get '/paq_email' do

        haml :form_paq_email
    end
    
    
	post '/paq_email' do
		     # name = params[:name]
		      fname = params[:fname]
		      email= params[:email]
		      phone = params[:phone]
		      cant_ninos = params[:cant_ninos]
		      cant_adultos = params[:cant_adultos]
		      amigo = params[:amigo]
		      fecha = params[:fecha]
		      
		         
		      
				  binding = RForce::Binding.new \
     'https://www.salesforce.com/services/Soap/u/20.0'

   				binding.login \
     'salesforce@destinostv.com', 'company1Ax1UThsF7WR3ek78vvR0zRjV'
   
   
     			contacto = [
                    :type,      'Contacto__c',
                    :name,      "#{fname}",
                    :NombreCompleto__c,      "#{fname}",
                    :CorreoElectronico__c,      "#{email}",
                    :Telefono__c,      "#{phone}",
                    :CantidadAdultos__c, "#{cant_adultos}",
                    :CantidadNinos__c, "#{cant_ninos}",
                    :SuscribirAmigoDestinos__c, "#{amigo}",
                    :Formulario__c, "PaqueteEmail",
                    :MedioContacto__c, "CorreoElectronico"
                   ]

     			binding.create :sObject => contacto		      
					
		      haml :red3
		  end


  get '/paq_tel' do

        haml :form_paq_tel
    end
    
    
	post '/paq_tel' do
		     # name = params[:name]
		      fname = params[:fname]
		      email= params[:email]
		      phone = params[:phone]
		      cant_ninos = params[:cant_ninos]
		      cant_adultos = params[:cant_adultos]
		      amigo = params[:amigo]
		      fecha = params[:fecha]
		      
		         
		      
				  binding = RForce::Binding.new \
     'https://www.salesforce.com/services/Soap/u/20.0'

   				binding.login \
     'salesforce@destinostv.com', 'company1Ax1UThsF7WR3ek78vvR0zRjV'
   
   
     			contacto = [
                    :type,      'Contacto__c',
                    :name,      "#{fname}",
                    :NombreCompleto__c,      "#{fname}",
                    :CorreoElectronico__c,      "#{email}",
                    :Telefono__c,      "#{phone}",
                    :CantidadAdultos__c, "#{cant_adultos}",
                    :CantidadNinos__c, "#{cant_ninos}",
                    :SuscribirAmigoDestinos__c, "#{amigo}",
                    :Formulario__c, "PaqueteTel",
                    :MedioContacto__c, "Telefono"
                   ]

     			binding.create :sObject => contacto		      
					
		      haml :red4
		  end


  get '/contacto' do

        haml :form_contacto
    end
    
    
	post '/contacto' do
		     # name = params[:name]
		      fname = params[:fname]
		      email= params[:email]
		      phone = params[:phone]
		      menu_medio = params[:menu_medio]
		      coment = params[:coment]
		      amigo = params[:amigo]
		      menu_motivo = params[:menu_motivo]
		      
		         
		      
				  binding = RForce::Binding.new \
     'https://www.salesforce.com/services/Soap/u/20.0'

   				binding.login \
     'salesforce@destinostv.com', 'company1Ax1UThsF7WR3ek78vvR0zRjV'
   
   
     			contacto = [
                    :type,      'Contacto__c',
                    :name,      "#{fname}",
                    :NombreCompleto__c,      "#{fname}",
                    :CorreoElectronico__c,      "#{email}",
                    :Telefono__c,      "#{phone}",
                    :MedioContacto__c,      "#{menu_medio}",
                    :Comentarios__c, "#{coment}",
                    :SuscribirAmigoDestinos__c, "#{amigo}",
                    :Formulario__c, "Contacto",
                    :MotivoConsulta__c, "#{menu_motivo}"
                   ]

     			binding.create :sObject => contacto		      
					
		      haml :red5
		  end


