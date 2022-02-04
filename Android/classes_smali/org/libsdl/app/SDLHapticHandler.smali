.class Lorg/libsdl/app/SDLHapticHandler;
.super Ljava/lang/Object;
.source "SDLControllerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;
    }
.end annotation


# instance fields
.field private final mHaptics:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/libsdl/app/SDLHapticHandler;->mHaptics:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected getHaptic(I)Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;
    .registers 5

    iget-object v0, p0, Lorg/libsdl/app/SDLHapticHandler;->mHaptics:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;

    iget v2, v1, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->device_id:I

    if-ne v2, p1, :cond_6

    return-object v1

    :cond_17
    const/4 p1, 0x0

    return-object p1
.end method

.method public pollHapticDevices()V
    .registers 10

    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_7
    const/4 v2, -0x1

    if-le v1, v2, :cond_42

    aget v2, v0, v1

    invoke-virtual {p0, v2}, Lorg/libsdl/app/SDLHapticHandler;->getHaptic(I)Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;

    move-result-object v2

    if-nez v2, :cond_3f

    aget v2, v0, v1

    invoke-static {v2}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/InputDevice;->getVibrator()Landroid/os/Vibrator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v4

    if-eqz v4, :cond_3f

    new-instance v4, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;

    invoke-direct {v4}, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;-><init>()V

    aget v5, v0, v1

    iput v5, v4, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->device_id:I

    invoke-virtual {v2}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->name:Ljava/lang/String;

    iput-object v3, v4, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->vib:Landroid/os/Vibrator;

    iget-object v2, p0, Lorg/libsdl/app/SDLHapticHandler;->mHaptics:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v2, v4, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->device_id:I

    iget-object v3, v4, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/libsdl/app/SDLControllerManager;->nativeAddHaptic(ILjava/lang/String;)I

    :cond_3f
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    :cond_42
    invoke-static {}, Lorg/libsdl/app/SDL;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    const v2, 0xf423f

    const/4 v3, 0x0

    if-eqz v1, :cond_7a

    invoke-virtual {v1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v4

    if-eqz v4, :cond_7b

    invoke-virtual {p0, v2}, Lorg/libsdl/app/SDLHapticHandler;->getHaptic(I)Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;

    move-result-object v5

    if-nez v5, :cond_7b

    new-instance v5, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;

    invoke-direct {v5}, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;-><init>()V

    iput v2, v5, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->device_id:I

    const-string v6, "VIBRATOR_SERVICE"

    iput-object v6, v5, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->name:Ljava/lang/String;

    iput-object v1, v5, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->vib:Landroid/os/Vibrator;

    iget-object v1, p0, Lorg/libsdl/app/SDLHapticHandler;->mHaptics:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, v5, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->device_id:I

    iget-object v5, v5, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->name:Ljava/lang/String;

    invoke-static {v1, v5}, Lorg/libsdl/app/SDLControllerManager;->nativeAddHaptic(ILjava/lang/String;)I

    goto :goto_7b

    :cond_7a
    const/4 v4, 0x0

    :cond_7b
    :goto_7b
    const/4 v1, 0x0

    iget-object v5, p0, Lorg/libsdl/app/SDLHapticHandler;->mHaptics:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_82
    :goto_82
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;

    iget v6, v6, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->device_id:I

    const/4 v7, 0x0

    :goto_91
    array-length v8, v0

    if-ge v7, v8, :cond_9c

    aget v8, v0, v7

    if-ne v6, v8, :cond_99

    goto :goto_9c

    :cond_99
    add-int/lit8 v7, v7, 0x1

    goto :goto_91

    :cond_9c
    :goto_9c
    if-ne v6, v2, :cond_a0

    if-nez v4, :cond_82

    :cond_a0
    array-length v8, v0

    if-ne v7, v8, :cond_82

    if-nez v1, :cond_aa

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_aa
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_82

    :cond_b2
    if-eqz v1, :cond_e9

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b8
    :goto_b8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lorg/libsdl/app/SDLControllerManager;->nativeRemoveHaptic(I)I

    const/4 v2, 0x0

    :goto_cc
    iget-object v4, p0, Lorg/libsdl/app/SDLHapticHandler;->mHaptics:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_b8

    iget-object v4, p0, Lorg/libsdl/app/SDLHapticHandler;->mHaptics:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;

    iget v4, v4, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->device_id:I

    if-ne v4, v1, :cond_e6

    iget-object v1, p0, Lorg/libsdl/app/SDLHapticHandler;->mHaptics:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_b8

    :cond_e6
    add-int/lit8 v2, v2, 0x1

    goto :goto_cc

    :cond_e9
    return-void
.end method

.method public run(IFI)V
    .registers 4

    invoke-virtual {p0, p1}, Lorg/libsdl/app/SDLHapticHandler;->getHaptic(I)Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;

    move-result-object p1

    if-eqz p1, :cond_c

    iget-object p1, p1, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->vib:Landroid/os/Vibrator;

    int-to-long p2, p3

    invoke-virtual {p1, p2, p3}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_c
    return-void
.end method

.method public stop(I)V
    .registers 2

    invoke-virtual {p0, p1}, Lorg/libsdl/app/SDLHapticHandler;->getHaptic(I)Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p1, p1, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->vib:Landroid/os/Vibrator;

    invoke-virtual {p1}, Landroid/os/Vibrator;->cancel()V

    :cond_b
    return-void
.end method
