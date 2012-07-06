#
# app_delegate.rb
# HaHa
#
# Created by Marcos Trovilho on 5/12/12.
# see LICENSE for details.
#

class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
  	@window = UIWindow.alloc.initWithFrame UIScreen.mainScreen.bounds
    nelsonViewController = NelsonViewController.alloc.init
    @window.setRootViewController nelsonViewController
    @window.makeKeyAndVisible
    true
  end
end
