require 'rubygems'
require 'sinatra'
require 'rforce'


#forms de destinos tv

get '/connect' do
    ENV['SHOWSOAP'] = 'true'
    email = 'salesforce@destinostv.com'
    password = 'company1'

     binding = RForce::Binding.new \
        'https://www.salesforce.com/services/Soap/u/21.0'

      binding.login \
        email, password
  
end

  get '/ayuda' do

        haml :form_ayuda
    end
    
    
	get '/ayudaRes' do
	   ENV['SHOWSOAP'] = 'true'
		      name = params[:fname]
		      apellido =  params[:apellido]
		      email= params[:email]
		      telefono = params[:telefono]
		      ciudad =  params[:ciudad]
		      pais =  params[:pais]
		      nacimiento =  params[:nacimiento]
		      canal =  params[:canal]
		      operadorCable =  params[:operadorCable]
		      motivo = params[:motivo]
		      formulario =  params[:formulario]
		      
		      solicitud   =  params[:solicitud]
          
		      
		     
		      
		      optIn = "false"
		   
		      if params[:optIn] == "on"
		        optIn = "true"
          end
     	
     	
     	      ENV['SHOWSOAP'] = 'true'
            email = 'salesforce@destinostv.com.test'
            password = 'company1'


             binding = RForce::Binding.new \
                'https://test.salesforce.com/services/Soap/u/21.0'

              binding.login \
                email, password
                
                 			contacto = [
                                :type,  'Prospecto__c',
                                :name,      name,
                                :Apellido__c,      apellido,
                                :Email__c,     email,
                                :Telefono__c,      telefono,
                                :Ciudad__c, ciudad,
                                :Pais__c, pais,
                                :OperadorCable__c , operadorCable,
                                :Canal__c, canal,
                                :Solicitud__c, solicitud,
                                :OptIn__c, optIn,
                                :Source__c, formulario,
                                :Subject__c, motivo
                               ]

             res= binding.create :sObject => contacto
      params[:optIn].inspect
		  end



