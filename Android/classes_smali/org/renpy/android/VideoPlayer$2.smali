.class Lorg/renpy/android/VideoPlayer$2;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/renpy/android/VideoPlayer;-><init>(Ljava/lang/String;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/renpy/android/VideoPlayer;


# direct methods
.method constructor <init>(Lorg/renpy/android/VideoPlayer;)V
    .registers 2

    iput-object p1, p0, Lorg/renpy/android/VideoPlayer$2;->this$0:Lorg/renpy/android/VideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lorg/renpy/android/VideoPlayer$2;->this$0:Lorg/renpy/android/VideoPlayer;

    invoke-static {v0}, Lorg/renpy/android/VideoPlayer;->access$100(Lorg/renpy/android/VideoPlayer;)V

    return-void
.end method
