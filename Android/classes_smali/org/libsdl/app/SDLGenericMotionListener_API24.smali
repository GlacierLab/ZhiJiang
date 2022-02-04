.class Lorg/libsdl/app/SDLGenericMotionListener_API24;
.super Lorg/libsdl/app/SDLGenericMotionListener_API12;
.source "SDLControllerManager.java"


# instance fields
.field private mRelativeModeEnabled:Z


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/libsdl/app/SDLGenericMotionListener_API12;-><init>()V

    return-void
.end method


# virtual methods
.method public getEventX(Landroid/view/MotionEvent;)F
    .registers 3

    iget-boolean v0, p0, Lorg/libsdl/app/SDLGenericMotionListener_API24;->mRelativeModeEnabled:Z

    if-eqz v0, :cond_b

    const/16 v0, 0x1b

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p1

    return p1

    :cond_b
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    return p1
.end method

.method public getEventY(Landroid/view/MotionEvent;)F
    .registers 3

    iget-boolean v0, p0, Lorg/libsdl/app/SDLGenericMotionListener_API24;->mRelativeModeEnabled:Z

    if-eqz v0, :cond_b

    const/16 v0, 0x1c

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p1

    return p1

    :cond_b
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    return p1
.end method

.method public inRelativeMode()Z
    .registers 2

    iget-boolean v0, p0, Lorg/libsdl/app/SDLGenericMotionListener_API24;->mRelativeModeEnabled:Z

    return v0
.end method

.method public onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6

    iget-boolean v0, p0, Lorg/libsdl/app/SDLGenericMotionListener_API24;->mRelativeModeEnabled:Z

    if-eqz v0, :cond_25

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const/16 v1, 0x2002

    if-ne v0, v1, :cond_25

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_25

    const/16 p1, 0x1b

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p1

    const/16 v1, 0x1c

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v0, p1, p2, v2}, Lorg/libsdl/app/SDLActivity;->onNativeMouse(IIFFZ)V

    return v2

    :cond_25
    invoke-super {p0, p1, p2}, Lorg/libsdl/app/SDLGenericMotionListener_API12;->onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setRelativeMouseEnabled(Z)Z
    .registers 2

    iput-boolean p1, p0, Lorg/libsdl/app/SDLGenericMotionListener_API24;->mRelativeModeEnabled:Z

    const/4 p1, 0x1

    return p1
.end method

.method public supportsRelativeMouse()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
