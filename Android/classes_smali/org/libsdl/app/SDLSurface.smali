.class Lorg/libsdl/app/SDLSurface;
.super Landroid/view/SurfaceView;
.source "SDLActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field protected mDisplay:Landroid/view/Display;

.field protected mHeight:F

.field public mIsSurfaceReady:Z

.field protected mSensorManager:Landroid/hardware/SensorManager;

.field protected mWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lorg/libsdl/app/SDLSurface;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/libsdl/app/SDLSurface;->setFocusable(Z)V

    invoke-virtual {p0, v0}, Lorg/libsdl/app/SDLSurface;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0}, Lorg/libsdl/app/SDLSurface;->requestFocus()Z

    invoke-virtual {p0, p0}, Lorg/libsdl/app/SDLSurface;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-virtual {p0, p0}, Lorg/libsdl/app/SDLSurface;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lorg/libsdl/app/SDLSurface;->mDisplay:Landroid/view/Display;

    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lorg/libsdl/app/SDLSurface;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getMotionListener()Lorg/libsdl/app/SDLGenericMotionListener_API12;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/libsdl/app/SDLSurface;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    const/high16 p1, 0x3f800000  # 1.0f

    iput p1, p0, Lorg/libsdl/app/SDLSurface;->mWidth:F

    iput p1, p0, Lorg/libsdl/app/SDLSurface;->mHeight:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/libsdl/app/SDLSurface;->mIsSurfaceReady:Z

    return-void
.end method


