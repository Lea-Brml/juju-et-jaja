class ContactController < ApplicationController


  def new

        @actualite = Actualite.limit(3).order(created_at: :desc)

  end



  def create



    @contact = Contact.create(name: params[:name] , firstname: params[:firstname] ,email: params[:email], message: params[:message], phone: params[:phone])

   if @contact.save
      redirect_to root_path
      flash[:success] = "Votre demande de contact nous a bien été transmise. Nous vous recontacterons dans les meilleurs délais."
    else
      redirect_to root_path( :anchor => 'contact')
      flash[:danger] = "Une erreur s'est produite. Votre message ne s'est pas envoyé, veuillez réessayer et remplir tous les champs requis."
    end

  end



  def index

    @contact = Contact.all

  end

end
