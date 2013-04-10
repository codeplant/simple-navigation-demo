SimpleNavigationApp.controller do
    
  get '/*' do
    render 'index'
  end
  
  get '/:primary/:secondary' do
    render 'index'
  end
  
end