.class Lorg/libsdl/app/SDLGenericMotionListener_API12;
.super Ljava/lang/Object;
.source "SDLControllerManager.java"

# interfaces
.implements Landroid/view/View$OnGenericMotionListener;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    const/4 v0, 0x0

    return v0
.end method

.method public onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result p1

    const/16 v0, 0x201

    if-eq p1, v0, :cond_40

    const/16 v0, 0x401

    if-eq p1, v0, :cond_40

    const/16 v0, 0x2002

    const/4 v1, 0x0

    if-eq p1, v0, :cond_17

    const v0, 0x1000010

    if-eq p1, v0, :cond_40

    goto :goto_23

    :cond_17
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x7

    const/4 v2, 0x1

    if-eq p1, v0, :cond_34

    const/16 v0, 0x8

    if-eq p1, v0, :cond_24

    :goto_23
    return v1

    :cond_24
    const/16 v0, 0xa

    invoke-virtual {p2, v0, v1}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v0

    const/16 v3, 0x9

    invoke-virtual {p2, v3, v1}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result p2

    invoke-static {v1, p1, v0, p2, v1}, Lorg/libsdl/app/SDLActivity;->onNativeMouse(IIFFZ)V

    return v2

    :cond_34
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    invoke-static {v1, p1, v0, p2, v1}, Lorg/libsdl/app/SDLActivity;->onNativeMouse(IIFFZ)V

    return v2

    :cond_40
    invoke-static {p2}, Lorg/libsdl/app/SDLControllerManager;->handleJoystickMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public reclaimRelativeMouseModeIfNeeded()V
    .registers 1

    return-void
.end method

.method public setRelativeMouseEnabled(Z)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public supportsRelativeMouse()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
