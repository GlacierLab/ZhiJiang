.class public final Luk/uuid/slf4j/android/LoggerFactory;
.super Ljava/lang/Object;
.source "LoggerFactory.java"

# interfaces
.implements Lorg/slf4j/ILoggerFactory;


# static fields
.field private static final LOG:Lorg/slf4j/Logger;

.field static final MAX_TAG_LEN:I = 0x17

.field private static final TRACE:Z


# instance fields
.field private final loggerMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lorg/slf4j/Logger;",
            ">;"
        }
    .end annotation
.end field

.field private final loggingConfig:Luk/uuid/slf4j/android/LoggingConfig;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Luk/uuid/slf4j/android/LoggerConfig;

    const-string v1, "slf4j-android"

    invoke-direct {v0, v1}, Luk/uuid/slf4j/android/LoggerConfig;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Luk/uuid/slf4j/android/LoggerConfig;->showThread:Ljava/lang/Boolean;

    sget-object v1, Luk/uuid/slf4j/android/LoggerConfig;->DEFAULT:Luk/uuid/slf4j/android/LoggerConfig;

    invoke-virtual {v0, v1}, Luk/uuid/slf4j/android/LoggerConfig;->merge(Luk/uuid/slf4j/android/LoggerConfig;)Z

    new-instance v1, Luk/uuid/slf4j/android/LogAdapter;

    const-string v2, "uk.uuid.slf4j.android"

    invoke-direct {v1, v2, v0}, Luk/uuid/slf4j/android/LogAdapter;-><init>(Ljava/lang/String;Luk/uuid/slf4j/android/LoggerConfig;)V

    sput-object v1, Luk/uuid/slf4j/android/LoggerFactory;->LOG:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    sput-boolean v0, Luk/uuid/slf4j/android/LoggerFactory;->TRACE:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Luk/uuid/slf4j/android/LoggerFactory;->loggerMap:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Luk/uuid/slf4j/android/LoggingConfig;

    sget-object v1, Luk/uuid/slf4j/android/LoggerFactory;->LOG:Lorg/slf4j/Logger;

    const-string v2, "config.properties"

    invoke-direct {v0, v2, v1}, Luk/uuid/slf4j/android/LoggingConfig;-><init>(Ljava/lang/String;Lorg/slf4j/Logger;)V

    iput-object v0, p0, Luk/uuid/slf4j/android/LoggerFactory;->loggingConfig:Luk/uuid/slf4j/android/LoggingConfig;

    return-void
.end method

