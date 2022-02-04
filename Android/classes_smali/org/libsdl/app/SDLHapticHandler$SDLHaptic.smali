.class Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;
.super Ljava/lang/Object;
.source "SDLControllerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/libsdl/app/SDLHapticHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SDLHaptic"
.end annotation


# instance fields
.field public device_id:I

.field public name:Ljava/lang/String;

.field public vib:Landroid/os/Vibrator;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
