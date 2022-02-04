.class final Luk/uuid/slf4j/android/LoggerConfig;
.super Ljava/lang/Object;
.source "LoggerConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luk/uuid/slf4j/android/LoggerConfig$ShowName;
    }
.end annotation


# static fields
.field static final DEFAULT:Luk/uuid/slf4j/android/LoggerConfig;


# instance fields
.field level:Luk/uuid/slf4j/android/LogLevel;

.field showName:Luk/uuid/slf4j/android/LoggerConfig$ShowName;

.field showThread:Ljava/lang/Boolean;

.field tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Luk/uuid/slf4j/android/LoggerConfig;

    invoke-direct {v0}, Luk/uuid/slf4j/android/LoggerConfig;-><init>()V

    sput-object v0, Luk/uuid/slf4j/android/LoggerConfig;->DEFAULT:Luk/uuid/slf4j/android/LoggerConfig;

    const-string v1, ""

    iput-object v1, v0, Luk/uuid/slf4j/android/LoggerConfig;->tag:Ljava/lang/String;

    sget-object v1, Luk/uuid/slf4j/android/LogLevel;->NATIVE:Luk/uuid/slf4j/android/LogLevel;

    iput-object v1, v0, Luk/uuid/slf4j/android/LoggerConfig;->level:Luk/uuid/slf4j/android/LogLevel;

    sget-object v0, Luk/uuid/slf4j/android/LoggerConfig;->DEFAULT:Luk/uuid/slf4j/android/LoggerConfig;

    sget-object v1, Luk/uuid/slf4j/android/LoggerConfig$ShowName;->FALSE:Luk/uuid/slf4j/android/LoggerConfig$ShowName;

    iput-object v1, v0, Luk/uuid/slf4j/android/LoggerConfig;->showName:Luk/uuid/slf4j/android/LoggerConfig$ShowName;

    sget-object v0, Luk/uuid/slf4j/android/LoggerConfig;->DEFAULT:Luk/uuid/slf4j/android/LoggerConfig;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Luk/uuid/slf4j/android/LoggerConfig;->showThread:Ljava/lang/Boolean;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luk/uuid/slf4j/android/LoggerConfig;->tag:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Luk/uuid/slf4j/android/LogLevel;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luk/uuid/slf4j/android/LoggerConfig;->level:Luk/uuid/slf4j/android/LogLevel;

    return-void
.end method

.method constructor <init>(Luk/uuid/slf4j/android/LoggerConfig$ShowName;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luk/uuid/slf4j/android/LoggerConfig;->showName:Luk/uuid/slf4j/android/LoggerConfig$ShowName;

    return-void
.end method


# virtual methods
.method final isComplete()Z
    .registers 2

    iget-object v0, p0, Luk/uuid/slf4j/android/LoggerConfig;->tag:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p0, Luk/uuid/slf4j/android/LoggerConfig;->level:Luk/uuid/slf4j/android/LogLevel;

    if-eqz v0, :cond_12

    iget-object v0, p0, Luk/uuid/slf4j/android/LoggerConfig;->showName:Luk/uuid/slf4j/android/LoggerConfig$ShowName;

    if-eqz v0, :cond_12

    iget-object v0, p0, Luk/uuid/slf4j/android/LoggerConfig;->showThread:Ljava/lang/Boolean;

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method final merge(Luk/uuid/slf4j/android/LoggerConfig;)Z
    .registers 5

    if-nez p1, :cond_7

    invoke-virtual {p0}, Luk/uuid/slf4j/android/LoggerConfig;->isComplete()Z

    move-result p1

    return p1

    :cond_7
    const/4 v0, 0x1

    iget-object v1, p0, Luk/uuid/slf4j/android/LoggerConfig;->tag:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_12

    iget-object v0, p1, Luk/uuid/slf4j/android/LoggerConfig;->tag:Ljava/lang/String;

    iput-object v0, p0, Luk/uuid/slf4j/android/LoggerConfig;->tag:Ljava/lang/String;

    const/4 v0, 0x0

    :cond_12
    iget-object v1, p0, Luk/uuid/slf4j/android/LoggerConfig;->level:Luk/uuid/slf4j/android/LogLevel;

    if-nez v1, :cond_1b

    iget-object v0, p1, Luk/uuid/slf4j/android/LoggerConfig;->level:Luk/uuid/slf4j/android/LogLevel;

    iput-object v0, p0, Luk/uuid/slf4j/android/LoggerConfig;->level:Luk/uuid/slf4j/android/LogLevel;

    const/4 v0, 0x0

    :cond_1b
    iget-object v1, p0, Luk/uuid/slf4j/android/LoggerConfig;->showName:Luk/uuid/slf4j/android/LoggerConfig$ShowName;

    if-nez v1, :cond_24

    iget-object v0, p1, Luk/uuid/slf4j/android/LoggerConfig;->showName:Luk/uuid/slf4j/android/LoggerConfig$ShowName;

    iput-object v0, p0, Luk/uuid/slf4j/android/LoggerConfig;->showName:Luk/uuid/slf4j/android/LoggerConfig$ShowName;

    const/4 v0, 0x0

    :cond_24
    iget-object v1, p0, Luk/uuid/slf4j/android/LoggerConfig;->showThread:Ljava/lang/Boolean;

    if-nez v1, :cond_2d

    iget-object p1, p1, Luk/uuid/slf4j/android/LoggerConfig;->showThread:Ljava/lang/Boolean;

    iput-object p1, p0, Luk/uuid/slf4j/android/LoggerConfig;->showThread:Ljava/lang/Boolean;

    goto :goto_2e

    :cond_2d
    move v2, v0

    :goto_2e
    return v2
.end method
