.class Lorg/libsdl/app/SDLJoystickHandler_API16;
.super Lorg/libsdl/app/SDLJoystickHandler;
.source "SDLControllerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/libsdl/app/SDLJoystickHandler_API16$RangeComparator;,
        Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;
    }
.end annotation


# instance fields
.field private final mJoysticks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/libsdl/app/SDLJoystickHandler;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/libsdl/app/SDLJoystickHandler_API16;->mJoysticks:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getButtonMask(Landroid/view/InputDevice;)I
    .registers 2

    const/4 p1, -0x1

    return p1
.end method

.method protected getJoystick(I)Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;
    .registers 5

    iget-object v0, p0, Lorg/libsdl/app/SDLJoystickHandler_API16;->mJoysticks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;

    iget v2, v1, Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;->device_id:I

    if-ne v2, p1, :cond_6

    return-object v1

    :cond_17
    const/4 p1, 0x0

    return-object p1
.end method

.method public getJoystickDescriptor(Landroid/view/InputDevice;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p1}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    return-object v0

    :cond_d
    invoke-virtual {p1}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getProductId(Landroid/view/InputDevice;)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public getVendorId(Landroid/view/InputDevice;)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public handleMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const v1, 0x1000010

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-eqz v0, :cond_8f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_8f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/libsdl/app/SDLJoystickHandler_API16;->getJoystick(I)Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;

    move-result-object v2

    if-eqz v2, :cond_8f

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_22
    iget-object v6, v2, Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;->axes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_53

    iget-object v6, v2, Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;->axes:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/InputDevice$MotionRange;

    invoke-virtual {v6}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    move-result v7

    invoke-virtual {p1, v7, v0}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v7

    invoke-virtual {v6}, Landroid/view/InputDevice$MotionRange;->getMin()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-virtual {v6}, Landroid/view/InputDevice$MotionRange;->getRange()F

    move-result v6

    div-float/2addr v7, v6

    const/high16 v6, 0x40000000  # 2.0f

    mul-float v7, v7, v6

    const/high16 v6, 0x3f800000  # 1.0f

    sub-float/2addr v7, v6

    iget v6, v2, Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;->device_id:I

    invoke-static {v6, v5, v7}, Lorg/libsdl/app/SDLControllerManager;->onNativeJoy(IIF)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_22

    :cond_53
    :goto_53
    iget-object v5, v2, Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;->hats:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    div-int/2addr v5, v3

    if-ge v4, v5, :cond_8f

    iget-object v5, v2, Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;->hats:Ljava/util/ArrayList;

    mul-int/lit8 v6, v4, 0x2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/InputDevice$MotionRange;

    invoke-virtual {v5}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    move-result v5

    invoke-virtual {p1, v5, v0}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget-object v7, v2, Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;->hats:Ljava/util/ArrayList;

    add-int/2addr v6, v1

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/InputDevice$MotionRange;

    invoke-virtual {v6}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    move-result v6

    invoke-virtual {p1, v6, v0}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iget v7, v2, Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;->device_id:I

    invoke-static {v7, v4, v5, v6}, Lorg/libsdl/app/SDLControllerManager;->onNativeHat(IIII)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_53

    :cond_8f
    return v1
.end method

