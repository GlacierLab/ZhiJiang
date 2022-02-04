.class final enum Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;
.super Ljava/lang/Enum;
.source "HIDDeviceBLESteamController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Operation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;

.field public static final enum CHR_READ:Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;

.field public static final enum CHR_WRITE:Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;

.field public static final enum ENABLE_NOTIFICATION:Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    new-instance v0, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;

    const-string v1, "CHR_READ"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;->CHR_READ:Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;

    new-instance v0, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;

    const-string v1, "CHR_WRITE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;->CHR_WRITE:Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;

    new-instance v0, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;

    const-string v1, "ENABLE_NOTIFICATION"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;->ENABLE_NOTIFICATION:Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;

    const/4 v1, 0x3

    new-array v1, v1, [Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;

    sget-object v5, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;->CHR_READ:Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;

    aput-object v5, v1, v2

    sget-object v2, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;->CHR_WRITE:Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;->$VALUES:[Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;
    .registers 2

    const-class v0, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;

    return-object p0
.end method

.method public static values()[Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;
    .registers 1

    sget-object v0, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;->$VALUES:[Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;

    invoke-virtual {v0}, [Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;

    return-object v0
.end method
