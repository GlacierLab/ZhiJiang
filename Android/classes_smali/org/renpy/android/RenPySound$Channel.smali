.class Lorg/renpy/android/RenPySound$Channel;
.super Ljava/lang/Object;
.source "RenPySound.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/renpy/android/RenPySound;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Channel"
.end annotation


# instance fields
.field filename:[Ljava/lang/String;

.field left_volume:D

.field player:[Landroid/media/MediaPlayer;

.field prepared:[Z

.field right_volume:D

.field secondary_volume:D

.field volume:D


# direct methods
.method constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [Landroid/media/MediaPlayer;

    iput-object v1, p0, Lorg/renpy/android/RenPySound$Channel;->player:[Landroid/media/MediaPlayer;

    new-array v2, v0, [Ljava/lang/String;

    iput-object v2, p0, Lorg/renpy/android/RenPySound$Channel;->filename:[Ljava/lang/String;

    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/renpy/android/RenPySound$Channel;->prepared:[Z

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    const/4 v2, 0x0

    aput-object v0, v1, v2

    iget-object v0, p0, Lorg/renpy/android/RenPySound$Channel;->player:[Landroid/media/MediaPlayer;

    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-wide/high16 v0, 0x3ff0000000000000L  # 1.0

    iput-wide v0, p0, Lorg/renpy/android/RenPySound$Channel;->volume:D

    iput-wide v0, p0, Lorg/renpy/android/RenPySound$Channel;->secondary_volume:D

    iput-wide v0, p0, Lorg/renpy/android/RenPySound$Channel;->left_volume:D

    iput-wide v0, p0, Lorg/renpy/android/RenPySound$Channel;->right_volume:D

    return-void
.end method


# virtual methods
.method declared-synchronized dequeue()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/renpy/android/RenPySound$Channel;->player:[Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iget-object v0, p0, Lorg/renpy/android/RenPySound$Channel;->filename:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v2, v0, v1

    iget-object v0, p0, Lorg/renpy/android/RenPySound$Channel;->prepared:[Z

    const/4 v2, 0x0

    aput-boolean v2, v0, v1
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    monitor-exit p0

    return-void

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized get_length()I
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/renpy/android/RenPySound$Channel;->prepared:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_12

    iget-object v0, p0, Lorg/renpy/android/RenPySound$Channel;->player:[Landroid/media/MediaPlayer;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_15

    monitor-exit p0

    return v0

    :cond_12
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized get_pos()I
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/renpy/android/RenPySound$Channel;->player:[Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return v0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onCompletion(Landroid/media/MediaPlayer;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/renpy/android/RenPySound$Channel;->player:[Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-ne p1, v0, :cond_b

    invoke-virtual {p0}, Lorg/renpy/android/RenPySound$Channel;->play()V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    :cond_b
    monitor-exit p0

    return-void

    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onPrepared(Landroid/media/MediaPlayer;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/renpy/android/RenPySound$Channel;->player:[Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v2, 0x1

    if-ne p1, v0, :cond_14

    iget-object v0, p0, Lorg/renpy/android/RenPySound$Channel;->prepared:[Z

    aput-boolean v2, v0, v1

    iget-object v0, p0, Lorg/renpy/android/RenPySound$Channel;->player:[Landroid/media/MediaPlayer;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    :cond_14
    iget-object v0, p0, Lorg/renpy/android/RenPySound$Channel;->player:[Landroid/media/MediaPlayer;

    aget-object v0, v0, v2

    if-ne p1, v0, :cond_1e

    iget-object p1, p0, Lorg/renpy/android/RenPySound$Channel;->prepared:[Z

    aput-boolean v2, p1, v2
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    :cond_1e
    monitor-exit p0

    return-void

    :catchall_20
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized pause()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/renpy/android/RenPySound$Channel;->filename:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_f

    iget-object v0, p0, Lorg/renpy/android/RenPySound$Channel;->player:[Landroid/media/MediaPlayer;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    :cond_f
    monitor-exit p0

    return-void

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized play()V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/renpy/android/RenPySound$Channel;->player:[Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iget-object v0, p0, Lorg/renpy/android/RenPySound$Channel;->player:[Landroid/media/MediaPlayer;

    aget-object v0, v0, v1

    iget-object v2, p0, Lorg/renpy/android/RenPySound$Channel;->player:[Landroid/media/MediaPlayer;

    iget-object v3, p0, Lorg/renpy/android/RenPySound$Channel;->player:[Landroid/media/MediaPlayer;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    aput-object v3, v2, v1

    iget-object v2, p0, Lorg/renpy/android/RenPySound$Channel;->player:[Landroid/media/MediaPlayer;

    aput-object v0, v2, v4

    iget-object v0, p0, Lorg/renpy/android/RenPySound$Channel;->filename:[Ljava/lang/String;

    iget-object v2, p0, Lorg/renpy/android/RenPySound$Channel;->filename:[Ljava/lang/String;

    aget-object v2, v2, v4

    aput-object v2, v0, v1

    iget-object v0, p0, Lorg/renpy/android/RenPySound$Channel;->filename:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v2, v0, v4

    iget-object v0, p0, Lorg/renpy/android/RenPySound$Channel;->prepared:[Z

    iget-object v2, p0, Lorg/renpy/android/RenPySound$Channel;->prepared:[Z

    aget-boolean v2, v2, v4

    aput-boolean v2, v0, v1

    iget-object v0, p0, Lorg/renpy/android/RenPySound$Channel;->prepared:[Z

    aput-boolean v1, v0, v4

    const-string v0, "python"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Using queued file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/renpy/android/RenPySound$Channel;->filename:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/renpy/android/RenPySound$Channel;->filename:[Ljava/lang/String;

    aget-object v0, v0, v1

    if-eqz v0, :cond_63

    invoke-virtual {p0}, Lorg/renpy/android/RenPySound$Channel;->updateVolume()V

    iget-object v0, p0, Lorg/renpy/android/RenPySound$Channel;->prepared:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_63

    iget-object v0, p0, Lorg/renpy/android/RenPySound$Channel;->player:[Landroid/media/MediaPlayer;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_63
    .catchall {:try_start_1 .. :try_end_63} :catchall_65

    :cond_63
    monitor-exit p0

    return-void

    :catchall_65
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized queue(Ljava/lang/String;Ljava/lang/String;JJ)V
    .registers 16

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/renpy/android/RenPySound$Channel;->player:[Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_40

    :try_start_9
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    cmp-long p2, p5, v2

    if-ltz p2, :cond_1f

    invoke-virtual {v8}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    move-object v2, v0

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v2 .. v7}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    goto :goto_26

    :cond_1f
    invoke-virtual {v8}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    :goto_26
    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_32} :catch_38
    .catchall {:try_start_9 .. :try_end_32} :catchall_40

    :try_start_32
    iget-object p2, p0, Lorg/renpy/android/RenPySound$Channel;->filename:[Ljava/lang/String;

    aput-object p1, p2, v1
    :try_end_36
    .catchall {:try_start_32 .. :try_end_36} :catchall_40

    monitor-exit p0

    return-void

    :catch_38
    move-exception p1

    :try_start_39
    const-string p2, "RenPySound"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3e
    .catchall {:try_start_39 .. :try_end_3e} :catchall_40

    monitor-exit p0

    return-void

    :catchall_40
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized seek(F)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/renpy/android/RenPySound$Channel;->prepared:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_12

    iget-object v0, p0, Lorg/renpy/android/RenPySound$Channel;->player:[Landroid/media/MediaPlayer;

    aget-object v0, v0, v1

    float-to-int p1, p1

    mul-int/lit16 p1, p1, 0x3e8

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    :cond_12
    monitor-exit p0

    return-void

    :catchall_14
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized set_pan(F)V
    .registers 7

    monitor-enter p0

    const/4 v0, 0x0

    const-wide/high16 v1, 0x3ff0000000000000L  # 1.0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_12

    :try_start_8
    iput-wide v1, p0, Lorg/renpy/android/RenPySound$Channel;->left_volume:D
    :try_end_a
    .catchall {:try_start_8 .. :try_end_a} :catchall_21

    float-to-double v3, p1

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v3, v1

    :try_start_f
    iput-wide v3, p0, Lorg/renpy/android/RenPySound$Channel;->right_volume:D
    :try_end_11
    .catchall {:try_start_f .. :try_end_11} :catchall_21

    goto :goto_1c

    :cond_12
    float-to-double v3, p1

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v3, v1, v3

    :try_start_18
    iput-wide v3, p0, Lorg/renpy/android/RenPySound$Channel;->left_volume:D

    iput-wide v1, p0, Lorg/renpy/android/RenPySound$Channel;->right_volume:D

    :goto_1c
    invoke-virtual {p0}, Lorg/renpy/android/RenPySound$Channel;->updateVolume()V
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_21

    monitor-exit p0

    return-void

    :catchall_21
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized set_secondary_volume(F)V
    .registers 4

    monitor-enter p0

    float-to-double v0, p1

    :try_start_2
    iput-wide v0, p0, Lorg/renpy/android/RenPySound$Channel;->secondary_volume:D

    invoke-virtual {p0}, Lorg/renpy/android/RenPySound$Channel;->updateVolume()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized set_volume(F)V
    .registers 4

    monitor-enter p0

    float-to-double v0, p1

    :try_start_2
    iput-wide v0, p0, Lorg/renpy/android/RenPySound$Channel;->volume:D

    invoke-virtual {p0}, Lorg/renpy/android/RenPySound$Channel;->updateVolume()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized stop()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/renpy/android/RenPySound$Channel;->player:[Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iget-object v0, p0, Lorg/renpy/android/RenPySound$Channel;->player:[Landroid/media/MediaPlayer;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iget-object v0, p0, Lorg/renpy/android/RenPySound$Channel;->filename:[Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v3, v0, v1

    iget-object v0, p0, Lorg/renpy/android/RenPySound$Channel;->filename:[Ljava/lang/String;

    aput-object v3, v0, v2

    iget-object v0, p0, Lorg/renpy/android/RenPySound$Channel;->prepared:[Z

    aput-boolean v1, v0, v1

    iget-object v0, p0, Lorg/renpy/android/RenPySound$Channel;->prepared:[Z

    aput-boolean v1, v0, v2
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    monitor-exit p0

    return-void

    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized unpause()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/renpy/android/RenPySound$Channel;->filename:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_f

    iget-object v0, p0, Lorg/renpy/android/RenPySound$Channel;->player:[Landroid/media/MediaPlayer;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    :cond_f
    monitor-exit p0

    return-void

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized updateVolume()V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/renpy/android/RenPySound$Channel;->player:[Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-wide v1, p0, Lorg/renpy/android/RenPySound$Channel;->volume:D

    iget-wide v3, p0, Lorg/renpy/android/RenPySound$Channel;->secondary_volume:D

    mul-double v1, v1, v3

    iget-wide v3, p0, Lorg/renpy/android/RenPySound$Channel;->left_volume:D

    mul-double v1, v1, v3

    double-to-float v1, v1

    iget-wide v2, p0, Lorg/renpy/android/RenPySound$Channel;->volume:D

    iget-wide v4, p0, Lorg/renpy/android/RenPySound$Channel;->secondary_volume:D

    mul-double v2, v2, v4

    iget-wide v4, p0, Lorg/renpy/android/RenPySound$Channel;->right_volume:D

    mul-double v2, v2, v4

    double-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    monitor-exit p0

    return-void

    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method