# virtual methods
.method public enableSensor(IZ)V
    .registers 5

    if-eqz p2, :cond_e

    iget-object p2, p0, Lorg/libsdl/app/SDLSurface;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {p2, p1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p2, p0, p1, v0, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    goto :goto_17

    :cond_e
    iget-object p2, p0, Lorg/libsdl/app/SDLSurface;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {p2, p1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    :goto_17
    return-void
.end method

.method public getNativeSurface()Landroid/view/Surface;
    .registers 2

    invoke-virtual {p0}, Lorg/libsdl/app/SDLSurface;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public handlePause()V
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/libsdl/app/SDLSurface;->enableSensor(IZ)V

    return-void
.end method

.method public handleResume()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/libsdl/app/SDLSurface;->setFocusable(Z)V

    invoke-virtual {p0, v0}, Lorg/libsdl/app/SDLSurface;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0}, Lorg/libsdl/app/SDLSurface;->requestFocus()Z

    invoke-virtual {p0, p0}, Lorg/libsdl/app/SDLSurface;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-virtual {p0, p0}, Lorg/libsdl/app/SDLSurface;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0, v0, v0}, Lorg/libsdl/app/SDLSurface;->enableSensor(IZ)V

    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onCapturedPointerEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_3e

    const/4 v1, 0x7

    if-eq v0, v1, :cond_3e

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2e

    const/16 v1, 0xb

    if-eq v0, v1, :cond_19

    const/16 v4, 0xc

    if-eq v0, v4, :cond_19

    return v3

    :cond_19
    if-ne v0, v1, :cond_1d

    const/4 v0, 0x0

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x1

    :goto_1e
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result p1

    invoke-static {p1, v0, v1, v3, v2}, Lorg/libsdl/app/SDLActivity;->onNativeMouse(IIFFZ)V

    return v2

    :cond_2e
    const/16 v1, 0xa

    invoke-virtual {p1, v1, v3}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v1

    const/16 v4, 0x9

    invoke-virtual {p1, v4, v3}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result p1

    invoke-static {v3, v0, v1, p1, v3}, Lorg/libsdl/app/SDLActivity;->onNativeMouse(IIFFZ)V

    return v2

    :cond_3e
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-static {v3, v0, v1, p1, v2}, Lorg/libsdl/app/SDLActivity;->onNativeMouse(IIFFZ)V

    return v2
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 7

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result p1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getSource()I

    move-result v0

    if-nez v0, :cond_14

    invoke-static {p1}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Landroid/view/InputDevice;->getSources()I

    move-result v0

    :cond_14
    invoke-static {p1}, Lorg/libsdl/app/SDLControllerManager;->isDeviceSDLJoystick(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_35

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_28

    invoke-static {p1, p2}, Lorg/libsdl/app/SDLControllerManager;->onNativePadDown(II)I

    move-result p1

    if-nez p1, :cond_35

    return v2

    :cond_28
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_35

    invoke-static {p1, p2}, Lorg/libsdl/app/SDLControllerManager;->onNativePadUp(II)I

    move-result p1

    if-nez p1, :cond_35

    return v2

    :cond_35
    and-int/lit16 p1, v0, 0x101

    if-eqz p1, :cond_5f

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_55

    invoke-static {p3}, Lorg/libsdl/app/SDLActivity;->isTextInputEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_51

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result p1

    int-to-char p1, p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lorg/libsdl/app/SDLInputConnection;->nativeCommitText(Ljava/lang/String;I)V

    :cond_51
    invoke-static {p2}, Lorg/libsdl/app/SDLActivity;->onNativeKeyDown(I)V

    return v2

    :cond_55
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v2, :cond_5f

    invoke-static {p2}, Lorg/libsdl/app/SDLActivity;->onNativeKeyUp(I)V

    return v2

    :cond_5f
    and-int/lit16 p1, v0, 0x2002

    if-eqz p1, :cond_74

    const/4 p1, 0x4

    if-eq p2, p1, :cond_6a

    const/16 p1, 0x7d

    if-ne p2, p1, :cond_74

    :cond_6a
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_73

    if-eq p1, v2, :cond_73

    goto :goto_74

    :cond_73
    return v2

    :cond_74
    :goto_74
    const/4 p1, 0x0

    return p1
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 7

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5d

    iget-object v0, p0, Lorg/libsdl/app/SDLSurface;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v0, v1, :cond_3d

    if-eq v0, v3, :cond_2f

    if-eq v0, v2, :cond_23

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v4

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v4, v1

    move v2, v1

    const/4 v1, 0x3

    goto :goto_46

    :cond_23
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    neg-float v1, v1

    move v2, v1

    const/4 v1, 0x2

    goto :goto_46

    :cond_2f
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v4

    neg-float v0, v0

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v2, v1

    neg-float v1, v1

    const/4 v2, 0x4

    move v2, v1

    const/4 v1, 0x4

    goto :goto_46

    :cond_3d
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    neg-float v0, v0

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v4

    :goto_46
    sget v4, Lorg/libsdl/app/SDLActivity;->mCurrentOrientation:I

    if-eq v1, v4, :cond_4f

    sput v1, Lorg/libsdl/app/SDLActivity;->mCurrentOrientation:I

    invoke-static {v1}, Lorg/libsdl/app/SDLActivity;->onNativeOrientationChanged(I)V

    :cond_4f
    neg-float v0, v0

    const v1, 0x411ce80a

    div-float/2addr v0, v1

    div-float/2addr v2, v1

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v3

    div-float/2addr p1, v1

    invoke-static {v0, v2, p1}, Lorg/libsdl/app/SDLActivity;->onNativeAccel(FFF)V

    :cond_5d
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 14

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    if-gez p1, :cond_10

    add-int/lit8 p1, p1, -0x1

    :cond_10
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    const/16 v2, 0x2002

    const/4 v3, 0x0

    const/4 v8, 0x1

    if-eq v1, v2, :cond_bd

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    const/16 v2, 0x3002

    if-ne v1, v2, :cond_24

    goto/16 :goto_bd

    :cond_24
    const/4 v1, -0x1

    const/high16 v9, 0x3f800000  # 1.0f

    if-eqz v7, :cond_91

    if-eq v7, v8, :cond_91

    const/4 v2, 0x2

    if-eq v7, v2, :cond_66

    const/4 v2, 0x3

    if-eq v7, v2, :cond_3b

    const/4 v0, 0x5

    if-eq v7, v0, :cond_39

    const/4 v0, 0x6

    if-eq v7, v0, :cond_39

    goto/16 :goto_ec

    :cond_39
    const/4 v3, -0x1

    goto :goto_91

    :cond_3b
    const/4 v7, 0x0

    :goto_3c
    if-ge v7, v0, :cond_ec

    invoke-virtual {p2, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    invoke-virtual {p2, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iget v3, p0, Lorg/libsdl/app/SDLSurface;->mWidth:F

    div-float v4, v1, v3

    invoke-virtual {p2, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iget v3, p0, Lorg/libsdl/app/SDLSurface;->mHeight:F

    div-float v5, v1, v3

    invoke-virtual {p2, v7}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v1

    cmpl-float v3, v1, v9

    if-lez v3, :cond_5d

    const/high16 v6, 0x3f800000  # 1.0f

    goto :goto_5e

    :cond_5d
    move v6, v1

    :goto_5e
    const/4 v3, 0x1

    move v1, p1

    invoke-static/range {v1 .. v6}, Lorg/libsdl/app/SDLActivity;->onNativeTouch(IIIFFF)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3c

    :cond_66
    const/4 v10, 0x0

    :goto_67
    if-ge v10, v0, :cond_ec

    invoke-virtual {p2, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    invoke-virtual {p2, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iget v3, p0, Lorg/libsdl/app/SDLSurface;->mWidth:F

    div-float v4, v1, v3

    invoke-virtual {p2, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iget v3, p0, Lorg/libsdl/app/SDLSurface;->mHeight:F

    div-float v5, v1, v3

    invoke-virtual {p2, v10}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v1

    cmpl-float v3, v1, v9

    if-lez v3, :cond_88

    const/high16 v6, 0x3f800000  # 1.0f

    goto :goto_89

    :cond_88
    move v6, v1

    :goto_89
    move v1, p1

    move v3, v7

    invoke-static/range {v1 .. v6}, Lorg/libsdl/app/SDLActivity;->onNativeTouch(IIIFFF)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_67

    :cond_91
    :goto_91
    if-ne v3, v1, :cond_97

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    :cond_97
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iget v1, p0, Lorg/libsdl/app/SDLSurface;->mWidth:F

    div-float v4, v0, v1

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iget v1, p0, Lorg/libsdl/app/SDLSurface;->mHeight:F

    div-float v5, v0, v1

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result p2

    cmpl-float v0, p2, v9

    if-lez v0, :cond_b6

    const/high16 v6, 0x3f800000  # 1.0f

    goto :goto_b7

    :cond_b6
    move v6, p2

    :goto_b7
    move v1, p1

    move v3, v7

    invoke-static/range {v1 .. v6}, Lorg/libsdl/app/SDLActivity;->onNativeTouch(IIIFFF)V

    goto :goto_ec

    :cond_bd
    :goto_bd
    :try_start_bd
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v0, "getButtonState"

    new-array v1, v3, [Ljava/lang/Class;

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_d8

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_d7} :catch_d8

    goto :goto_d9

    :catch_d8
    :cond_d8
    const/4 p1, 0x1

    :goto_d9
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getMotionListener()Lorg/libsdl/app/SDLGenericMotionListener_API12;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/libsdl/app/SDLGenericMotionListener_API12;->getEventX(Landroid/view/MotionEvent;)F

    move-result v1

    invoke-virtual {v0, p2}, Lorg/libsdl/app/SDLGenericMotionListener_API12;->getEventY(Landroid/view/MotionEvent;)F

    move-result p2

    invoke-virtual {v0}, Lorg/libsdl/app/SDLGenericMotionListener_API12;->inRelativeMode()Z

    move-result v0

    invoke-static {p1, v7, v1, p2, v0}, Lorg/libsdl/app/SDLActivity;->onNativeMouse(IIFFZ)V

    :cond_ec
    :goto_ec
    return v8
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 12

    const-string p1, "SDL"

    const-string v0, "surfaceChanged()"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    if-nez p1, :cond_c

    return-void

    :cond_c
    const p1, 0x15151002

    const/4 v0, 0x1

    if-eq p2, v0, :cond_59

    const/4 v1, 0x2

    if-eq p2, v1, :cond_4b

    const/4 v1, 0x3

    if-eq p2, v1, :cond_3d

    const/4 v1, 0x4

    if-eq p2, v1, :cond_32

    const-string v1, "SDL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pixel format unknown "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    :cond_32
    const-string p2, "SDL"

    const-string v1, "pixel format RGB_565"

    invoke-static {p2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_39
    const v5, 0x15151002

    goto :goto_66

    :cond_3d
    const-string p1, "SDL"

    const-string p2, "pixel format RGB_888"

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x16161804

    const v5, 0x16161804

    goto :goto_66

    :cond_4b
    const-string p1, "SDL"

    const-string p2, "pixel format RGBX_8888"

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x16261804

    const v5, 0x16261804

    goto :goto_66

    :cond_59
    const-string p1, "SDL"

    const-string p2, "pixel format RGBA_8888"

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x16462004

    const v5, 0x16462004

    :goto_66
    int-to-float p1, p3

    iput p1, p0, Lorg/libsdl/app/SDLSurface;->mWidth:F

    int-to-float p1, p4

    iput p1, p0, Lorg/libsdl/app/SDLSurface;->mHeight:F

    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    monitor-enter p1

    :try_start_71
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1
    :try_end_79
    .catchall {:try_start_71 .. :try_end_79} :catchall_148

    const-string p1, "SDL"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Window size: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "SDL"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Device size: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lorg/libsdl/app/SDLSurface;->mDisplay:Landroid/view/Display;

    invoke-virtual {p1}, Landroid/view/Display;->getRefreshRate()F

    move-result v6

    move v1, p3

    move v2, p4

    move v3, p3

    move v4, p4

    invoke-static/range {v1 .. v6}, Lorg/libsdl/app/SDLActivity;->nativeSetScreenResolution(IIIIIF)V

    invoke-static {}, Lorg/libsdl/app/SDLActivity;->onNativeResize()V

    sget-object p1, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    invoke-virtual {p1}, Lorg/libsdl/app/SDLActivity;->getRequestedOrientation()I

    move-result p1

    const/4 p2, 0x0

    if-eq p1, v0, :cond_e0

    const/4 p3, 0x7

    if-ne p1, p3, :cond_d2

    goto :goto_e0

    :cond_d2
    if-eqz p1, :cond_d7

    const/4 p3, 0x6

    if-ne p1, p3, :cond_ea

    :cond_d7
    iget p1, p0, Lorg/libsdl/app/SDLSurface;->mWidth:F

    iget p3, p0, Lorg/libsdl/app/SDLSurface;->mHeight:F

    cmpg-float p1, p1, p3

    if-gez p1, :cond_ea

    goto :goto_e8

    :cond_e0
    :goto_e0
    iget p1, p0, Lorg/libsdl/app/SDLSurface;->mWidth:F

    iget p3, p0, Lorg/libsdl/app/SDLSurface;->mHeight:F

    cmpl-float p1, p1, p3

    if-lez p1, :cond_ea

    :goto_e8
    const/4 p1, 0x1

    goto :goto_eb

    :cond_ea
    const/4 p1, 0x0

    :goto_eb
    if-eqz p1, :cond_117

    iget p3, p0, Lorg/libsdl/app/SDLSurface;->mWidth:F

    iget p4, p0, Lorg/libsdl/app/SDLSurface;->mHeight:F

    invoke-static {p3, p4}, Ljava/lang/Math;->min(FF)F

    move-result p3

    float-to-double p3, p3

    iget v1, p0, Lorg/libsdl/app/SDLSurface;->mWidth:F

    iget v2, p0, Lorg/libsdl/app/SDLSurface;->mHeight:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, p3

    const-wide p3, 0x3ff3333333333333L  # 1.2

    cmpg-double v3, v1, p3

    if-gez v3, :cond_117

    const-string p1, "SDL"

    const-string p3, "Don\'t skip on such aspect-ratio. Could be a square resolution."

    invoke-static {p1, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :cond_117
    if-eqz p1, :cond_12f

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0x18

    if-lt p3, p4, :cond_12f

    sget-object p3, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    invoke-virtual {p3}, Lorg/libsdl/app/SDLActivity;->isInMultiWindowMode()Z

    move-result p3

    if-eqz p3, :cond_12f

    const-string p1, "SDL"

    const-string p3, "Don\'t skip in Multi-Window"

    invoke-static {p1, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :cond_12f
    if-eqz p1, :cond_13b

    const-string p1, "SDL"

    const-string p3, "Skip .. Surface is not ready."

    invoke-static {p1, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p2, p0, Lorg/libsdl/app/SDLSurface;->mIsSurfaceReady:Z

    return-void

    :cond_13b
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->onNativeSurfaceChanged()V

    iput-boolean v0, p0, Lorg/libsdl/app/SDLSurface;->mIsSurfaceReady:Z

    sget-object p1, Lorg/libsdl/app/SDLActivity$NativeState;->RESUMED:Lorg/libsdl/app/SDLActivity$NativeState;

    sput-object p1, Lorg/libsdl/app/SDLActivity;->mNextNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    invoke-static {}, Lorg/libsdl/app/SDLActivity;->handleNativeState()V

    return-void

    :catchall_148
    move-exception p2

    :try_start_149
    monitor-exit p1
    :try_end_14a
    .catchall {:try_start_149 .. :try_end_14a} :catchall_148

    throw p2
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 3

    const-string p1, "SDL"

    const-string v0, "surfaceCreated()"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lorg/libsdl/app/SDLActivity;->onNativeSurfaceCreated()V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 3

    const-string p1, "SDL"

    const-string v0, "surfaceDestroyed()"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lorg/libsdl/app/SDLActivity$NativeState;->PAUSED:Lorg/libsdl/app/SDLActivity$NativeState;

    sput-object p1, Lorg/libsdl/app/SDLActivity;->mNextNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    invoke-static {}, Lorg/libsdl/app/SDLActivity;->handleNativeState()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/libsdl/app/SDLSurface;->mIsSurfaceReady:Z

    invoke-static {}, Lorg/libsdl/app/SDLActivity;->onNativeSurfaceDestroyed()V

    return-void
.end method
