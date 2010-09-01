SimpleNavigation::Configuration.run do |navigation|  
  navigation.items do |primary|
    primary.item :books, 'Books', '/books' do |books|
      books.item :fiction, 'Fiction', '/books/fiction'
      books.item :history, 'History', '/books/history'
      books.item :sports, 'Sports', '/books/sports'
    end
    primary.item :music, 'Music', '/music' do |music|
      music.item :rock, 'Rock', '/music/rock'
      music.item :pop, 'Pop', '/music/pop'
      music.item :alternative, 'Alternative', '/music/alternative'
    end
    primary.item :dvds, 'Dvds', '/dvds' do |dvds|
      dvds.item :drama, 'Drama', '/dvds/drama'
      dvds.item :action, 'Action', '/dvds/action'
      dvds.item :comedy, 'Comedy', '/dvds/comedy'
    end    
  end
end