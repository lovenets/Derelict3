/*

Boost Software License - Version 1.0 - August 17th, 2003

Permission is hereby granted, free of charge, to any person or organization
obtaining a copy of the software and accompanying documentation covered by
this license (the "Software") to use, reproduce, display, distribute,
execute, and transmit the Software, and to prepare derivative works of the
Software, and to permit third-parties to whom the Software is furnished to
do so, all subject to the following:

The copyright notices in the Software and this entire statement, including
the above license grant, this restriction and the following disclaimer,
must be included in all copies of the Software, in whole or in part, and
all derivative works of the Software, unless such copies or derivative
works are solely in the form of machine-executable object code generated by
a source language processor.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE, TITLE AND NON-INFRINGEMENT. IN NO EVENT
SHALL THE COPYRIGHT HOLDERS OR ANYONE DISTRIBUTING THE SOFTWARE BE LIABLE
FOR ANY DAMAGES OR OTHER LIABILITY, WHETHER IN CONTRACT, TORT OR OTHERWISE,
ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
DEALINGS IN THE SOFTWARE.

*/
module derelict.glfw3.functions;

private
{
    import core.stdc.config;
    import derelict.glfw3.types;
}


extern(C)
{
    alias int function()da_glfwInit;
    alias int function(GLFWthreadmodel*, GLFWallocator*)da_glfwInitWithModels;
    alias void function()da_glfwTerminate;
    alias void function(int*, int*, int*)da_glfwGetVersion;
    alias const(char)* function()da_glfwGetVersionString;

    alias int function()da_glfwGetError;
    alias const(char)* function(int)da_glfwErrorString;
    alias void function(GLFWerrorfun)da_glfwSetErrorCallback;

    alias int function(GLFWvidmode*, int)da_glfwGetVideoModes;
    alias void function(GLFWvidmode*)da_glfwGetDesktopMode;

    alias void function(float)da_glfwSetGamma;
    alias int function(GLFWgammaramp*)da_glfwGetGammaRamp;
    alias void function(in GLFWgammaramp*)da_glfwSetGammaRamp;

    alias GLFWwindow function(int, int, int, const(char)*, GLFWwindow)da_glfwOpenWindow;
    alias void function(int, int)da_glfwOpenWindowHint;
    alias int function(GLFWwindow)da_glfwIsWindow;
    alias void function(GLFWwindow)da_glfwCloseWindow;
    alias void function(GLFWwindow, const(char)*)da_glfwSetWindowTitle;
    alias void function(GLFWwindow, int*, int*)da_glfwGetWindowSize;
    alias void function(GLFWwindow, int, int)da_glfwSetWindowSize;
    alias void function(GLFWwindow, int*, int*)da_glfwGetWindowPos;
    alias void function(GLFWwindow, int, int)da_glfwSetWindowPos;
    alias void function(GLFWwindow)da_glfwIconifyWindow;
    alias void function(GLFWwindow)da_glfwRestoreWindow;
    alias int function(GLFWwindow, int)da_glfwGetWindowParam;
    alias void function(GLFWwindow, void*)da_glfwSetWindowUserPointer;
    alias void* function(GLFWwindow)da_glfwGetWindowUserPointer;
    alias void function(GLFWwindowsizefun)da_glfwSetWindowSizeCallback;
    alias void function(GLFWwindowclosefun)da_glfwSetWindowCloseCallback;
    alias void function(GLFWwindowrefreshfun)da_glfwSetWindowRefreshCallback;
    alias void function(GLFWwindowfocusfun)da_glfwSetWindowFocusCallback;
    alias void function(GLFWwindowiconifyfun)da_glfwSetWindowIconifyCallback;

    alias void function()da_glfwPollEvents;
    alias void function()da_glfwWaitEvents;

    alias int function(GLFWwindow, int)da_glfwGetKey;
    alias int function(GLFWwindow, int)da_glfwGetMouseButton;
    alias void function(GLFWwindow, int*, int*)da_glfwGetMousePos;
    alias void function(GLFWwindow, int, int)da_glfwSetMousePos;
    alias void function(GLFWwindow, int) da_glfwSetCursorMode;
    alias void function(GLFWwindow, int*, int*)da_glfwGetScrollOffset;
    alias void function(GLFWkeyfun)da_glfwSetKeyCallback;
    alias void function(GLFWcharfun)da_glfwSetCharCallback;
    alias void function(GLFWmousebuttonfun)da_glfwSetMouseButtonCallback;
    alias void function(GLFWmouseposfun)da_glfwSetMousePosCallback;
    alias void function(GLFWscrollfun)da_glfwSetScrollCallback;

    alias int function(int, int)da_glfwGetJoystickParam;
    alias int function(int, float*, int)da_glfwGetJoystickPos;
    alias int function(int, ubyte*, int)da_glfwGetJoystickButtons;

    alias double function()da_glfwGetTime;
    alias void function(double)da_glfwSetTime;

    alias void function(GLFWwindow) da_glfwMakeContextCurrent;
    alias GLFWwindow function() da_glfwGetCurrentContext;
    alias void function()da_glfwSwapBuffers;
    alias void function(int)da_glfwSwapInterval;
    alias int function(in char*)da_glfwExtensionSupported;
    alias void* function(in char*)da_glfwGetProcAddress;
    alias void function(GLFWwindow, GLFWwindow, c_ulong)da_glfwCopyContext;

    alias void function(GLFWwindow, int)da_glfwEnable;
    alias void function(GLFWwindow, int)da_glfwDisable;
}

