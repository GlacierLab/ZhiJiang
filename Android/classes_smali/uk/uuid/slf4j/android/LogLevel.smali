.class public final enum Luk/uuid/slf4j/android/LogLevel;
.super Ljava/lang/Enum;
.source "LogLevel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Luk/uuid/slf4j/android/LogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Luk/uuid/slf4j/android/LogLevel;

.field public static final enum DEBUG:Luk/uuid/slf4j/android/LogLevel;

.field public static final enum ERROR:Luk/uuid/slf4j/android/LogLevel;

.field public static final enum INFO:Luk/uuid/slf4j/android/LogLevel;

.field public static final enum NATIVE:Luk/uuid/slf4j/android/LogLevel;

.field public static final enum SUPPRESS:Luk/uuid/slf4j/android/LogLevel;

.field public static final enum VERBOSE:Luk/uuid/slf4j/android/LogLevel;

.field public static final enum WARN:Luk/uuid/slf4j/android/LogLevel;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    new-instance v0, Luk/uuid/slf4j/android/LogLevel;

    const-string v1, "SUPPRESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Luk/uuid/slf4j/android/LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Luk/uuid/slf4j/android/LogLevel;->SUPPRESS:Luk/uuid/slf4j/android/LogLevel;

    new-instance v0, Luk/uuid/slf4j/android/LogLevel;

    const-string v1, "ERROR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Luk/uuid/slf4j/android/LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Luk/uuid/slf4j/android/LogLevel;->ERROR:Luk/uuid/slf4j/android/LogLevel;

    new-instance v0, Luk/uuid/slf4j/android/LogLevel;

    const-string v1, "WARN"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Luk/uuid/slf4j/android/LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Luk/uuid/slf4j/android/LogLevel;->WARN:Luk/uuid/slf4j/android/LogLevel;

    new-instance v0, Luk/uuid/slf4j/android/LogLevel;

    const-string v1, "INFO"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Luk/uuid/slf4j/android/LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Luk/uuid/slf4j/android/LogLevel;->INFO:Luk/uuid/slf4j/android/LogLevel;

    new-instance v0, Luk/uuid/slf4j/android/LogLevel;

    const-string v1, "DEBUG"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Luk/uuid/slf4j/android/LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Luk/uuid/slf4j/android/LogLevel;->DEBUG:Luk/uuid/slf4j/android/LogLevel;

    new-instance v0, Luk/uuid/slf4j/android/LogLevel;

    const-string v1, "VERBOSE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Luk/uuid/slf4j/android/LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Luk/uuid/slf4j/android/LogLevel;->VERBOSE:Luk/uuid/slf4j/android/LogLevel;

    new-instance v0, Luk/uuid/slf4j/android/LogLevel;

    const-string v1, "NATIVE"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Luk/uuid/slf4j/android/LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Luk/uuid/slf4j/android/LogLevel;->NATIVE:Luk/uuid/slf4j/android/LogLevel;

    const/4 v1, 0x7

    new-array v1, v1, [Luk/uuid/slf4j/android/LogLevel;

    sget-object v9, Luk/uuid/slf4j/android/LogLevel;->SUPPRESS:Luk/uuid/slf4j/android/LogLevel;

    aput-object v9, v1, v2

    sget-object v2, Luk/uuid/slf4j/android/LogLevel;->ERROR:Luk/uuid/slf4j/android/LogLevel;

    aput-object v2, v1, v3

    sget-object v2, Luk/uuid/slf4j/android/LogLevel;->WARN:Luk/uuid/slf4j/android/LogLevel;

    aput-object v2, v1, v4

    sget-object v2, Luk/uuid/slf4j/android/LogLevel;->INFO:Luk/uuid/slf4j/android/LogLevel;

    aput-object v2, v1, v5

    sget-object v2, Luk/uuid/slf4j/android/LogLevel;->DEBUG:Luk/uuid/slf4j/android/LogLevel;

    aput-object v2, v1, v6

    sget-object v2, Luk/uuid/slf4j/android/LogLevel;->VERBOSE:Luk/uuid/slf4j/android/LogLevel;

    aput-object v2, v1, v7

    aput-object v0, v1, v8

    sput-object v1, Luk/uuid/slf4j/android/LogLevel;->$VALUES:[Luk/uuid/slf4j/android/LogLevel;

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

.method public static valueOf(Ljava/lang/String;)Luk/uuid/slf4j/android/LogLevel;
    .registers 2

    const-class v0, Luk/uuid/slf4j/android/LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Luk/uuid/slf4j/android/LogLevel;

    return-object p0
.end method

.method public static values()[Luk/uuid/slf4j/android/LogLevel;
    .registers 1

    sget-object v0, Luk/uuid/slf4j/android/LogLevel;->$VALUES:[Luk/uuid/slf4j/android/LogLevel;

    invoke-virtual {v0}, [Luk/uuid/slf4j/android/LogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Luk/uuid/slf4j/android/LogLevel;

    return-object v0
.end method
