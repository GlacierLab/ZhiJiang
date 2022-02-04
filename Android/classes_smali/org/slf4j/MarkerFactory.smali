.class public Lorg/slf4j/MarkerFactory;
.super Ljava/lang/Object;
.source "MarkerFactory.java"


# static fields
.field static MARKER_FACTORY:Lorg/slf4j/IMarkerFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    :try_start_0
    invoke-static {}, Lorg/slf4j/MarkerFactory;->bwCompatibleGetMarkerFactoryFromBinder()Lorg/slf4j/IMarkerFactory;

    move-result-object v0

    sput-object v0, Lorg/slf4j/MarkerFactory;->MARKER_FACTORY:Lorg/slf4j/IMarkerFactory;
    :try_end_6
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_6} :catch_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_15

    :catch_7
    move-exception v0

    const-string v1, "Unexpected failure while binding MarkerFactory"

    invoke-static {v1, v0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_15

    :catch_e
    new-instance v0, Lorg/slf4j/helpers/BasicMarkerFactory;

    invoke-direct {v0}, Lorg/slf4j/helpers/BasicMarkerFactory;-><init>()V

    sput-object v0, Lorg/slf4j/MarkerFactory;->MARKER_FACTORY:Lorg/slf4j/IMarkerFactory;

    :goto_15
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bwCompatibleGetMarkerFactoryFromBinder()Lorg/slf4j/IMarkerFactory;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoClassDefFoundError;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lorg/slf4j/impl/StaticMarkerBinder;->getSingleton()Lorg/slf4j/impl/StaticMarkerBinder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/slf4j/impl/StaticMarkerBinder;->getMarkerFactory()Lorg/slf4j/IMarkerFactory;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    sget-object v0, Lorg/slf4j/impl/StaticMarkerBinder;->SINGLETON:Lorg/slf4j/impl/StaticMarkerBinder;

    invoke-virtual {v0}, Lorg/slf4j/impl/StaticMarkerBinder;->getMarkerFactory()Lorg/slf4j/IMarkerFactory;

    move-result-object v0

    return-object v0
.end method

.method public static getDetachedMarker(Ljava/lang/String;)Lorg/slf4j/Marker;
    .registers 2

    sget-object v0, Lorg/slf4j/MarkerFactory;->MARKER_FACTORY:Lorg/slf4j/IMarkerFactory;

    invoke-interface {v0, p0}, Lorg/slf4j/IMarkerFactory;->getDetachedMarker(Ljava/lang/String;)Lorg/slf4j/Marker;

    move-result-object p0

    return-object p0
.end method

.method public static getIMarkerFactory()Lorg/slf4j/IMarkerFactory;
    .registers 1

    sget-object v0, Lorg/slf4j/MarkerFactory;->MARKER_FACTORY:Lorg/slf4j/IMarkerFactory;

    return-object v0
.end method

.method public static getMarker(Ljava/lang/String;)Lorg/slf4j/Marker;
    .registers 2

    sget-object v0, Lorg/slf4j/MarkerFactory;->MARKER_FACTORY:Lorg/slf4j/IMarkerFactory;

    invoke-interface {v0, p0}, Lorg/slf4j/IMarkerFactory;->getMarker(Ljava/lang/String;)Lorg/slf4j/Marker;

    move-result-object p0

    return-object p0
.end method