__gshared
{
    da_glfwInit glfwInit;
    da_glfwInitWithModels glfwInitWithModels;
    da_glfwTerminate glfwTerminate;
    da_glfwGetVersion glfwGetVersion;
    da_glfwGetVersionString glfwGetVersionString;
    da_glfwGetError glfwGetError;
    da_glfwErrorString glfwErrorString;
    da_glfwSetErrorCallback glfwSetErrorCallback;
    da_glfwGetVideoModes glfwGetVideoModes;
    da_glfwGetDesktopMode glfwGetDesktopMode;
    da_glfwSetGamma glfwSetGamma;
    da_glfwGetGammaRamp glfwGetGammaRamp;
    da_glfwSetGammaRamp glfwSetGammaRamp;
    da_glfwOpenWindow glfwOpenWindow;
    da_glfwOpenWindowHint glfwOpenWindowHint;
    da_glfwIsWindow glfwIsWindow;
    da_glfwCloseWindow glfwCloseWindow;
    da_glfwSetWindowTitle glfwSetWindowTitle;
    da_glfwGetWindowSize glfwGetWindowSize;
    da_glfwSetWindowSize glfwSetWindowSize;
    da_glfwGetWindowPos glfwGetWindowPos;
    da_glfwSetWindowPos glfwSetWindowPos;
    da_glfwIconifyWindow glfwIconifyWindow;
    da_glfwRestoreWindow glfwRestoreWindow;
    da_glfwGetWindowParam glfwGetWindowParam;
    da_glfwSetWindowUserPointer glfwSetWindowUserPointer;
    da_glfwGetWindowUserPointer glfwGetWindowUserPointer;
    da_glfwSetWindowSizeCallback glfwSetWindowSizeCallback;
    da_glfwSetWindowCloseCallback glfwSetWindowCloseCallback;
    da_glfwSetWindowRefreshCallback glfwSetWindowRefreshCallback;
    da_glfwSetWindowFocusCallback glfwSetWindowFocusCallback;
    da_glfwSetWindowIconifyCallback glfwSetWindowIconifyCallback;
    da_glfwPollEvents glfwPollEvents;
    da_glfwWaitEvents glfwWaitEvents;
    da_glfwGetKey glfwGetKey;
    da_glfwGetMouseButton glfwGetMouseButton;
    da_glfwGetMousePos glfwGetMousePos;
    da_glfwSetMousePos glfwSetMousePos;
    da_glfwSetCursorMode glfwSetCursorMode;
    da_glfwGetScrollOffset glfwGetScrollOffset;
    da_glfwSetKeyCallback glfwSetKeyCallback;
    da_glfwSetCharCallback glfwSetCharCallback;
    da_glfwSetMouseButtonCallback glfwSetMouseButtonCallback;
    da_glfwSetMousePosCallback glfwSetMousePosCallback;
    da_glfwSetScrollCallback glfwSetScrollCallback;
    da_glfwGetJoystickParam glfwGetJoystickParam;
    da_glfwGetJoystickPos glfwGetJoystickPos;
    da_glfwGetJoystickButtons glfwGetJoystickButtons;
    da_glfwGetTime glfwGetTime;
    da_glfwSetTime glfwSetTime;
    da_glfwMakeContextCurrent glfwMakeContextCurrent;
    da_glfwGetCurrentContext glfwGetCurrentContext;
    da_glfwSwapBuffers glfwSwapBuffers;
    da_glfwSwapInterval glfwSwapInterval;
    da_glfwExtensionSupported glfwExtensionSupported;
    da_glfwGetProcAddress glfwGetProcAddress;
    da_glfwCopyContext glfwCopyContext;
    da_glfwEnable glfwEnable;
    da_glfwDisable glfwDisable;
}