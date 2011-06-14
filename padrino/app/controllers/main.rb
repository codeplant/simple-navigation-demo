SimpleNavigationApp.controller do
    
  get '/:all' do
    render 'index'
  end
  
  get '/:primary/:secondary' do
    render 'index'
  end
  
end