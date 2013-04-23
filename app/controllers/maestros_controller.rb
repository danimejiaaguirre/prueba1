class MaestrosController < ApplicationController

  before_filter :find_maestro
  helper_method :sort_column, :sort_direction 


  def index
    if params[:limit] == nil then
      params[:limit] = 2
    end
    @maestros = Maestro.order(sort_column + " " + sort_direction).search(params[:search]).page(params[:page]).per_page(params[:limit].to_i)
   respond_to do |format| 
   format.html # index.html.erb 
   format.json { render :json => @maestros} 
   end
  end

  
  def show
      @maestro = Maestro.find(params[:id])
  end

  def new
      @maestro = Maestro.new
  end

  def edit
      @maestro = Maestro.find(params[:id])
  end

  def create
      @maestro = Maestro.new(params[:maestro])
      render :action => :new unless @maestro.save
  end

  def update
      @maestro = Maestro.find(params[:id])
      render :action => :edit unless @maestro.update_attributes(params[:maestro])
  end

  def destroy
      @maestro = Maestro.find(params[:id])
      @maestro.destroy
  end
  
  def find_maestro
      @maestro = Maestro.find(params[:id]) if params[:id]
  end

  def sort_column
    Maestro.column_names.include?(params[:sort]) ? params[:sort] : "nombre"
  end

  def sort_direction 
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end
end

