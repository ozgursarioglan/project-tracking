# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

Rails.application.config.assets.precompile += %w( theme.css )
Rails.application.config.assets.precompile += %w( style.css )
Rails.application.config.assets.precompile += %w( bootstrap.css )
Rails.application.config.assets.precompile += %w( i-con.css )

Rails.application.config.assets.precompile += %w( ajax.js )
Rails.application.config.assets.precompile += %w( lazyload.config.js )
Rails.application.config.assets.precompile += %w( lazyload.js )
Rails.application.config.assets.precompile += %w( plugin.js )
Rails.application.config.assets.precompile += %w( theme.js )

Rails.application.config.assets.precompile += %w( libs/jquery/dist/jquery.min.js )

Rails.application.config.assets.precompile += %w( libs/bootstrap/dist/js/bootstrap.min.js )
Rails.application.config.assets.precompile += %w( libs/pace-progress/pace.min.js )
Rails.application.config.assets.precompile += %w( libs/pjax/pjax.js )

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )
