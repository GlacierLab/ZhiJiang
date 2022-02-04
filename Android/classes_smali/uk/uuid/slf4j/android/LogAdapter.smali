.class final Luk/uuid/slf4j/android/LogAdapter;
.super Ljava/lang/Object;
.source "LogAdapter.java"

# interfaces
.implements Lorg/slf4j/Logger;


# static fields
.field private static final DIRECT_FRAMES:I = 0x2

.field private static final FORMAT_FRAMES:I = 0x3

.field private static final nativeLevelMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Luk/uuid/slf4j/android/LogLevel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final DEBUG:Z

.field private final ERROR:Z

.field private final INFO:Z

.field private final TRACE:Z

.field private final WARN:Z

.field private final complexRewriteMsg:Z

.field private final name:Ljava/lang/String;

.field private final prefixName:Ljava/lang/String;

.field private final showCaller:Z

.field private final showThread:Z

.field private final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Luk/uuid/slf4j/android/LogAdapter;->nativeLevelMap:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Luk/uuid/slf4j/android/LoggerConfig;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luk/uuid/slf4j/android/LogAdapter;->name:Ljava/lang/String;

    iget-object v0, p2, Luk/uuid/slf4j/android/LoggerConfig;->tag:Ljava/lang/String;

    iput-object v0, p0, Luk/uuid/slf4j/android/LogAdapter;->tag:Ljava/lang/String;

    iget-object v0, p2, Luk/uuid/slf4j/android/LoggerConfig;->level:Luk/uuid/slf4j/android/LogLevel;

    sget-object v1, Luk/uuid/slf4j/android/LogLevel;->NATIVE:Luk/uuid/slf4j/android/LogLevel;

    if-ne v0, v1, :cond_15

    invoke-direct {p0}, Luk/uuid/slf4j/android/LogAdapter;->getNativeLogLevel()Luk/uuid/slf4j/android/LogLevel;

    move-result-object v0

    iput-object v0, p2, Luk/uuid/slf4j/android/LoggerConfig;->level:Luk/uuid/slf4j/android/LogLevel;

    :cond_15
    iget-object v0, p2, Luk/uuid/slf4j/android/LoggerConfig;->level:Luk/uuid/slf4j/android/LogLevel;

    sget-object v1, Luk/uuid/slf4j/android/LogLevel;->VERBOSE:Luk/uuid/slf4j/android/LogLevel;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1f

    const/4 v0, 0x1

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    iput-boolean v0, p0, Luk/uuid/slf4j/android/LogAdapter;->TRACE:Z

    if-nez v0, :cond_2d

    iget-object v0, p2, Luk/uuid/slf4j/android/LoggerConfig;->level:Luk/uuid/slf4j/android/LogLevel;

    sget-object v1, Luk/uuid/slf4j/android/LogLevel;->DEBUG:Luk/uuid/slf4j/android/LogLevel;

    if-ne v0, v1, :cond_2b

    goto :goto_2d

    :cond_2b
    const/4 v0, 0x0

    goto :goto_2e

    :cond_2d
    :goto_2d
    const/4 v0, 0x1

    :goto_2e
    iput-boolean v0, p0, Luk/uuid/slf4j/android/LogAdapter;->DEBUG:Z

    if-nez v0, :cond_3b

    iget-object v0, p2, Luk/uuid/slf4j/android/LoggerConfig;->level:Luk/uuid/slf4j/android/LogLevel;

    sget-object v1, Luk/uuid/slf4j/android/LogLevel;->INFO:Luk/uuid/slf4j/android/LogLevel;

    if-ne v0, v1, :cond_39

    goto :goto_3b

    :cond_39
    const/4 v0, 0x0

    goto :goto_3c

    :cond_3b
    :goto_3b
    const/4 v0, 0x1

    :goto_3c
    iput-boolean v0, p0, Luk/uuid/slf4j/android/LogAdapter;->INFO:Z

    if-nez v0, :cond_49

    iget-object v0, p2, Luk/uuid/slf4j/android/LoggerConfig;->level:Luk/uuid/slf4j/android/LogLevel;

    sget-object v1, Luk/uuid/slf4j/android/LogLevel;->WARN:Luk/uuid/slf4j/android/LogLevel;

    if-ne v0, v1, :cond_47

    goto :goto_49

    :cond_47
    const/4 v0, 0x0

    goto :goto_4a

    :cond_49
    :goto_49
    const/4 v0, 0x1

    :goto_4a
    iput-boolean v0, p0, Luk/uuid/slf4j/android/LogAdapter;->WARN:Z

    if-nez v0, :cond_57

    iget-object v0, p2, Luk/uuid/slf4j/android/LoggerConfig;->level:Luk/uuid/slf4j/android/LogLevel;

    sget-object v1, Luk/uuid/slf4j/android/LogLevel;->ERROR:Luk/uuid/slf4j/android/LogLevel;

    if-ne v0, v1, :cond_55

    goto :goto_57

    :cond_55
    const/4 v0, 0x0

    goto :goto_58

    :cond_57
    :goto_57
    const/4 v0, 0x1

    :goto_58
    iput-boolean v0, p0, Luk/uuid/slf4j/android/LogAdapter;->ERROR:Z

    sget-object v0, Luk/uuid/slf4j/android/LogAdapter$1;->$SwitchMap$uk$uuid$slf4j$android$LoggerConfig$ShowName:[I

    iget-object v1, p2, Luk/uuid/slf4j/android/LoggerConfig;->showName:Luk/uuid/slf4j/android/LoggerConfig$ShowName;

    invoke-virtual {v1}, Luk/uuid/slf4j/android/LoggerConfig$ShowName;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    if-eq v0, v2, :cond_a1

    const/4 v4, 0x2

    const-string v5, ": "

    if-eq v0, v4, :cond_98

    const/4 v4, 0x3

    if-eq v0, v4, :cond_8b

    const/4 v4, 0x4

    if-eq v0, v4, :cond_77

    iput-boolean v3, p0, Luk/uuid/slf4j/android/LogAdapter;->showCaller:Z

    iput-object v1, p0, Luk/uuid/slf4j/android/LogAdapter;->prefixName:Ljava/lang/String;

    goto :goto_a5

    :cond_77
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Luk/uuid/slf4j/android/LogAdapter;->prefixName:Ljava/lang/String;

    iput-boolean v3, p0, Luk/uuid/slf4j/android/LogAdapter;->showCaller:Z

    goto :goto_a5

    :cond_8b
    invoke-direct {p0}, Luk/uuid/slf4j/android/LogAdapter;->getCompactName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Luk/uuid/slf4j/android/LogAdapter;->prefixName:Ljava/lang/String;

    iput-boolean v3, p0, Luk/uuid/slf4j/android/LogAdapter;->showCaller:Z

    goto :goto_a5

    :cond_98
    invoke-virtual {p1, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Luk/uuid/slf4j/android/LogAdapter;->prefixName:Ljava/lang/String;

    iput-boolean v3, p0, Luk/uuid/slf4j/android/LogAdapter;->showCaller:Z

    goto :goto_a5

    :cond_a1
    iput-object v1, p0, Luk/uuid/slf4j/android/LogAdapter;->prefixName:Ljava/lang/String;

    iput-boolean v2, p0, Luk/uuid/slf4j/android/LogAdapter;->showCaller:Z

    :goto_a5
    iget-object p1, p2, Luk/uuid/slf4j/android/LoggerConfig;->showThread:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Luk/uuid/slf4j/android/LogAdapter;->showThread:Z

    if-nez p1, :cond_b5

    iget-boolean p1, p0, Luk/uuid/slf4j/android/LogAdapter;->showCaller:Z

    if-eqz p1, :cond_b4

    goto :goto_b5

    :cond_b4
    const/4 v2, 0x0

    :cond_b5
    :goto_b5
    iput-boolean v2, p0, Luk/uuid/slf4j/android/LogAdapter;->complexRewriteMsg:Z

    return-void
.end method

.method private final __debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    if-nez p2, :cond_8

    iget-object p2, p0, Luk/uuid/slf4j/android/LogAdapter;->tag:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :cond_8
    iget-object v0, p0, Luk/uuid/slf4j/android/LogAdapter;->tag:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_d
    return-void
.end method

.method private final varargs __debugFormat(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    invoke-static {p1, p2}, Lorg/slf4j/helpers/MessageFormatter;->arrayFormat(Ljava/lang/String;[Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object p1

    invoke-virtual {p1}, Lorg/slf4j/helpers/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x3

    invoke-direct {p0, p2, v0}, Luk/uuid/slf4j/android/LogAdapter;->rewriteMsg(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lorg/slf4j/helpers/FormattingTuple;->getThrowable()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Luk/uuid/slf4j/android/LogAdapter;->__debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final __error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    if-nez p2, :cond_8

    iget-object p2, p0, Luk/uuid/slf4j/android/LogAdapter;->tag:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :cond_8
    iget-object v0, p0, Luk/uuid/slf4j/android/LogAdapter;->tag:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_d
    return-void
.end method

.method private final varargs __errorFormat(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    invoke-static {p1, p2}, Lorg/slf4j/helpers/MessageFormatter;->arrayFormat(Ljava/lang/String;[Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object p1

    invoke-virtual {p1}, Lorg/slf4j/helpers/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x3

    invoke-direct {p0, p2, v0}, Luk/uuid/slf4j/android/LogAdapter;->rewriteMsg(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lorg/slf4j/helpers/FormattingTuple;->getThrowable()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Luk/uuid/slf4j/android/LogAdapter;->__error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final __info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    if-nez p2, :cond_8

    iget-object p2, p0, Luk/uuid/slf4j/android/LogAdapter;->tag:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :cond_8
    iget-object v0, p0, Luk/uuid/slf4j/android/LogAdapter;->tag:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_d
    return-void
.end method

.method private final varargs __infoFormat(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    invoke-static {p1, p2}, Lorg/slf4j/helpers/MessageFormatter;->arrayFormat(Ljava/lang/String;[Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object p1

    invoke-virtual {p1}, Lorg/slf4j/helpers/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x3

    invoke-direct {p0, p2, v0}, Luk/uuid/slf4j/android/LogAdapter;->rewriteMsg(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lorg/slf4j/helpers/FormattingTuple;->getThrowable()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Luk/uuid/slf4j/android/LogAdapter;->__info(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final __trace(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    if-nez p2, :cond_8

    iget-object p2, p0, Luk/uuid/slf4j/android/LogAdapter;->tag:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :cond_8
    iget-object v0, p0, Luk/uuid/slf4j/android/LogAdapter;->tag:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_d
    return-void
.end method

.method private final varargs __traceFormat(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    invoke-static {p1, p2}, Lorg/slf4j/helpers/MessageFormatter;->arrayFormat(Ljava/lang/String;[Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object p1

    invoke-virtual {p1}, Lorg/slf4j/helpers/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x3

    invoke-direct {p0, p2, v0}, Luk/uuid/slf4j/android/LogAdapter;->rewriteMsg(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lorg/slf4j/helpers/FormattingTuple;->getThrowable()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Luk/uuid/slf4j/android/LogAdapter;->__trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final __warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    if-nez p2, :cond_8

    iget-object p2, p0, Luk/uuid/slf4j/android/LogAdapter;->tag:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :cond_8
    iget-object v0, p0, Luk/uuid/slf4j/android/LogAdapter;->tag:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_d
    return-void
.end method

.method private final varargs __warnFormat(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    invoke-static {p1, p2}, Lorg/slf4j/helpers/MessageFormatter;->arrayFormat(Ljava/lang/String;[Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object p1

    invoke-virtual {p1}, Lorg/slf4j/helpers/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x3

    invoke-direct {p0, p2, v0}, Luk/uuid/slf4j/android/LogAdapter;->rewriteMsg(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lorg/slf4j/helpers/FormattingTuple;->getThrowable()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Luk/uuid/slf4j/android/LogAdapter;->__warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final getCompactName()Ljava/lang/String;
    .registers 9

    iget-object v0, p0, Luk/uuid/slf4j/android/LogAdapter;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_b
    if-ge v3, v1, :cond_2f

    aget-char v6, v0, v3

    const/16 v7, 0x2e

    if-ne v6, v7, :cond_26

    aget-char v4, v0, v5

    if-eq v4, v7, :cond_19

    add-int/lit8 v5, v5, 0x1

    :cond_19
    move v4, v5

    add-int/lit8 v5, v3, 0x1

    if-ge v5, v1, :cond_25

    aget-char v5, v0, v5

    if-eq v5, v7, :cond_25

    add-int/lit8 v5, v4, 0x1

    goto :goto_26

    :cond_25
    move v5, v4

    :cond_26
    :goto_26
    aget-char v6, v0, v3

    aput-char v6, v0, v4

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_2f
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, v2, v4}, Ljava/lang/String;-><init>([CII)V

    return-object v1
.end method

.method private final getNativeLogLevel()Luk/uuid/slf4j/android/LogLevel;
    .registers 4

    sget-object v0, Luk/uuid/slf4j/android/LogAdapter;->nativeLevelMap:Ljava/util/concurrent/ConcurrentMap;

    iget-object v1, p0, Luk/uuid/slf4j/android/LogAdapter;->tag:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luk/uuid/slf4j/android/LogLevel;

    if-eqz v0, :cond_d

    return-object v0

    :cond_d
    iget-object v0, p0, Luk/uuid/slf4j/android/LogAdapter;->tag:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Luk/uuid/slf4j/android/LogAdapter;->tag:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Luk/uuid/slf4j/android/LogAdapter;->tag:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2b

    sget-object v0, Luk/uuid/slf4j/android/LogLevel;->VERBOSE:Luk/uuid/slf4j/android/LogLevel;

    goto :goto_4b

    :cond_2b
    sget-object v0, Luk/uuid/slf4j/android/LogLevel;->DEBUG:Luk/uuid/slf4j/android/LogLevel;

    goto :goto_4b

    :cond_2e
    sget-object v0, Luk/uuid/slf4j/android/LogLevel;->INFO:Luk/uuid/slf4j/android/LogLevel;

    goto :goto_4b

    :cond_31
    iget-object v0, p0, Luk/uuid/slf4j/android/LogAdapter;->tag:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3d

    sget-object v0, Luk/uuid/slf4j/android/LogLevel;->WARN:Luk/uuid/slf4j/android/LogLevel;

    goto :goto_4b

    :cond_3d
    iget-object v0, p0, Luk/uuid/slf4j/android/LogAdapter;->tag:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_49

    sget-object v0, Luk/uuid/slf4j/android/LogLevel;->ERROR:Luk/uuid/slf4j/android/LogLevel;

    goto :goto_4b

    :cond_49
    sget-object v0, Luk/uuid/slf4j/android/LogLevel;->SUPPRESS:Luk/uuid/slf4j/android/LogLevel;

    :goto_4b
    sget-object v1, Luk/uuid/slf4j/android/LogAdapter;->nativeLevelMap:Ljava/util/concurrent/ConcurrentMap;

    iget-object v2, p0, Luk/uuid/slf4j/android/LogAdapter;->tag:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private final rewriteMsg(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    if-nez p1, :cond_4

    const-string p1, "null"

    :cond_4
    iget-boolean v0, p0, Luk/uuid/slf4j/android/LogAdapter;->complexRewriteMsg:Z

    if-eqz v0, :cond_51

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-boolean v1, p0, Luk/uuid/slf4j/android/LogAdapter;->showThread:Z

    if-eqz v1, :cond_2c

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2c
    iget-boolean v1, p0, Luk/uuid/slf4j/android/LogAdapter;->showCaller:Z

    if-eqz v1, :cond_42

    new-instance v1, Luk/uuid/slf4j/android/CallerStackTrace;

    invoke-direct {v1, p2}, Luk/uuid/slf4j/android/CallerStackTrace;-><init>(I)V

    invoke-virtual {v1}, Luk/uuid/slf4j/android/CallerStackTrace;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_49

    :cond_42
    iget-object p2, p0, Luk/uuid/slf4j/android/LogAdapter;->prefixName:Ljava/lang/String;

    if-eqz p2, :cond_49

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_49
    :goto_49
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_51
    iget-object p2, p0, Luk/uuid/slf4j/android/LogAdapter;->prefixName:Ljava/lang/String;

    if-eqz p2, :cond_59

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_59
    return-object p1
.end method


# virtual methods
.method public final debug(Ljava/lang/String;)V
    .registers 4

    iget-boolean v0, p0, Luk/uuid/slf4j/android/LogAdapter;->DEBUG:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Luk/uuid/slf4j/android/LogAdapter;->tag:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-direct {p0, p1, v1}, Luk/uuid/slf4j/android/LogAdapter;->rewriteMsg(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    return-void
.end method

.method public final debug(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    iget-boolean v0, p0, Luk/uuid/slf4j/android/LogAdapter;->DEBUG:Z

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-direct {p0, p1, v0}, Luk/uuid/slf4j/android/LogAdapter;->__debugFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_d
    return-void
.end method

.method public final debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    iget-boolean v0, p0, Luk/uuid/slf4j/android/LogAdapter;->DEBUG:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    invoke-direct {p0, p1, v0}, Luk/uuid/slf4j/android/LogAdapter;->__debugFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_10
    return-void
.end method

.method public final debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    iget-boolean v0, p0, Luk/uuid/slf4j/android/LogAdapter;->DEBUG:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Luk/uuid/slf4j/android/LogAdapter;->rewriteMsg(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Luk/uuid/slf4j/android/LogAdapter;->__debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_c
    return-void
.end method

.method public final varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    iget-boolean v0, p0, Luk/uuid/slf4j/android/LogAdapter;->DEBUG:Z

    if-eqz v0, :cond_7

    invoke-direct {p0, p1, p2}, Luk/uuid/slf4j/android/LogAdapter;->__debugFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

.method public final debug(Lorg/slf4j/Marker;Ljava/lang/String;)V
    .registers 4

    iget-boolean p1, p0, Luk/uuid/slf4j/android/LogAdapter;->DEBUG:Z

    if-eqz p1, :cond_e

    iget-object p1, p0, Luk/uuid/slf4j/android/LogAdapter;->tag:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-direct {p0, p2, v0}, Luk/uuid/slf4j/android/LogAdapter;->rewriteMsg(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    return-void
.end method

.method public final debug(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    iget-boolean p1, p0, Luk/uuid/slf4j/android/LogAdapter;->DEBUG:Z

    if-eqz p1, :cond_d

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, p1, v0

    invoke-direct {p0, p2, p1}, Luk/uuid/slf4j/android/LogAdapter;->__debugFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_d
    return-void
.end method

.method public final debug(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    iget-boolean p1, p0, Luk/uuid/slf4j/android/LogAdapter;->DEBUG:Z

    if-eqz p1, :cond_10

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, p1, v0

    const/4 p3, 0x1

    aput-object p4, p1, p3

    invoke-direct {p0, p2, p1}, Luk/uuid/slf4j/android/LogAdapter;->__debugFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_10
    return-void
.end method

.method public final debug(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    iget-boolean p1, p0, Luk/uuid/slf4j/android/LogAdapter;->DEBUG:Z

    if-eqz p1, :cond_c

    const/4 p1, 0x2

    invoke-direct {p0, p2, p1}, Luk/uuid/slf4j/android/LogAdapter;->rewriteMsg(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Luk/uuid/slf4j/android/LogAdapter;->__debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_c
    return-void
.end method

.method public final varargs debug(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    iget-boolean p1, p0, Luk/uuid/slf4j/android/LogAdapter;->DEBUG:Z

    if-eqz p1, :cond_7

    invoke-direct {p0, p2, p3}, Luk/uuid/slf4j/android/LogAdapter;->__debugFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

.method public final error(Ljava/lang/String;)V
    .registers 4

    iget-boolean v0, p0, Luk/uuid/slf4j/android/LogAdapter;->ERROR:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Luk/uuid/slf4j/android/LogAdapter;->tag:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-direct {p0, p1, v1}, Luk/uuid/slf4j/android/LogAdapter;->rewriteMsg(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    return-void
.end method

.method public final error(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    iget-boolean v0, p0, Luk/uuid/slf4j/android/LogAdapter;->ERROR:Z

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-direct {p0, p1, v0}, Luk/uuid/slf4j/android/LogAdapter;->__errorFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_d
    return-void
.end method

.method public final error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    iget-boolean v0, p0, Luk/uuid/slf4j/android/LogAdapter;->ERROR:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    invoke-direct {p0, p1, v0}, Luk/uuid/slf4j/android/LogAdapter;->__errorFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_10
    return-void
.end method

.method public final error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    iget-boolean v0, p0, Luk/uuid/slf4j/android/LogAdapter;->ERROR:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Luk/uuid/slf4j/android/LogAdapter;->rewriteMsg(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Luk/uuid/slf4j/android/LogAdapter;->__error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_c
    return-void
.end method

.method public final varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    iget-boolean v0, p0, Luk/uuid/slf4j/android/LogAdapter;->ERROR:Z

    if-eqz v0, :cond_7

    invoke-direct {p0, p1, p2}, Luk/uuid/slf4j/android/LogAdapter;->__errorFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

.method public final error(Lorg/slf4j/Marker;Ljava/lang/String;)V
    .registers 4

    iget-boolean p1, p0, Luk/uuid/slf4j/android/LogAdapter;->ERROR:Z

    if-eqz p1, :cond_e

    iget-object p1, p0, Luk/uuid/slf4j/android/LogAdapter;->tag:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-direct {p0, p2, v0}, Luk/uuid/slf4j/android/LogAdapter;->rewriteMsg(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    return-void
.end method

.method public final error(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    iget-boolean p1, p0, Luk/uuid/slf4j/android/LogAdapter;->ERROR:Z

    if-eqz p1, :cond_d

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, p1, v0

    invoke-direct {p0, p2, p1}, Luk/uuid/slf4j/android/LogAdapter;->__errorFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_d
    return-void
.end method

.method public final error(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    iget-boolean p1, p0, Luk/uuid/slf4j/android/LogAdapter;->ERROR:Z

    if-eqz p1, :cond_10

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, p1, v0

    const/4 p3, 0x1

    aput-object p4, p1, p3

    invoke-direct {p0, p2, p1}, Luk/uuid/slf4j/android/LogAdapter;->__errorFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_10
    return-void
.end method

.method public final error(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    iget-boolean p1, p0, Luk/uuid/slf4j/android/LogAdapter;->ERROR:Z

    if-eqz p1, :cond_c

    const/4 p1, 0x2

    invoke-direct {p0, p2, p1}, Luk/uuid/slf4j/android/LogAdapter;->rewriteMsg(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Luk/uuid/slf4j/android/LogAdapter;->__error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_c
    return-void
.end method

.method public final varargs error(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    iget-boolean p1, p0, Luk/uuid/slf4j/android/LogAdapter;->ERROR:Z

    if-eqz p1, :cond_7

    invoke-direct {p0, p2, p3}, Luk/uuid/slf4j/android/LogAdapter;->__errorFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Luk/uuid/slf4j/android/LogAdapter;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final info(Ljava/lang/String;)V
    .registers 4

    iget-boolean v0, p0, Luk/uuid/slf4j/android/LogAdapter;->INFO:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Luk/uuid/slf4j/android/LogAdapter;->tag:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-direct {p0, p1, v1}, Luk/uuid/slf4j/android/LogAdapter;->rewriteMsg(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    return-void
.end method

.method public final info(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    iget-boolean v0, p0, Luk/uuid/slf4j/android/LogAdapter;->INFO:Z

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-direct {p0, p1, v0}, Luk/uuid/slf4j/android/LogAdapter;->__infoFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_d
    return-void
.end method

.method public final info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    iget-boolean v0, p0, Luk/uuid/slf4j/android/LogAdapter;->INFO:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    invoke-direct {p0, p1, v0}, Luk/uuid/slf4j/android/LogAdapter;->__infoFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_10
    return-void
.end method

.method public final info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    iget-boolean v0, p0, Luk/uuid/slf4j/android/LogAdapter;->INFO:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Luk/uuid/slf4j/android/LogAdapter;->rewriteMsg(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Luk/uuid/slf4j/android/LogAdapter;->__info(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_c
    return-void
.end method

.method public final varargs info(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    iget-boolean v0, p0, Luk/uuid/slf4j/android/LogAdapter;->INFO:Z

    if-eqz v0, :cond_7

    invoke-direct {p0, p1, p2}, Luk/uuid/slf4j/android/LogAdapter;->__infoFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

.method public final info(Lorg/slf4j/Marker;Ljava/lang/String;)V
    .registers 4

    iget-boolean p1, p0, Luk/uuid/slf4j/android/LogAdapter;->INFO:Z

    if-eqz p1, :cond_e

    iget-object p1, p0, Luk/uuid/slf4j/android/LogAdapter;->tag:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-direct {p0, p2, v0}, Luk/uuid/slf4j/android/LogAdapter;->rewriteMsg(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    return-void
.end method

.method public final info(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    iget-boolean p1, p0, Luk/uuid/slf4j/android/LogAdapter;->INFO:Z

    if-eqz p1, :cond_d

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, p1, v0

    invoke-direct {p0, p2, p1}, Luk/uuid/slf4j/android/LogAdapter;->__infoFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_d
    return-void
.end method

.method public final info(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    iget-boolean p1, p0, Luk/uuid/slf4j/android/LogAdapter;->INFO:Z

    if-eqz p1, :cond_10

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, p1, v0

    const/4 p3, 0x1

    aput-object p4, p1, p3

    invoke-direct {p0, p2, p1}, Luk/uuid/slf4j/android/LogAdapter;->__infoFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_10
    return-void
.end method

.method public final info(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    iget-boolean p1, p0, Luk/uuid/slf4j/android/LogAdapter;->INFO:Z

    if-eqz p1, :cond_c

    const/4 p1, 0x2

    invoke-direct {p0, p2, p1}, Luk/uuid/slf4j/android/LogAdapter;->rewriteMsg(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Luk/uuid/slf4j/android/LogAdapter;->__info(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_c
    return-void
.end method

.method public final varargs info(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    iget-boolean p1, p0, Luk/uuid/slf4j/android/LogAdapter;->INFO:Z

    if-eqz p1, :cond_7

    invoke-direct {p0, p2, p3}, Luk/uuid/slf4j/android/LogAdapter;->__infoFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

.method public final isDebugEnabled()Z
    .registers 2

    iget-boolean v0, p0, Luk/uuid/slf4j/android/LogAdapter;->DEBUG:Z

    return v0
.end method

.method public final isDebugEnabled(Lorg/slf4j/Marker;)Z
    .registers 2

    iget-boolean p1, p0, Luk/uuid/slf4j/android/LogAdapter;->DEBUG:Z

    return p1
.end method

.method public final isErrorEnabled()Z
    .registers 2

    iget-boolean v0, p0, Luk/uuid/slf4j/android/LogAdapter;->ERROR:Z

    return v0
.end method

.method public final isErrorEnabled(Lorg/slf4j/Marker;)Z
    .registers 2

    iget-boolean p1, p0, Luk/uuid/slf4j/android/LogAdapter;->ERROR:Z

    return p1
.end method

.method public final isInfoEnabled()Z
    .registers 2

    iget-boolean v0, p0, Luk/uuid/slf4j/android/LogAdapter;->INFO:Z

    return v0
.end method

.method public final isInfoEnabled(Lorg/slf4j/Marker;)Z
    .registers 2

    iget-boolean p1, p0, Luk/uuid/slf4j/android/LogAdapter;->INFO:Z

    return p1
.end method

.method public final isTraceEnabled()Z
    .registers 2

    iget-boolean v0, p0, Luk/uuid/slf4j/android/LogAdapter;->TRACE:Z

    return v0
.end method

.method public final isTraceEnabled(Lorg/slf4j/Marker;)Z
    .registers 2

    iget-boolean p1, p0, Luk/uuid/slf4j/android/LogAdapter;->TRACE:Z

    return p1
.end method

.method public final isWarnEnabled()Z
    .registers 2

    iget-boolean v0, p0, Luk/uuid/slf4j/android/LogAdapter;->WARN:Z

    return v0
.end method

.method public final isWarnEnabled(Lorg/slf4j/Marker;)Z
    .registers 2

    iget-boolean p1, p0, Luk/uuid/slf4j/android/LogAdapter;->WARN:Z

    return p1
.end method

.method public final trace(Ljava/lang/String;)V
    .registers 4

    iget-boolean v0, p0, Luk/uuid/slf4j/android/LogAdapter;->TRACE:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Luk/uuid/slf4j/android/LogAdapter;->tag:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-direct {p0, p1, v1}, Luk/uuid/slf4j/android/LogAdapter;->rewriteMsg(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    return-void
.end method

.method public final trace(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    iget-boolean v0, p0, Luk/uuid/slf4j/android/LogAdapter;->TRACE:Z

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-direct {p0, p1, v0}, Luk/uuid/slf4j/android/LogAdapter;->__traceFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_d
    return-void
.end method

.method public final trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    iget-boolean v0, p0, Luk/uuid/slf4j/android/LogAdapter;->TRACE:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    invoke-direct {p0, p1, v0}, Luk/uuid/slf4j/android/LogAdapter;->__traceFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_10
    return-void
.end method

.method public final trace(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    iget-boolean v0, p0, Luk/uuid/slf4j/android/LogAdapter;->TRACE:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Luk/uuid/slf4j/android/LogAdapter;->rewriteMsg(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Luk/uuid/slf4j/android/LogAdapter;->__trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_c
    return-void
.end method

.method public final varargs trace(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    iget-boolean v0, p0, Luk/uuid/slf4j/android/LogAdapter;->TRACE:Z

    if-eqz v0, :cond_7

    invoke-direct {p0, p1, p2}, Luk/uuid/slf4j/android/LogAdapter;->__traceFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

.method public final trace(Lorg/slf4j/Marker;Ljava/lang/String;)V
    .registers 4

    iget-boolean p1, p0, Luk/uuid/slf4j/android/LogAdapter;->TRACE:Z

    if-eqz p1, :cond_e

    iget-object p1, p0, Luk/uuid/slf4j/android/LogAdapter;->tag:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-direct {p0, p2, v0}, Luk/uuid/slf4j/android/LogAdapter;->rewriteMsg(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    return-void
.end method

.method public final trace(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    iget-boolean p1, p0, Luk/uuid/slf4j/android/LogAdapter;->TRACE:Z

    if-eqz p1, :cond_d

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, p1, v0

    invoke-direct {p0, p2, p1}, Luk/uuid/slf4j/android/LogAdapter;->__traceFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_d
    return-void
.end method

.method public final trace(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    iget-boolean p1, p0, Luk/uuid/slf4j/android/LogAdapter;->TRACE:Z

    if-eqz p1, :cond_10

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, p1, v0

    const/4 p3, 0x1

    aput-object p4, p1, p3

    invoke-direct {p0, p2, p1}, Luk/uuid/slf4j/android/LogAdapter;->__traceFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_10
    return-void
.end method

.method public final trace(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    iget-boolean p1, p0, Luk/uuid/slf4j/android/LogAdapter;->TRACE:Z

    if-eqz p1, :cond_c

    const/4 p1, 0x2

    invoke-direct {p0, p2, p1}, Luk/uuid/slf4j/android/LogAdapter;->rewriteMsg(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Luk/uuid/slf4j/android/LogAdapter;->__trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_c
    return-void
.end method

.method public final varargs trace(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    iget-boolean p1, p0, Luk/uuid/slf4j/android/LogAdapter;->TRACE:Z

    if-eqz p1, :cond_7

    invoke-direct {p0, p2, p3}, Luk/uuid/slf4j/android/LogAdapter;->__traceFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

.method public final warn(Ljava/lang/String;)V
    .registers 4

    iget-boolean v0, p0, Luk/uuid/slf4j/android/LogAdapter;->WARN:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Luk/uuid/slf4j/android/LogAdapter;->tag:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-direct {p0, p1, v1}, Luk/uuid/slf4j/android/LogAdapter;->rewriteMsg(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    return-void
.end method

.method public final warn(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    iget-boolean v0, p0, Luk/uuid/slf4j/android/LogAdapter;->WARN:Z

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-direct {p0, p1, v0}, Luk/uuid/slf4j/android/LogAdapter;->__warnFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_d
    return-void
.end method

.method public final warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    iget-boolean v0, p0, Luk/uuid/slf4j/android/LogAdapter;->WARN:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    invoke-direct {p0, p1, v0}, Luk/uuid/slf4j/android/LogAdapter;->__warnFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_10
    return-void
.end method

.method public final warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    iget-boolean v0, p0, Luk/uuid/slf4j/android/LogAdapter;->WARN:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Luk/uuid/slf4j/android/LogAdapter;->rewriteMsg(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Luk/uuid/slf4j/android/LogAdapter;->__warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_c
    return-void
.end method

.method public final varargs warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    iget-boolean v0, p0, Luk/uuid/slf4j/android/LogAdapter;->WARN:Z

    if-eqz v0, :cond_7

    invoke-direct {p0, p1, p2}, Luk/uuid/slf4j/android/LogAdapter;->__warnFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

.method public final warn(Lorg/slf4j/Marker;Ljava/lang/String;)V
    .registers 4

    iget-boolean p1, p0, Luk/uuid/slf4j/android/LogAdapter;->WARN:Z

    if-eqz p1, :cond_e

    iget-object p1, p0, Luk/uuid/slf4j/android/LogAdapter;->tag:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-direct {p0, p2, v0}, Luk/uuid/slf4j/android/LogAdapter;->rewriteMsg(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    return-void
.end method

.method public final warn(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    iget-boolean p1, p0, Luk/uuid/slf4j/android/LogAdapter;->WARN:Z

    if-eqz p1, :cond_d

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, p1, v0

    invoke-direct {p0, p2, p1}, Luk/uuid/slf4j/android/LogAdapter;->__warnFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_d
    return-void
.end method

.method public final warn(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    iget-boolean p1, p0, Luk/uuid/slf4j/android/LogAdapter;->WARN:Z

    if-eqz p1, :cond_10

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, p1, v0

    const/4 p3, 0x1

    aput-object p4, p1, p3

    invoke-direct {p0, p2, p1}, Luk/uuid/slf4j/android/LogAdapter;->__warnFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_10
    return-void
.end method

.method public final warn(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    iget-boolean p1, p0, Luk/uuid/slf4j/android/LogAdapter;->WARN:Z

    if-eqz p1, :cond_c

    const/4 p1, 0x2

    invoke-direct {p0, p2, p1}, Luk/uuid/slf4j/android/LogAdapter;->rewriteMsg(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Luk/uuid/slf4j/android/LogAdapter;->__warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_c
    return-void
.end method

.method public final varargs warn(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    iget-boolean p1, p0, Luk/uuid/slf4j/android/LogAdapter;->WARN:Z

    if-eqz p1, :cond_7

    invoke-direct {p0, p2, p3}, Luk/uuid/slf4j/android/LogAdapter;->__warnFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    return-void
.end method
