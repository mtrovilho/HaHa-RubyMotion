$:.unshift("/Library/RubyMotion/lib")
require 'motion/project'

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'HaHa'
  app.identifier = "com.trovilho.HaHa"
  app.interface_orientations = [:portrait]
  
  app.icons += ['icon.png', 'icon@2x.png']
  app.frameworks << 'AVFoundation'
  app.prerendered_icon = true
end
