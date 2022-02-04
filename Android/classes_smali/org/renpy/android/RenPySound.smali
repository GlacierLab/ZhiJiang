.class public Lorg/renpy/android/RenPySound;
.super Ljava/lang/Object;
.source "RenPySound.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/renpy/android/RenPySound$Channel;
    }
.end annotation


# static fields
.field static channels:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lorg/renpy/android/RenPySound$Channel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/renpy/android/RenPySound;->channels:Ljava/util/HashMap;

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dequeue(I)V
    .registers 1

    invoke-static {p0}, Lorg/renpy/android/RenPySound;->getChannel(I)Lorg/renpy/android/RenPySound$Channel;

    move-result-object p0

    invoke-virtual {p0}, Lorg/renpy/android/RenPySound$Channel;->dequeue()V

    return-void
.end method

.method static getChannel(I)Lorg/renpy/android/RenPySound$Channel;
    .registers 3

    sget-object v0, Lorg/renpy/android/RenPySound;->channels:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/renpy/android/RenPySound$Channel;

    if-nez v0, :cond_1c

    new-instance v0, Lorg/renpy/android/RenPySound$Channel;

    invoke-direct {v0}, Lorg/renpy/android/RenPySound$Channel;-><init>()V

    sget-object v1, Lorg/renpy/android/RenPySound;->channels:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    return-object v0
.end method

.method public static get_length(I)I
    .registers 1

    invoke-static {p0}, Lorg/renpy/android/RenPySound;->getChannel(I)Lorg/renpy/android/RenPySound$Channel;

    move-result-object p0

    invoke-virtual {p0}, Lorg/renpy/android/RenPySound$Channel;->get_length()I

    move-result p0

    return p0
.end method

.method public static get_pos(I)I
    .registers 1

    invoke-static {p0}, Lorg/renpy/android/RenPySound;->getChannel(I)Lorg/renpy/android/RenPySound$Channel;

    move-result-object p0

    invoke-virtual {p0}, Lorg/renpy/android/RenPySound$Channel;->get_pos()I

    move-result p0

    return p0
.end method

.method public static pause(I)V
    .registers 1

    invoke-static {p0}, Lorg/renpy/android/RenPySound;->getChannel(I)Lorg/renpy/android/RenPySound$Channel;

    move-result-object p0

    invoke-virtual {p0}, Lorg/renpy/android/RenPySound$Channel;->pause()V

    return-void
.end method

.method public static play(ILjava/lang/String;Ljava/lang/String;JJ)V
    .registers 14

    invoke-static {p0}, Lorg/renpy/android/RenPySound;->getChannel(I)Lorg/renpy/android/RenPySound$Channel;

    move-result-object p0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lorg/renpy/android/RenPySound$Channel;->queue(Ljava/lang/String;Ljava/lang/String;JJ)V

    invoke-virtual {p0}, Lorg/renpy/android/RenPySound$Channel;->play()V

    return-void
.end method

.method public static playing_name(I)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Lorg/renpy/android/RenPySound;->getChannel(I)Lorg/renpy/android/RenPySound$Channel;

    move-result-object p0

    iget-object v0, p0, Lorg/renpy/android/RenPySound$Channel;->filename:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-nez v0, :cond_e

    const-string p0, ""

    return-object p0

    :cond_e
    iget-object p0, p0, Lorg/renpy/android/RenPySound$Channel;->filename:[Ljava/lang/String;

    aget-object p0, p0, v1

    return-object p0
.end method

.method public static queue(ILjava/lang/String;Ljava/lang/String;JJ)V
    .registers 14

    invoke-static {p0}, Lorg/renpy/android/RenPySound;->getChannel(I)Lorg/renpy/android/RenPySound$Channel;

    move-result-object p0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lorg/renpy/android/RenPySound$Channel;->queue(Ljava/lang/String;Ljava/lang/String;JJ)V

    iget-object p1, p0, Lorg/renpy/android/RenPySound$Channel;->filename:[Ljava/lang/String;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    if-nez p1, :cond_16

    invoke-virtual {p0}, Lorg/renpy/android/RenPySound$Channel;->play()V

    :cond_16
    return-void
.end method

.method public static queue_depth(I)I
    .registers 3

    invoke-static {p0}, Lorg/renpy/android/RenPySound;->getChannel(I)Lorg/renpy/android/RenPySound$Channel;

    move-result-object p0

    iget-object v0, p0, Lorg/renpy/android/RenPySound$Channel;->filename:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-nez v0, :cond_c

    return v1

    :cond_c
    iget-object p0, p0, Lorg/renpy/android/RenPySound$Channel;->filename:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object p0, p0, v0

    if-nez p0, :cond_14

    return v0

    :cond_14
    const/4 p0, 0x2

    return p0
.end method

.method public static seek(IF)V
    .registers 2

    invoke-static {p0}, Lorg/renpy/android/RenPySound;->getChannel(I)Lorg/renpy/android/RenPySound$Channel;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/renpy/android/RenPySound$Channel;->seek(F)V

    return-void
.end method

.method public static set_pan(IF)V
    .registers 2

    invoke-static {p0}, Lorg/renpy/android/RenPySound;->getChannel(I)Lorg/renpy/android/RenPySound$Channel;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/renpy/android/RenPySound$Channel;->set_pan(F)V

    return-void
.end method

.method public static set_secondary_volume(IF)V
    .registers 2

    invoke-static {p0}, Lorg/renpy/android/RenPySound;->getChannel(I)Lorg/renpy/android/RenPySound$Channel;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/renpy/android/RenPySound$Channel;->set_secondary_volume(F)V

    return-void
.end method

.method public static set_volume(IF)V
    .registers 2

    invoke-static {p0}, Lorg/renpy/android/RenPySound;->getChannel(I)Lorg/renpy/android/RenPySound$Channel;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/renpy/android/RenPySound$Channel;->set_volume(F)V

    return-void
.end method

.method public static stop(I)V
    .registers 1

    invoke-static {p0}, Lorg/renpy/android/RenPySound;->getChannel(I)Lorg/renpy/android/RenPySound$Channel;

    move-result-object p0

    invoke-virtual {p0}, Lorg/renpy/android/RenPySound$Channel;->stop()V

    return-void
.end method

.method public static unpause(I)V
    .registers 1

    invoke-static {p0}, Lorg/renpy/android/RenPySound;->getChannel(I)Lorg/renpy/android/RenPySound$Channel;

    move-result-object p0

    invoke-virtual {p0}, Lorg/renpy/android/RenPySound$Channel;->unpause()V

    return-void
.end method
