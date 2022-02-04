.class Lorg/libsdl/app/SDLGenericMotionListener_API26;
.super Lorg/libsdl/app/SDLGenericMotionListener_API24;
.source "SDLControllerManager.java"


# instance fields
.field private mRelativeModeEnabled:Z


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/libsdl/app/SDLGenericMotionListener_API24;-><init>()V

    return-void
.end method


# virtual methods
.method public getEventX(Landroid/view/MotionEvent;)F
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    return p1
.end method

.method public getEventY(Landroid/view/MotionEvent;)F
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    return p1
.end method

.method public inRelativeMode()Z
    .registers 2

    iget-boolean v0, p0, Lorg/libsdl/app/SDLGenericMotionListener_API26;->mRelativeModeEnabled:Z

    return v0
.end method

.method public onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 10

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result p1

    const/16 v0, 0x201

    if-eq p1, v0, :cond_6e

    const/16 v0, 0x401

    if-eq p1, v0, :cond_6e

    const/16 v0, 0x1002

    const/16 v1, 0x9

    const/16 v2, 0xa

    const/16 v3, 0x8

    const/4 v4, 0x7

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq p1, v0, :cond_4d

    const/16 v0, 0x2002

    if-eq p1, v0, :cond_4d

    const/16 v0, 0x3002

    if-eq p1, v0, :cond_4d

    const v0, 0x20004

    if-eq p1, v0, :cond_2c

    const v0, 0x1000010

    if-eq p1, v0, :cond_6e

    goto :goto_55

    :cond_2c
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eq p1, v4, :cond_41

    if-eq p1, v3, :cond_35

    goto :goto_55

    :cond_35
    invoke-virtual {p2, v2, v6}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v0

    invoke-virtual {p2, v1, v6}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result p2

    invoke-static {v6, p1, v0, p2, v6}, Lorg/libsdl/app/SDLActivity;->onNativeMouse(IIFFZ)V

    return v5

    :cond_41
    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    invoke-static {v6, p1, v0, p2, v5}, Lorg/libsdl/app/SDLActivity;->onNativeMouse(IIFFZ)V

    return v5

    :cond_4d
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eq p1, v4, :cond_62

    if-eq p1, v3, :cond_56

    :goto_55
    return v6

    :cond_56
    invoke-virtual {p2, v2, v6}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v0

    invoke-virtual {p2, v1, v6}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result p2

    invoke-static {v6, p1, v0, p2, v6}, Lorg/libsdl/app/SDLActivity;->onNativeMouse(IIFFZ)V

    return v5

    :cond_62
    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    invoke-static {v6, p1, v0, p2, v6}, Lorg/libsdl/app/SDLActivity;->onNativeMouse(IIFFZ)V

    return v5

    :cond_6e
    invoke-static {p2}, Lorg/libsdl/app/SDLControllerManager;->handleJoystickMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public reclaimRelativeMouseModeIfNeeded()V
    .registers 2

    iget-boolean v0, p0, Lorg/libsdl/app/SDLGenericMotionListener_API26;->mRelativeModeEnabled:Z

    if-eqz v0, :cond_11

    invoke-static {}, Lorg/libsdl/app/SDLActivity;->isDeXMode()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestPointerCapture()V

    :cond_11
    return-void
.end method

.method public setRelativeMouseEnabled(Z)Z
    .registers 4

    invoke-static {}, Lorg/libsdl/app/SDLActivity;->isDeXMode()Z

    move-result v0

    if-eqz v0, :cond_f

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    return p1

    :cond_f
    :goto_f
    if-eqz p1, :cond_19

    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestPointerCapture()V

    goto :goto_20

    :cond_19
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->releasePointerCapture()V

    :goto_20
    iput-boolean p1, p0, Lorg/libsdl/app/SDLGenericMotionListener_API26;->mRelativeModeEnabled:Z

    const/4 p1, 0x1

    return p1
.end method

.method public supportsRelativeMouse()Z
    .registers 3

    invoke-static {}, Lorg/libsdl/app/SDLActivity;->isDeXMode()Z

    move-result v0

    if-eqz v0, :cond_f

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method