.method static final createTag(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x17

    if-gt v0, v1, :cond_9

    return-object p0

    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    array-length v0, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_12
    const/16 v6, 0x2e

    if-ge v3, v0, :cond_36

    aget-char v7, p0, v3

    if-ne v7, v6, :cond_2d

    aget-char v4, p0, v5

    if-eq v4, v6, :cond_20

    add-int/lit8 v5, v5, 0x1

    :cond_20
    move v4, v5

    add-int/lit8 v5, v3, 0x1

    if-ge v5, v0, :cond_2c

    aget-char v5, p0, v5

    if-eq v5, v6, :cond_2c

    add-int/lit8 v5, v4, 0x1

    goto :goto_2d

    :cond_2c
    move v5, v4

    :cond_2d
    :goto_2d
    aget-char v6, p0, v3

    aput-char v6, p0, v4

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_36
    if-le v4, v1, :cond_58

    add-int/lit8 v5, v5, -0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_3c
    if-ge v0, v4, :cond_53

    aget-char v7, p0, v0

    if-ne v7, v6, :cond_49

    if-ne v0, v5, :cond_50

    const/16 v7, 0x16

    if-lt v3, v7, :cond_49

    goto :goto_50

    :cond_49
    add-int/lit8 v7, v3, 0x1

    aget-char v8, p0, v0

    aput-char v8, p0, v3

    move v3, v7

    :cond_50
    :goto_50
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    :cond_53
    if-le v3, v1, :cond_56

    goto :goto_59

    :cond_56
    move v1, v3

    goto :goto_59

    :cond_58
    move v1, v4

    :goto_59
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, v2, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method private final getConfig(Ljava/lang/String;)Luk/uuid/slf4j/android/LoggerConfig;
    .registers 9

    sget-boolean v0, Luk/uuid/slf4j/android/LoggerFactory;->TRACE:Z

    if-eqz v0, :cond_9

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    goto :goto_b

    :cond_9
    const-wide/16 v0, 0x0

    :goto_b
    iget-object v2, p0, Luk/uuid/slf4j/android/LoggerFactory;->loggingConfig:Luk/uuid/slf4j/android/LoggingConfig;

    invoke-virtual {v2, p1}, Luk/uuid/slf4j/android/LoggingConfig;->get(Ljava/lang/String;)Luk/uuid/slf4j/android/LoggerConfig;

    move-result-object v2

    iget-object v3, v2, Luk/uuid/slf4j/android/LoggerConfig;->tag:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2c

    invoke-static {p1}, Luk/uuid/slf4j/android/LoggerFactory;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Luk/uuid/slf4j/android/LoggerConfig;->tag:Ljava/lang/String;

    sget-boolean v3, Luk/uuid/slf4j/android/LoggerFactory;->TRACE:Z

    if-eqz v3, :cond_2c

    sget-object v3, Luk/uuid/slf4j/android/LoggerFactory;->LOG:Lorg/slf4j/Logger;

    iget-object v4, v2, Luk/uuid/slf4j/android/LoggerConfig;->tag:Ljava/lang/String;

    const-string v5, "Created tag {} for {}"

    invoke-interface {v3, v5, v4, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2c
    sget-boolean v3, Luk/uuid/slf4j/android/LoggerFactory;->TRACE:Z

    if-eqz v3, :cond_46

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sget-object v5, Luk/uuid/slf4j/android/LoggerFactory;->LOG:Lorg/slf4j/Logger;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sub-long/2addr v3, v0

    invoke-virtual {v6, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "Retrieved config for {} in {}µs"

    invoke-interface {v5, v1, p1, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_46
    return-object v2
.end method


# virtual methods
.method public final getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;
    .registers 10

    sget-boolean v0, Luk/uuid/slf4j/android/LoggerFactory;->TRACE:Z

    if-eqz v0, :cond_9

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    goto :goto_b

    :cond_9
    const-wide/16 v0, 0x0

    :goto_b
    iget-object v2, p0, Luk/uuid/slf4j/android/LoggerFactory;->loggerMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/slf4j/Logger;

    if-eqz v2, :cond_30

    sget-boolean v3, Luk/uuid/slf4j/android/LoggerFactory;->TRACE:Z

    if-eqz v3, :cond_2f

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sget-object v5, Luk/uuid/slf4j/android/LoggerFactory;->LOG:Lorg/slf4j/Logger;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sub-long/2addr v3, v0

    invoke-virtual {v6, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "Found logger {} in {}µs"

    invoke-interface {v5, v1, p1, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2f
    return-object v2

    :cond_30
    new-instance v2, Luk/uuid/slf4j/android/LogAdapter;

    invoke-direct {p0, p1}, Luk/uuid/slf4j/android/LoggerFactory;->getConfig(Ljava/lang/String;)Luk/uuid/slf4j/android/LoggerConfig;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Luk/uuid/slf4j/android/LogAdapter;-><init>(Ljava/lang/String;Luk/uuid/slf4j/android/LoggerConfig;)V

    iget-object v3, p0, Luk/uuid/slf4j/android/LoggerFactory;->loggerMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, p1, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/slf4j/Logger;

    sget-boolean v4, Luk/uuid/slf4j/android/LoggerFactory;->TRACE:Z

    if-eqz v4, :cond_70

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    if-nez v3, :cond_5e

    sget-object v6, Luk/uuid/slf4j/android/LoggerFactory;->LOG:Lorg/slf4j/Logger;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sub-long/2addr v4, v0

    invoke-virtual {v7, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "Created logger {} in {}µs"

    invoke-interface {v6, v1, p1, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_70

    :cond_5e
    sget-object v6, Luk/uuid/slf4j/android/LoggerFactory;->LOG:Lorg/slf4j/Logger;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sub-long/2addr v4, v0

    invoke-virtual {v7, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "Found existing logger {} in {}µs"

    invoke-interface {v6, v1, p1, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_70
    :goto_70
    if-nez v3, :cond_73

    goto :goto_74

    :cond_73
    move-object v2, v3

    :goto_74
    return-object v2
.end method
