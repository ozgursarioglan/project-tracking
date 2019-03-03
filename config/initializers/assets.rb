# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')


Rails.application.config.assets.precompile += %w( fonts/feather/feather.min.css )
Rails.application.config.assets.precompile += %w( libs/highlight.js/styles/vs2015.css )
Rails.application.config.assets.precompile += %w( libs/quill/dist/quill.core.css )
Rails.application.config.assets.precompile += %w( libs/quill/dist/quill.core.css )
Rails.application.config.assets.precompile += %w( libs/select2/dist/css/select2.min.css )
Rails.application.config.assets.precompile += %w( libs/flatpickr/dist/flatpickr.min.css )

Rails.application.config.assets.precompile += %w( css/theme.min.css )
Rails.application.config.assets.precompile += %w( css/theme-dark.min.css )

Rails.application.config.assets.precompile += %w( libs/jquery/dist/jquery.min.js )
Rails.application.config.assets.precompile += %w( libs/bootstrap/dist/js/bootstrap.bundle.min.js )
Rails.application.config.assets.precompile += %w( libs/chart.js/dist/Chart.min.js )
Rails.application.config.assets.precompile += %w( libs/chart.js/Chart.extension.min.js )
Rails.application.config.assets.precompile += %w( libs/highlightjs/highlight.pack.min.js )
Rails.application.config.assets.precompile += %w( libs/flatpickr/dist/flatpickr.min.js )
Rails.application.config.assets.precompile += %w( libs/jquery-mask-plugin/dist/jquery.mask.min.js )
Rails.application.config.assets.precompile += %w( libs/list.js/dist/list.min.js )
Rails.application.config.assets.precompile += %w( libs/quill/dist/quill.min.js )
Rails.application.config.assets.precompile += %w( libs/dropzone/dist/min/dropzone.min.js )
Rails.application.config.assets.precompile += %w( libs/select2/dist/js/select2.min.js )

Rails.application.config.assets.precompile += %w( js/theme.min.js )

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )
