class ButtonController < UIViewController

    def viewDidLoad
        margin = 20
    
        @state = UILabel.new
        @state.font = UIFont.systemFontOfSize(30)
        @state.text = 'Hello to you!'
        @state.textAlignment = UITextAlignmentCenter
        @state.textColor = UIColor.whiteColor
        @state.backgroundColor = UIColor.clearColor
        @state.frame = [[margin, 200], [view.frame.size.width - margin * 2, 40]]
        view.addSubview(@state)

        @input_field = UITextField.alloc.initWithFrame([[margin, 260], [view.frame.size.width-margin*2, 40]])
        @input_field.textColor = UIColor.blackColor
        @input_field.backgroundColor = UIColor.whiteColor
        @input_field.setBorderStyle UITextBorderStyleRoundedRect
        view.addSubview(@input_field)

        @action = UIButton.buttonWithType(UIButtonTypeRoundedRect)
        @action.setTitle('Say Hello!', forState:UIControlStateNormal)
        @action.addTarget(self, action:'actionTapped', forControlEvents:UIControlEventTouchUpInside)
        @action.frame = [[margin, 300], [view.frame.size.width - margin * 2, 40]]
        view.addSubview(@action)

        @helloWorld = UILabel.new
        @helloWorld.font = UIFont.systemFontOfSize(30)
        @helloWorld.text = ''
        @helloWorld.textAlignment = UITextAlignmentCenter
        @helloWorld.textColor = UIColor.whiteColor
        @helloWorld.backgroundColor = UIColor.clearColor
        @helloWorld.frame = [[margin, 400], [view.frame.size.width - margin * 2, 40]]
        view.addSubview(@helloWorld)
      end

      def actionTapped
        @helloWorld.text = 'Hello, ' + @input_field.text
      end

end