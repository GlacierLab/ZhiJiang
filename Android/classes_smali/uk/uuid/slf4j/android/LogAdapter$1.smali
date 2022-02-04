.class synthetic Luk/uuid/slf4j/android/LogAdapter$1;
.super Ljava/lang/Object;
.source "LogAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luk/uuid/slf4j/android/LogAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$uk$uuid$slf4j$android$LoggerConfig$ShowName:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Luk/uuid/slf4j/android/LoggerConfig$ShowName;->values()[Luk/uuid/slf4j/android/LoggerConfig$ShowName;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Luk/uuid/slf4j/android/LogAdapter$1;->$SwitchMap$uk$uuid$slf4j$android$LoggerConfig$ShowName:[I

    :try_start_9
    sget-object v1, Luk/uuid/slf4j/android/LoggerConfig$ShowName;->CALLER:Luk/uuid/slf4j/android/LoggerConfig$ShowName;

    invoke-virtual {v1}, Luk/uuid/slf4j/android/LoggerConfig$ShowName;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Luk/uuid/slf4j/android/LogAdapter$1;->$SwitchMap$uk$uuid$slf4j$android$LoggerConfig$ShowName:[I

    sget-object v1, Luk/uuid/slf4j/android/LoggerConfig$ShowName;->LONG:Luk/uuid/slf4j/android/LoggerConfig$ShowName;

    invoke-virtual {v1}, Luk/uuid/slf4j/android/LoggerConfig$ShowName;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Luk/uuid/slf4j/android/LogAdapter$1;->$SwitchMap$uk$uuid$slf4j$android$LoggerConfig$ShowName:[I

    sget-object v1, Luk/uuid/slf4j/android/LoggerConfig$ShowName;->COMPACT:Luk/uuid/slf4j/android/LoggerConfig$ShowName;

    invoke-virtual {v1}, Luk/uuid/slf4j/android/LoggerConfig$ShowName;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Luk/uuid/slf4j/android/LogAdapter$1;->$SwitchMap$uk$uuid$slf4j$android$LoggerConfig$ShowName:[I

    sget-object v1, Luk/uuid/slf4j/android/LoggerConfig$ShowName;->SHORT:Luk/uuid/slf4j/android/LoggerConfig$ShowName;

    invoke-virtual {v1}, Luk/uuid/slf4j/android/LoggerConfig$ShowName;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Luk/uuid/slf4j/android/LogAdapter$1;->$SwitchMap$uk$uuid$slf4j$android$LoggerConfig$ShowName:[I

    sget-object v1, Luk/uuid/slf4j/android/LoggerConfig$ShowName;->FALSE:Luk/uuid/slf4j/android/LoggerConfig$ShowName;

    invoke-virtual {v1}, Luk/uuid/slf4j/android/LoggerConfig$ShowName;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    return-void
.end method
