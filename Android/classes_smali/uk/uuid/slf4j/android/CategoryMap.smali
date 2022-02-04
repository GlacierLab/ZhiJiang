.class final Luk/uuid/slf4j/android/CategoryMap;
.super Ljava/lang/Object;
.source "CategoryMap.java"


# instance fields
.field private final categories:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Luk/uuid/slf4j/android/LoggerConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Luk/uuid/slf4j/android/CategoryMap;->categories:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method final get(Ljava/lang/String;)Luk/uuid/slf4j/android/LoggerConfig;
    .registers 6

    new-instance v0, Luk/uuid/slf4j/android/LoggerConfig;

    invoke-direct {v0}, Luk/uuid/slf4j/android/LoggerConfig;-><init>()V

    iget-object v1, p0, Luk/uuid/slf4j/android/CategoryMap;->categories:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    sget-object p1, Luk/uuid/slf4j/android/LoggerConfig;->DEFAULT:Luk/uuid/slf4j/android/LoggerConfig;

    invoke-virtual {v0, p1}, Luk/uuid/slf4j/android/LoggerConfig;->merge(Luk/uuid/slf4j/android/LoggerConfig;)Z

    return-object v0

    :cond_13
    const-string v1, ""

    if-nez p1, :cond_18

    move-object p1, v1

    :cond_18
    :goto_18
    const/16 v2, 0x2e

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    iget-object v3, p0, Luk/uuid/slf4j/android/CategoryMap;->categories:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Luk/uuid/slf4j/android/LoggerConfig;

    invoke-virtual {v0, v3}, Luk/uuid/slf4j/android/LoggerConfig;->merge(Luk/uuid/slf4j/android/LoggerConfig;)Z

    move-result v3

    if-eqz v3, :cond_2d

    return-object v0

    :cond_2d
    const/4 v3, -0x1

    if-eq v2, v3, :cond_36

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_18

    :cond_36
    iget-object p1, p0, Luk/uuid/slf4j/android/CategoryMap;->categories:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Luk/uuid/slf4j/android/LoggerConfig;

    invoke-virtual {v0, p1}, Luk/uuid/slf4j/android/LoggerConfig;->merge(Luk/uuid/slf4j/android/LoggerConfig;)Z

    move-result p1

    if-nez p1, :cond_49

    sget-object p1, Luk/uuid/slf4j/android/LoggerConfig;->DEFAULT:Luk/uuid/slf4j/android/LoggerConfig;

    invoke-virtual {v0, p1}, Luk/uuid/slf4j/android/LoggerConfig;->merge(Luk/uuid/slf4j/android/LoggerConfig;)Z

    :cond_49
    return-object v0
.end method

.method final put(Ljava/lang/String;Luk/uuid/slf4j/android/LoggerConfig;)V
    .registers 4

    iget-object v0, p0, Luk/uuid/slf4j/android/CategoryMap;->categories:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luk/uuid/slf4j/android/LoggerConfig;

    if-eqz v0, :cond_e

    invoke-virtual {v0, p2}, Luk/uuid/slf4j/android/LoggerConfig;->merge(Luk/uuid/slf4j/android/LoggerConfig;)Z

    goto :goto_13

    :cond_e
    iget-object v0, p0, Luk/uuid/slf4j/android/CategoryMap;->categories:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_13
    return-void
.end method
