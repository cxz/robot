File.tap do |f|
  Dir[f.expand_path(f.join(f.dirname(__FILE__), 'robot', '*.rb'))].each do |file|
    require file
  end
end
