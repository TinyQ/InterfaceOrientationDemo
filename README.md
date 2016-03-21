# InterfaceOrientationDemo
Interface Orientation Demo

这个Demo实现了在一个导航栈中，各自控制器支持不同UI方向的例子。
	
在现实项目中，业务情况可能会更复杂一些，会有一些页面是横竖屏全支持的，而一些页面只允许一个方向，这2种页面又都在同一个导航栈中。下面就实现了一个小Demo来演示这样的情况应该如何应对。Demo一共有3个页面。`root View`，`A View`，`B View`。UIWindow的RootView是一个导航控制器，导航控制器的RootView是`root View`。导航栈里面的结构是下面这样的。

	TQRootViewController->TQAViewController->TQBViewController

其中TQRootViewController是不支持旋转的。TQAViewController是支持全部方向。TQBViewController也是不支持旋转的。

