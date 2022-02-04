.class Lorg/libsdl/app/SDLJoystickHandler_API16$RangeComparator;
.super Ljava/lang/Object;
.source "SDLControllerManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/libsdl/app/SDLJoystickHandler_API16;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RangeComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/view/InputDevice$MotionRange;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/view/InputDevice$MotionRange;Landroid/view/InputDevice$MotionRange;)I
    .registers 5

    invoke-virtual {p1}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    move-result p2

    const/16 v0, 0x17

    const/16 v1, 0x16

    if-ne p1, v1, :cond_11

    const/16 p1, 0x17

    goto :goto_15

    :cond_11
    if-ne p1, v0, :cond_15

    const/16 p1, 0x16

    :cond_15
    :goto_15
    if-ne p2, v1, :cond_1a

    const/16 p2, 0x17

    goto :goto_1e

    :cond_1a
    if-ne p2, v0, :cond_1e

    const/16 p2, 0x16

    :cond_1e
    :goto_1e
    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Landroid/view/InputDevice$MotionRange;

    check-cast p2, Landroid/view/InputDevice$MotionRange;

    invoke-virtual {p0, p1, p2}, Lorg/libsdl/app/SDLJoystickHandler_API16$RangeComparator;->compare(Landroid/view/InputDevice$MotionRange;Landroid/view/InputDevice$MotionRange;)I

    move-result p1

    return p1
.end method
