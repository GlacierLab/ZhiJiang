.class public Lorg/slf4j/event/SubstituteLoggingEvent;
.super Ljava/lang/Object;
.source "SubstituteLoggingEvent.java"

# interfaces
.implements Lorg/slf4j/event/LoggingEvent;


# instance fields
.field argArray:[Ljava/lang/Object;

.field level:Lorg/slf4j/event/Level;

.field logger:Lorg/slf4j/helpers/SubstituteLogger;

.field loggerName:Ljava/lang/String;

.field marker:Lorg/slf4j/Marker;

.field message:Ljava/lang/String;

.field threadName:Ljava/lang/String;

.field throwable:Ljava/lang/Throwable;

.field timeStamp:J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getArgumentArray()[Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/slf4j/event/SubstituteLoggingEvent;->argArray:[Ljava/lang/Object;

    return-object v0
.end method

.method public getLevel()Lorg/slf4j/event/Level;
    .registers 2

    iget-object v0, p0, Lorg/slf4j/event/SubstituteLoggingEvent;->level:Lorg/slf4j/event/Level;

    return-object v0
.end method

.method public getLogger()Lorg/slf4j/helpers/SubstituteLogger;
    .registers 2

    iget-object v0, p0, Lorg/slf4j/event/SubstituteLoggingEvent;->logger:Lorg/slf4j/helpers/SubstituteLogger;

    return-object v0
.end method

.method public getLoggerName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/slf4j/event/SubstituteLoggingEvent;->loggerName:Ljava/lang/String;

    return-object v0
.end method

.method public getMarker()Lorg/slf4j/Marker;
    .registers 2

    iget-object v0, p0, Lorg/slf4j/event/SubstituteLoggingEvent;->marker:Lorg/slf4j/Marker;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/slf4j/event/SubstituteLoggingEvent;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getThreadName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/slf4j/event/SubstituteLoggingEvent;->threadName:Ljava/lang/String;

    return-object v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .registers 2

    iget-object v0, p0, Lorg/slf4j/event/SubstituteLoggingEvent;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getTimeStamp()J
    .registers 3

    iget-wide v0, p0, Lorg/slf4j/event/SubstituteLoggingEvent;->timeStamp:J

    return-wide v0
.end method

.method public setArgumentArray([Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lorg/slf4j/event/SubstituteLoggingEvent;->argArray:[Ljava/lang/Object;

    return-void
.end method

.method public setLevel(Lorg/slf4j/event/Level;)V
    .registers 2

    iput-object p1, p0, Lorg/slf4j/event/SubstituteLoggingEvent;->level:Lorg/slf4j/event/Level;

    return-void
.end method

.method public setLogger(Lorg/slf4j/helpers/SubstituteLogger;)V
    .registers 2

    iput-object p1, p0, Lorg/slf4j/event/SubstituteLoggingEvent;->logger:Lorg/slf4j/helpers/SubstituteLogger;

    return-void
.end method

.method public setLoggerName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/slf4j/event/SubstituteLoggingEvent;->loggerName:Ljava/lang/String;

    return-void
.end method

.method public setMarker(Lorg/slf4j/Marker;)V
    .registers 2

    iput-object p1, p0, Lorg/slf4j/event/SubstituteLoggingEvent;->marker:Lorg/slf4j/Marker;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/slf4j/event/SubstituteLoggingEvent;->message:Ljava/lang/String;

    return-void
.end method

.method public setThreadName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/slf4j/event/SubstituteLoggingEvent;->threadName:Ljava/lang/String;

    return-void
.end method

.method public setThrowable(Ljava/lang/Throwable;)V
    .registers 2

    iput-object p1, p0, Lorg/slf4j/event/SubstituteLoggingEvent;->throwable:Ljava/lang/Throwable;

    return-void
.end method

.method public setTimeStamp(J)V
    .registers 3

    iput-wide p1, p0, Lorg/slf4j/event/SubstituteLoggingEvent;->timeStamp:J

    return-void
.end method
