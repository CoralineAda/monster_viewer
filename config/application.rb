require File.expand_path('../boot', __FILE__)

require "active_model/railtie"
require "active_job/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "sprockets/railtie"
require "rails/test_unit/railtie"

Bundler.require(*Rails.groups)

module MonsterViewer
  class Application < Rails::Application
		config.assets.path << << Rails.root.join("vendor","assets","bower_components")
		config.assets.paths << Rails.root.join("vendor","assets","bower_components","bootstrap-sass-official","assets","fonts")
		config.assets.precompile << %r(.*.(?:eot|svg|ttf|woff)$)
  end
end
