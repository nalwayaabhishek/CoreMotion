class CoreMotionController < UIViewController
  def viewDidLoad
    view.backgroundColor = UIColor.lightGrayColor

    adding_label
    
    @motionManager = CMMotionManager.alloc.init

    if (@motionManager.isDeviceMotionAvailable)
      queue = NSOperationQueue.alloc.init

      @motionManager.startDeviceMotionUpdatesToQueue(queue, withHandler:lambda do |motion, error|
        Dispatch::Queue.main.sync do
          @label0.text = "Roll-Pitch-Yaw"
          @label1.text = "Roll: " + motion.attitude.roll.to_s
          @label2.text = "Pitch: " + motion.attitude.pitch.to_s
          @label3.text = "Yaw: " +motion.attitude.yaw.to_s
          @label4.text = "Gravity"
          @label5.text = "x: " + motion.gravity.x.to_s
          @label6.text = "y: " + motion.gravity.y.to_s
          @label7.text = "z: " +motion.gravity.z.to_s
          @label8.text = "User Acceleration"
          @label9.text = "x: " + motion.userAcceleration.x.to_s
          @label10.text = "y: " + motion.userAcceleration.y.to_s
          @label11.text = "z: " +motion.userAcceleration.z.to_s 
        end

      end)
    else
      p "Device Motion is not available: You're likely running this in a simulator"
      @label1.text = "Device Motion is not available: You're likely running this in a simulator"
    end
  end


  def viewDidUnload
    @motionManager = nil
  end

  def shouldAutorotateToInterfaceOrientation(interfaceOrientation)
    true
  end
  def adding_label
    @label0 =  UILabel.alloc.initWithFrame( [[25, 10], [250, 40]] )
    @label0.backgroundColor = UIColor.clearColor
    @label1 =  UILabel.alloc.initWithFrame( [[25, 30], [250, 40]] )
    @label1.backgroundColor = UIColor.clearColor
    @label2 =  UILabel.alloc.initWithFrame( [[25, 60], [250, 40]] )
    @label2.backgroundColor = UIColor.clearColor
    @label3 =  UILabel.alloc.initWithFrame( [[25, 90], [250, 40]] )
    @label3.backgroundColor = UIColor.clearColor
    @label4 =  UILabel.alloc.initWithFrame( [[25, 120], [250, 40]] )
    @label4.backgroundColor = UIColor.clearColor
    @label5 =  UILabel.alloc.initWithFrame( [[25, 150], [250, 40]] )
    @label5.backgroundColor = UIColor.clearColor
    @label6 =  UILabel.alloc.initWithFrame( [[25, 180], [250, 40]] )
    @label6.backgroundColor = UIColor.clearColor
    @label7 =  UILabel.alloc.initWithFrame( [[25, 210], [250, 40]] )
    @label7.backgroundColor = UIColor.clearColor         
    @label8 =  UILabel.alloc.initWithFrame( [[25, 240], [250, 40]] )
    @label8.backgroundColor = UIColor.clearColor
    @label9 =  UILabel.alloc.initWithFrame( [[25, 270], [250, 40]] )
    @label9.backgroundColor = UIColor.clearColor
    @label10 =  UILabel.alloc.initWithFrame( [[25, 300], [250, 40]] )
    @label10.backgroundColor = UIColor.clearColor
    @label11 =  UILabel.alloc.initWithFrame( [[25, 330], [250, 40]] )
    @label11.backgroundColor = UIColor.clearColor         
    @label12 =  UILabel.alloc.initWithFrame( [[25, 360], [250, 40]] )
    @label12.backgroundColor = UIColor.clearColor
    
    view.addSubview(@label0)
    view.addSubview(@label1)
    view.addSubview(@label2)
    view.addSubview(@label3)
    view.addSubview(@label4)
    view.addSubview(@label5)
    view.addSubview(@label6)
    view.addSubview(@label7)
    view.addSubview(@label8)
    view.addSubview(@label9)
    view.addSubview(@label10)
    view.addSubview(@label11)
    view.addSubview(@label12)

  end
end