.method public pollInputDevices()V
    .registers 19

    move-object/from16 v0, p0

    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v2, :cond_ad

    aget v5, v1, v4

    invoke-static {v5}, Lorg/libsdl/app/SDLControllerManager;->isDeviceSDLJoystick(I)Z

    move-result v6

    if-eqz v6, :cond_a9

    invoke-virtual {v0, v5}, Lorg/libsdl/app/SDLJoystickHandler_API16;->getJoystick(I)Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;

    move-result-object v6

    if-nez v6, :cond_a9

    invoke-static {v5}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v6

    new-instance v7, Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;

    invoke-direct {v7}, Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;-><init>()V

    iput v5, v7, Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;->device_id:I

    invoke-virtual {v6}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v7, Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;->name:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lorg/libsdl/app/SDLJoystickHandler_API16;->getJoystickDescriptor(Landroid/view/InputDevice;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v7, Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;->desc:Ljava/lang/String;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v7, Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;->axes:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v7, Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;->hats:Ljava/util/ArrayList;

    invoke-virtual {v6}, Landroid/view/InputDevice;->getMotionRanges()Ljava/util/List;

    move-result-object v5

    new-instance v8, Lorg/libsdl/app/SDLJoystickHandler_API16$RangeComparator;

    invoke-direct {v8}, Lorg/libsdl/app/SDLJoystickHandler_API16$RangeComparator;-><init>()V

    invoke-static {v5, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4e
    :goto_4e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/InputDevice$MotionRange;

    invoke-virtual {v8}, Landroid/view/InputDevice$MotionRange;->getSource()I

    move-result v9

    const/16 v10, 0x10

    and-int/2addr v9, v10

    if-eqz v9, :cond_4e

    invoke-virtual {v8}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    move-result v9

    const/16 v11, 0xf

    if-eq v9, v11, :cond_78

    invoke-virtual {v8}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    move-result v9

    if-ne v9, v10, :cond_72

    goto :goto_78

    :cond_72
    iget-object v9, v7, Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;->axes:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4e

    :cond_78
    :goto_78
    iget-object v9, v7, Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;->hats:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4e

    :cond_7e
    iget-object v5, v0, Lorg/libsdl/app/SDLJoystickHandler_API16;->mJoysticks:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v8, v7, Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;->device_id:I

    iget-object v9, v7, Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;->name:Ljava/lang/String;

    iget-object v10, v7, Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;->desc:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lorg/libsdl/app/SDLJoystickHandler_API16;->getVendorId(Landroid/view/InputDevice;)I

    move-result v11

    invoke-virtual {v0, v6}, Lorg/libsdl/app/SDLJoystickHandler_API16;->getProductId(Landroid/view/InputDevice;)I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v0, v6}, Lorg/libsdl/app/SDLJoystickHandler_API16;->getButtonMask(Landroid/view/InputDevice;)I

    move-result v14

    iget-object v5, v7, Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;->axes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v15

    iget-object v5, v7, Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;->hats:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    div-int/lit8 v16, v5, 0x2

    const/16 v17, 0x0

    invoke-static/range {v8 .. v17}, Lorg/libsdl/app/SDLControllerManager;->nativeAddJoystick(ILjava/lang/String;Ljava/lang/String;IIZIIII)I

    :cond_a9
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_9

    :cond_ad
    const/4 v2, 0x0

    iget-object v4, v0, Lorg/libsdl/app/SDLJoystickHandler_API16;->mJoysticks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_b4
    :goto_b4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;

    iget v5, v5, Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;->device_id:I

    const/4 v6, 0x0

    :goto_c3
    array-length v7, v1

    if-ge v6, v7, :cond_ce

    aget v7, v1, v6

    if-ne v5, v7, :cond_cb

    goto :goto_ce

    :cond_cb
    add-int/lit8 v6, v6, 0x1

    goto :goto_c3

    :cond_ce
    :goto_ce
    array-length v7, v1

    if-ne v6, v7, :cond_b4

    if-nez v2, :cond_d8

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_d8
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b4

    :cond_e0
    if-eqz v2, :cond_117

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e6
    :goto_e6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_117

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lorg/libsdl/app/SDLControllerManager;->nativeRemoveJoystick(I)I

    const/4 v4, 0x0

    :goto_fa
    iget-object v5, v0, Lorg/libsdl/app/SDLJoystickHandler_API16;->mJoysticks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_e6

    iget-object v5, v0, Lorg/libsdl/app/SDLJoystickHandler_API16;->mJoysticks:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;

    iget v5, v5, Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;->device_id:I

    if-ne v5, v2, :cond_114

    iget-object v2, v0, Lorg/libsdl/app/SDLJoystickHandler_API16;->mJoysticks:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_e6

    :cond_114
    add-int/lit8 v4, v4, 0x1

    goto :goto_fa

    :cond_117
    return-void
.end method
