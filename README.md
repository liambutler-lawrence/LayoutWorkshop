# LayoutWorkshop
App for testing iOS UI design


## History

### First Attempt - Jump In Blindly

Create universal image group with one image, using a 400 x 400px JPEG.
Assign the image to the .image property of the UIBarButton item
Image appears in button, but button is misaligned in the nav bar.

What is the height of the nav bar? Check programmatically; it is 44 px in height.

 in Gimp, scale my 400x400 px profile image to 22px, 44px, and 66px, exporting a JPEG of each. 
Then in Xcode, add an image set called ProfilePic and drop the three images into it. 

Then in view controller, modify the code to use the new image asset. It works! The image appears in the button, the button is properly sized (but small), AND the button is properly aligned in the left side of the nav bar. 

But … the button does not work; tapping it has no effect. 

Run the app on my iPhone XR; same display and also does not respond to tap.

Try instantiating an image view using the image, then setting that as the custom view of the left bar button item. Run. So the pic appears in the button, in the proper position on the nav bar … but it is much smaller than the nav bar height, and tapping the button still doesn’t work.


### Create a Sample App for this Feature

create a test project LayoutWorkshop with a tab bar controller connected to two tabs, each consisting of a nav controller tied to a view controller, which contains a uibarbutton that opens a child view controller. 

Add the same profile image set to the assets, and use the same code to put the image on the button in the nav bar. 

Same effect: looks small, doesn’t go to child screen when tapped.

### Get Help

Talk with my key iOS development mentor.
 He cloned my LayoutWorkshop repo and then explained UIBarButtonItem, auto layout constraints, and explained image sizing for the 1x, 2x and 3x sizes in the asset catalogs. He referred to the Apple doc which explains why the bar button is no longer responding to a tap. See handwritten notes. We then discussed how to deal with this. See handwritten notes for details

He explained these key points:
- iOS will not stretch an image by default in a UIImage; it will center the image w/in the width and height constraints as it did for the image I placed in the UIView for the bar button
- may not need constraints for the UIImage, if the image assets are sized correctly
- for image size, look at the 1x image asset dimensions. That is the scale to refer to when sizing for a screen. So for instance, I found programmatically that the toolbar height is 44 px. That is actually 44px at 1x, 88px at 2x, or 132px at 3x. So because I supplied a photo image asset at 22px, 44px, and 66px, my image appears as exactly 1/2 the height of the nav bar. On an iPhone XR, iOS actually uses the 2x size, the 44px image, but the apparent size remains the same. It just has twice the pixel density.
- the navigation bar profile photo used in the Twitter app looks larger than 1/2 the nav bar height; maybe 2/3? So one way to make the image appear larger is to supply a larger asset image set, such as 32px, 64px, and 96px
- According to the Apple doc for UIBarButtonItem,  if a custom view is set on a UIToolBar button, the button will no longer respond to user input. The custom view must be programmed to handle user input
- One way to handle this is to make a UIButton the custom view, and then set it to handle a tap 
- A second way to handle this is to do as I have done, using a UIImageView as the custom view, but because UIImageView does not handle input natively, a gesture recognizer has to be created and tied to the image view. Then the segue set on the storyboard can be performed programmatically
- Method #2 also eases the effort of displaying the image as a circle


### Do It The Right Way

Fix the relative size of the image
In Gimp, scale my profile photo from 400x400 px to 32, 64, and 96px
Drop those three images into a new image set in the LayoutWorkshop app
In the view controller with the nav bar button, change the code to build the image view from that asset. 
Build the app, and bingo! - the image appears noticeably larger!

Make the button image respond to a tap
In the view controller, create a tap gesture recognizer that executes a function
In the view controller, build the function for the tap gesture recognizer so that the function performs the segue tied to the bar button item, 
In the view controller, assign the tap gesture recognizer to the image view set as the custom view for the bar button item
Test: when the bar button is tapped,  the child screen appears


### Go the Extra Mile

Use the .layer property of the image view to set its corner radius so that the image appears as a circle (thank you, Paul Hudson!)
