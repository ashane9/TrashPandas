# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )

Rails.application.config.assets.precompile += %w( mobile.scss )
Rails.application.config.assets.precompile += %w( rtc.scss )
Rails.application.config.assets.precompile += %w( grid.js )
Rails.application.config.assets.precompile += %w( version.js )
Rails.application.config.assets.precompile += %w( detector.js )
Rails.application.config.assets.precompile += %w( formatinf.js )
Rails.application.config.assets.precompile += %w( errorlevel.js )
Rails.application.config.assets.precompile += %w( bitmat.js )
Rails.application.config.assets.precompile += %w( datablock.js )
Rails.application.config.assets.precompile += %w( bmparser.js )
Rails.application.config.assets.precompile += %w( datamask.js )
Rails.application.config.assets.precompile += %w( rsdecoder.js )
Rails.application.config.assets.precompile += %w( gf256poly.js )
Rails.application.config.assets.precompile += %w( gf256.js )
Rails.application.config.assets.precompile += %w( decoder.js )
Rails.application.config.assets.precompile += %w( qrcode.js )
Rails.application.config.assets.precompile += %w( findpat.js )
Rails.application.config.assets.precompile += %w( alignpat.js )
Rails.application.config.assets.precompile += %w( databr.js )
Rails.application.config.assets.precompile += %w( mobile-qr-handling.js )
Rails.application.config.assets.precompile += %w( eagle.js )
Rails.application.config.assets.precompile += %w( flight4.png )