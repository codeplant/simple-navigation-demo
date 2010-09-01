SimpleNavigationApp.helpers do
  def example(options={}, &block)
    out = partial 'examples/header', :locals => {:options => options}
    out << capture_haml(&block)
    out << (partial 'examples/footer', :locals => {:options => options})
    out
  end
end