.class public Lorg/libsdl/app/SDLControllerManager;
.super Ljava/lang/Object;
.source "SDLControllerManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SDLControllerManager"

.field protected static mHapticHandler:Lorg/libsdl/app/SDLHapticHandler;

.field protected static mJoystickHandler:Lorg/libsdl/app/SDLJoystickHandler;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleJoystickMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    sget-object v0, Lorg/libsdl/app/SDLControllerManager;->mJoystickHandler:Lorg/libsdl/app/SDLJoystickHandler;

    invoke-virtual {v0, p0}, Lorg/libsdl/app/SDLJoystickHandler;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static hapticRun(IFI)V
    .registers 4

    sget-object v0, Lorg/libsdl/app/SDLControllerManager;->mHapticHandler:Lorg/libsdl/app/SDLHapticHandler;

    invoke-virtual {v0, p0, p1, p2}, Lorg/libsdl/app/SDLHapticHandler;->run(IFI)V

    return-void
.end method

.method public static hapticStop(I)V
    .registers 2

    sget-object v0, Lorg/libsdl/app/SDLControllerManager;->mHapticHandler:Lorg/libsdl/app/SDLHapticHandler;

    invoke-virtual {v0, p0}, Lorg/libsdl/app/SDLHapticHandler;->stop(I)V

    return-void
.end method

.method public static initialize()V
    .registers 2

    sget-object v0, Lorg/libsdl/app/SDLControllerManager;->mJoystickHandler:Lorg/libsdl/app/SDLJoystickHandler;

    if-nez v0, :cond_19

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_12

    new-instance v0, Lorg/libsdl/app/SDLJoystickHandler_API19;

    invoke-direct {v0}, Lorg/libsdl/app/SDLJoystickHandler_API19;-><init>()V

    sput-object v0, Lorg/libsdl/app/SDLControllerManager;->mJoystickHandler:Lorg/libsdl/app/SDLJoystickHandler;

    goto :goto_19

    :cond_12
    new-instance v0, Lorg/libsdl/app/SDLJoystickHandler_API16;

    invoke-direct {v0}, Lorg/libsdl/app/SDLJoystickHandler_API16;-><init>()V

    sput-object v0, Lorg/libsdl/app/SDLControllerManager;->mJoystickHandler:Lorg/libsdl/app/SDLJoystickHandler;

    :cond_19
    :goto_19
    sget-object v0, Lorg/libsdl/app/SDLControllerManager;->mHapticHandler:Lorg/libsdl/app/SDLHapticHandler;

    if-nez v0, :cond_32

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2b

    new-instance v0, Lorg/libsdl/app/SDLHapticHandler_API26;

    invoke-direct {v0}, Lorg/libsdl/app/SDLHapticHandler_API26;-><init>()V

    sput-object v0, Lorg/libsdl/app/SDLControllerManager;->mHapticHandler:Lorg/libsdl/app/SDLHapticHandler;

    goto :goto_32

    :cond_2b
    new-instance v0, Lorg/libsdl/app/SDLHapticHandler;

    invoke-direct {v0}, Lorg/libsdl/app/SDLHapticHandler;-><init>()V

    sput-object v0, Lorg/libsdl/app/SDLControllerManager;->mHapticHandler:Lorg/libsdl/app/SDLHapticHandler;

    :cond_32
    :goto_32
    return-void
.end method

.method public static isDeviceSDLJoystick(I)Z
    .registers 4

    invoke-static {p0}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    if-gez p0, :cond_a

    goto :goto_1e

    :cond_a
    invoke-virtual {v0}, Landroid/view/InputDevice;->getSources()I

    move-result p0

    and-int/lit8 v0, p0, 0x10

    if-nez v0, :cond_1d

    and-int/lit16 v0, p0, 0x201

    const/16 v2, 0x201

    if-eq v0, v2, :cond_1d

    const/16 v0, 0x401

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_1e

    :cond_1d
    const/4 v1, 0x1

    :cond_1e
    :goto_1e
    return v1
.end method

.method public static native nativeAddHaptic(ILjava/lang/String;)I
.end method

.method public static native nativeAddJoystick(ILjava/lang/String;Ljava/lang/String;IIZIIII)I
.end method

.method public static native nativeRemoveHaptic(I)I
.end method

.method public static native nativeRemoveJoystick(I)I
.end method

.method public static native nativeSetupJNI()I
.end method

.method public static native onNativeHat(IIII)V
.end method

.method public static native onNativeJoy(IIF)V
.end method

.method public static native onNativePadDown(II)I
.end method

.method public static native onNativePadUp(II)I
.end method

.method public static pollHapticDevices()V
    .registers 1

    sget-object v0, Lorg/libsdl/app/SDLControllerManager;->mHapticHandler:Lorg/libsdl/app/SDLHapticHandler;

    invoke-virtual {v0}, Lorg/libsdl/app/SDLHapticHandler;->pollHapticDevices()V

    return-void
.end method

.method public static pollInputDevices()V
    .registers 1

    sget-object v0, Lorg/libsdl/app/SDLControllerManager;->mJoystickHandler:Lorg/libsdl/app/SDLJoystickHandler;

    invoke-virtual {v0}, Lorg/libsdl/app/SDLJoystickHandler;->pollInputDevices()V

    return-void
.end method
