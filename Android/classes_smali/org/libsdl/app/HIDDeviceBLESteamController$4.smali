.class synthetic Lorg/libsdl/app/HIDDeviceBLESteamController$4;
.super Ljava/lang/Object;
.source "HIDDeviceBLESteamController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/libsdl/app/HIDDeviceBLESteamController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$libsdl$app$HIDDeviceBLESteamController$GattOperation$Operation:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;->values()[Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/libsdl/app/HIDDeviceBLESteamController$4;->$SwitchMap$org$libsdl$app$HIDDeviceBLESteamController$GattOperation$Operation:[I

    :try_start_9
    sget-object v1, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;->CHR_READ:Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;

    invoke-virtual {v1}, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lorg/libsdl/app/HIDDeviceBLESteamController$4;->$SwitchMap$org$libsdl$app$HIDDeviceBLESteamController$GattOperation$Operation:[I

    sget-object v1, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;->CHR_WRITE:Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;

    invoke-virtual {v1}, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lorg/libsdl/app/HIDDeviceBLESteamController$4;->$SwitchMap$org$libsdl$app$HIDDeviceBLESteamController$GattOperation$Operation:[I

    sget-object v1, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;->ENABLE_NOTIFICATION:Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;

    invoke-virtual {v1}, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    return-void
.end method
