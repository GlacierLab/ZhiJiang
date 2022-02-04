.class public Lorg/renpy/android/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static assetPacks:[Ljava/lang/String; = null

.field public static store:Ljava/lang/String; = "all"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lorg/renpy/android/Constants;->assetPacks:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
