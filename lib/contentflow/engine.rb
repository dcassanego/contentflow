module Contentflow  
  class Engine < ::Rails::Engine
    initializer 'contentflow-setup', :group => :all do |app|
      if config.respond_to? :sass
        config.sass.load_paths << File.join(config.root, 'vendor')
      end
    end
  end
end