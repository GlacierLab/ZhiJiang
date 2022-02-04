.class final enum Luk/uuid/slf4j/android/LoggerConfig$ShowName;
.super Ljava/lang/Enum;
.source "LoggerConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luk/uuid/slf4j/android/LoggerConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ShowName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Luk/uuid/slf4j/android/LoggerConfig$ShowName;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Luk/uuid/slf4j/android/LoggerConfig$ShowName;

.field public static final enum CALLER:Luk/uuid/slf4j/android/LoggerConfig$ShowName;

.field public static final enum COMPACT:Luk/uuid/slf4j/android/LoggerConfig$ShowName;

.field public static final enum FALSE:Luk/uuid/slf4j/android/LoggerConfig$ShowName;

.field public static final enum LONG:Luk/uuid/slf4j/android/LoggerConfig$ShowName;

.field public static final enum SHORT:Luk/uuid/slf4j/android/LoggerConfig$ShowName;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    new-instance v0, Luk/uuid/slf4j/android/LoggerConfig$ShowName;

    const-string v1, "FALSE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Luk/uuid/slf4j/android/LoggerConfig$ShowName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Luk/uuid/slf4j/android/LoggerConfig$ShowName;->FALSE:Luk/uuid/slf4j/android/LoggerConfig$ShowName;

    new-instance v0, Luk/uuid/slf4j/android/LoggerConfig$ShowName;

    const-string v1, "SHORT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Luk/uuid/slf4j/android/LoggerConfig$ShowName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Luk/uuid/slf4j/android/LoggerConfig$ShowName;->SHORT:Luk/uuid/slf4j/android/LoggerConfig$ShowName;

    new-instance v0, Luk/uuid/slf4j/android/LoggerConfig$ShowName;

    const-string v1, "COMPACT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Luk/uuid/slf4j/android/LoggerConfig$ShowName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Luk/uuid/slf4j/android/LoggerConfig$ShowName;->COMPACT:Luk/uuid/slf4j/android/LoggerConfig$ShowName;

    new-instance v0, Luk/uuid/slf4j/android/LoggerConfig$ShowName;

    const-string v1, "LONG"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Luk/uuid/slf4j/android/LoggerConfig$ShowName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Luk/uuid/slf4j/android/LoggerConfig$ShowName;->LONG:Luk/uuid/slf4j/android/LoggerConfig$ShowName;

    new-instance v0, Luk/uuid/slf4j/android/LoggerConfig$ShowName;

    const-string v1, "CALLER"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Luk/uuid/slf4j/android/LoggerConfig$ShowName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Luk/uuid/slf4j/android/LoggerConfig$ShowName;->CALLER:Luk/uuid/slf4j/android/LoggerConfig$ShowName;

    const/4 v1, 0x5

    new-array v1, v1, [Luk/uuid/slf4j/android/LoggerConfig$ShowName;

    sget-object v7, Luk/uuid/slf4j/android/LoggerConfig$ShowName;->FALSE:Luk/uuid/slf4j/android/LoggerConfig$ShowName;

    aput-object v7, v1, v2

    sget-object v2, Luk/uuid/slf4j/android/LoggerConfig$ShowName;->SHORT:Luk/uuid/slf4j/android/LoggerConfig$ShowName;

    aput-object v2, v1, v3

    sget-object v2, Luk/uuid/slf4j/android/LoggerConfig$ShowName;->COMPACT:Luk/uuid/slf4j/android/LoggerConfig$ShowName;

    aput-object v2, v1, v4

    sget-object v2, Luk/uuid/slf4j/android/LoggerConfig$ShowName;->LONG:Luk/uuid/slf4j/android/LoggerConfig$ShowName;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Luk/uuid/slf4j/android/LoggerConfig$ShowName;->$VALUES:[Luk/uuid/slf4j/android/LoggerConfig$ShowName;

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

.method public static valueOf(Ljava/lang/String;)Luk/uuid/slf4j/android/LoggerConfig$ShowName;
    .registers 2

    const-class v0, Luk/uuid/slf4j/android/LoggerConfig$ShowName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Luk/uuid/slf4j/android/LoggerConfig$ShowName;

    return-object p0
.end method

.method public static values()[Luk/uuid/slf4j/android/LoggerConfig$ShowName;
    .registers 1

    sget-object v0, Luk/uuid/slf4j/android/LoggerConfig$ShowName;->$VALUES:[Luk/uuid/slf4j/android/LoggerConfig$ShowName;

    invoke-virtual {v0}, [Luk/uuid/slf4j/android/LoggerConfig$ShowName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Luk/uuid/slf4j/android/LoggerConfig$ShowName;

    return-object v0
.end method
