class ScrapeurController < ApplicationController
	def index
		@all_currency = Cripto.all
	end

	def search
		if Cripto.where("lower(currency) = ?", params[:currency].downcase).exists?
		    flash[:info] = "le prix pour le " + params[:currency] + " et de " + Cripto.where("lower(currency) = ?", params[:currency].downcase).first.value + " $"
		else
		    flash[:erreur] = "Monnais introuvable"
		end
		redirect_to request.referrer
	end

	def refrech 
		Trader_De_L_Obscur.new.perform
		redirect_to request.referrer
	end

end
