#
# nelson_view_controller.rb
# HaHa
#
# Created by Marcos Trovilho on 5/12/12.
# see LICENSE for details.
#

class NelsonViewController < UIViewController
  
  def viewDidLoad
    setupBgView
    setupButton
    setupAudioPlayer
  end
  
  def setupBgView
    bgImg = UIImage.imageNamed 'nelson-bg'
    @bgImgView = UIImageView.alloc.initWithImage bgImg
    self.view.addSubview @bgImgView
  end
  
  def setupButton
    @hahaBtn = UIButton.buttonWithType UIButtonTypeCustom
    @hahaBtn.frame = [[6, 52], [236, 141]]
    @hahaBtn.addTarget(self, action:'hahaBtnTouched:', forControlEvents:UIControlEventTouchUpInside)
    self.view.addSubview @hahaBtn
  end
  
  def setupAudioPlayer
    hahaPath = NSBundle.mainBundle.pathForResource("haha", ofType:"mp3")
    hahaURL  = NSURL.alloc.initFileURLWithPath hahaPath
    error    = Pointer.new '@'
    @player  = AVAudioPlayer.alloc.initWithContentsOfURL(hahaURL, error:error)
    @player.prepareToPlay unless error
  end
  
  def hahaBtnTouched(sender)
    unless @player.isPlaying
      @player.play
    else
      @player.stop
      @player.prepareToPlay
    end
  end
  
end
