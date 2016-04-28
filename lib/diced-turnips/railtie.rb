module DicedTurnips
  class Railtie < ::Rails::Railtie
    rake_tasks do
      require "diced-turnips/tasks"
    end
  end
end
