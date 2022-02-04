.class public Lorg/renpy/android/VideoPlayer;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field base:J

.field length:J

.field player:Landroid/media/MediaPlayer;

.field playing:Z

.field realFn:Ljava/lang/String;

.field view:Landroid/view/SurfaceView;


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/renpy/android/VideoPlayer;->player:Landroid/media/MediaPlayer;

    iput-object v0, p0, Lorg/renpy/android/VideoPlayer;->view:Landroid/view/SurfaceView;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/renpy/android/VideoPlayer;->playing:Z

    iput-object p1, p0, Lorg/renpy/android/VideoPlayer;->realFn:Ljava/lang/String;

    iput-wide p2, p0, Lorg/renpy/android/VideoPlayer;->base:J

    iput-wide p4, p0, Lorg/renpy/android/VideoPlayer;->length:J

    monitor-enter p0

    :try_start_12
    sget-object p1, Lorg/renpy/android/PythonSDLActivity;->mActivity:Lorg/renpy/android/PythonSDLActivity;

    new-instance p2, Lorg/renpy/android/VideoPlayer$2;

    invoke-direct {p2, p0}, Lorg/renpy/android/VideoPlayer$2;-><init>(Lorg/renpy/android/VideoPlayer;)V

    invoke-virtual {p1, p2}, Lorg/renpy/android/PythonSDLActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_21

    :try_start_1c
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_1c .. :try_end_1f} :catch_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_21

    :catch_1f
    :try_start_1f
    monitor-exit p0

    return-void

    :catchall_21
    move-exception p1

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_21

    throw p1
.end method

.method static synthetic access$000(Lorg/renpy/android/VideoPlayer;)V
    .registers 1

    invoke-direct {p0}, Lorg/renpy/android/VideoPlayer;->stopPlaying()V

    return-void
.end method

.method static synthetic access$100(Lorg/renpy/android/VideoPlayer;)V
    .registers 1

    invoke-direct {p0}, Lorg/renpy/android/VideoPlayer;->startPlaying()V

    return-void
.end method

.method private startPlaying()V
    .registers 4

    const-string v0, "VP"

    const-string v1, "startPlaying called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/view/SurfaceView;

    sget-object v2, Lorg/renpy/android/PythonSDLActivity;->mActivity:Lorg/renpy/android/PythonSDLActivity;

    invoke-direct {v1, v2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/renpy/android/VideoPlayer;->view:Landroid/view/SurfaceView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    iget-object v1, p0, Lorg/renpy/android/VideoPlayer;->view:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    sget-object v1, Lorg/renpy/android/PythonSDLActivity;->mActivity:Lorg/renpy/android/PythonSDLActivity;

    iget-object v1, v1, Lorg/renpy/android/PythonSDLActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/renpy/android/VideoPlayer;->view:Landroid/view/SurfaceView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const-string v1, "startPlaying done"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private stopPlaying()V
    .registers 3

    iget-object v0, p0, Lorg/renpy/android/VideoPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    sget-object v0, Lorg/renpy/android/PythonSDLActivity;->mActivity:Lorg/renpy/android/PythonSDLActivity;

    iget-object v0, v0, Lorg/renpy/android/PythonSDLActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/renpy/android/VideoPlayer;->view:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public isPlaying()Z
    .registers 2

    iget-boolean v0, p0, Lorg/renpy/android/VideoPlayer;->playing:Z

    return v0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 3

    const-string p1, "VP"

    const-string v0, "Completion."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lorg/renpy/android/VideoPlayer;->playing:Z

    if-eqz p1, :cond_e

    invoke-virtual {p0}, Lorg/renpy/android/VideoPlayer;->stop()V

    :cond_e
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VP"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public pause()V
    .registers 3

    iget-boolean v0, p0, Lorg/renpy/android/VideoPlayer;->playing:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/renpy/android/VideoPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    const-string v0, "VP"

    const-string v1, "paused"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    return-void
.end method

.method public stop()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/renpy/android/VideoPlayer;->playing:Z

    sget-object v0, Lorg/renpy/android/PythonSDLActivity;->mActivity:Lorg/renpy/android/PythonSDLActivity;

    new-instance v1, Lorg/renpy/android/VideoPlayer$1;

    invoke-direct {v1, p0}, Lorg/renpy/android/VideoPlayer$1;-><init>(Lorg/renpy/android/VideoPlayer;)V

    invoke-virtual {v0, v1}, Lorg/renpy/android/PythonSDLActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 5

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 13

    const-string p1, "VP"

    const-string v0, "Surface created."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_7
    new-instance p1, Landroid/media/MediaPlayer;

    invoke-direct {p1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object p1, p0, Lorg/renpy/android/VideoPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object p1, p0, Lorg/renpy/android/VideoPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object p1, p0, Lorg/renpy/android/VideoPlayer;->player:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lorg/renpy/android/VideoPlayer;->view:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    const-string p1, "VP"

    const-string v0, "Set display."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/io/FileInputStream;

    iget-object v0, p0, Lorg/renpy/android/VideoPlayer;->realFn:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iget-wide v0, p0, Lorg/renpy/android/VideoPlayer;->length:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_45

    iget-object v5, p0, Lorg/renpy/android/VideoPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    iget-wide v7, p0, Lorg/renpy/android/VideoPlayer;->base:J

    iget-wide v9, p0, Lorg/renpy/android/VideoPlayer;->length:J

    invoke-virtual/range {v5 .. v10}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    goto :goto_4e

    :cond_45
    iget-object v0, p0, Lorg/renpy/android/VideoPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    :goto_4e
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    const-string p1, "VP"

    const-string v0, "Set input stream."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lorg/renpy/android/VideoPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V

    const-string p1, "VP"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Prepared, duration = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/renpy/android/VideoPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lorg/renpy/android/VideoPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    const-string p1, "VP"

    const-string v0, "Started playing"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_85} :catch_8e

    monitor-enter p0

    :try_start_86
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :catchall_8b
    move-exception p1

    monitor-exit p0
    :try_end_8d
    .catchall {:try_start_86 .. :try_end_8d} :catchall_8b

    throw p1

    :catch_8e
    move-exception p1

    const-string v0, "VP"

    const-string v1, "exception in surface creation"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lorg/renpy/android/VideoPlayer;->stop()V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 2

    return-void
.end method

.method public unpause()V
    .registers 3

    iget-boolean v0, p0, Lorg/renpy/android/VideoPlayer;->playing:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/renpy/android/VideoPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    const-string v0, "VP"

    const-string v1, "unpaused"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    return-void
.end method
