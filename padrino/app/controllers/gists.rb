SimpleNavigationApp.controllers :gists do

  layout :gists
  
  get :show, :with => :id do
    @gist = params[:id]
    render 'gist/load'
  end
  
  
end
