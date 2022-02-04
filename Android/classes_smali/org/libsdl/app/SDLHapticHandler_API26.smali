.class Lorg/libsdl/app/SDLHapticHandler_API26;
.super Lorg/libsdl/app/SDLHapticHandler;
.source "SDLControllerManager.java"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/libsdl/app/SDLHapticHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public run(IFI)V
    .registers 7

    invoke-virtual {p0, p1}, Lorg/libsdl/app/SDLHapticHandler_API26;->getHaptic(I)Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;

    move-result-object v0

    if-eqz v0, :cond_53

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rtest: Vibe with intensity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SDL"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-nez v1, :cond_2d

    invoke-virtual {p0, p1}, Lorg/libsdl/app/SDLHapticHandler_API26;->stop(I)V

    return-void

    :cond_2d
    const/high16 v1, 0x437f0000  # 255.0f

    mul-float p2, p2, v1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    const/16 v1, 0xff

    if-le p2, v1, :cond_3b

    const/16 p2, 0xff

    :cond_3b
    const/4 v1, 0x1

    if-ge p2, v1, :cond_42

    invoke-virtual {p0, p1}, Lorg/libsdl/app/SDLHapticHandler_API26;->stop(I)V

    return-void

    :cond_42
    :try_start_42
    iget-object p1, v0, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->vib:Landroid/os/Vibrator;

    int-to-long v1, p3

    invoke-static {v1, v2, p2}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_4c} :catch_4d

    goto :goto_53

    :catch_4d
    iget-object p1, v0, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->vib:Landroid/os/Vibrator;

    int-to-long p2, p3

    invoke-virtual {p1, p2, p3}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_53
    :goto_53
    return-void
.end method
