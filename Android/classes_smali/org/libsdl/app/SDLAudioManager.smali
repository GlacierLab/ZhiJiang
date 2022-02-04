.class public Lorg/libsdl/app/SDLAudioManager;
.super Ljava/lang/Object;
.source "SDLAudioManager.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "SDLAudio"

.field protected static mAudioRecord:Landroid/media/AudioRecord;

.field protected static mAudioTrack:Landroid/media/AudioTrack;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static audioClose()V
    .registers 1

    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    const/4 v0, 0x0

    sput-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    :cond_f
    return-void
.end method

.method public static audioOpen(IIII)[I
    .registers 5

    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2, p3}, Lorg/libsdl/app/SDLAudioManager;->open(ZIIII)[I

    move-result-object p0

    return-object p0
.end method

.method public static audioSetThreadPriority(ZI)V
    .registers 4

    if-eqz p0, :cond_1b

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SDLAudioC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_33

    :cond_1b
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SDLAudioP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    :goto_33
    const/16 p0, -0x10

    invoke-static {p0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_38} :catch_39

    goto :goto_54

    :catch_39
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "modify thread properties failed "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SDLAudio"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_54
    return-void
.end method

.method public static audioWriteByteBuffer([B)V
    .registers 5

    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    const-string v1, "SDLAudio"

    if-nez v0, :cond_c

    const-string p0, "Attempted to make audio call with uninitialized audio!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    const/4 v0, 0x0

    :goto_d
    array-length v2, p0

    if-ge v0, v2, :cond_2b

    sget-object v2, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    array-length v3, p0

    sub-int/2addr v3, v0

    invoke-virtual {v2, p0, v0, v3}, Landroid/media/AudioTrack;->write([BII)I

    move-result v2

    if-lez v2, :cond_1c

    add-int/2addr v0, v2

    goto :goto_d

    :cond_1c
    if-nez v2, :cond_26

    const-wide/16 v2, 0x1

    :try_start_20
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_23
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_23} :catch_24

    goto :goto_d

    :catch_24
    nop

    goto :goto_d

    :cond_26
    const-string p0, "SDL audio: error return from write(byte)"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    return-void
.end method

.method public static audioWriteFloatBuffer([F)V
    .registers 6

    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    const-string v1, "SDLAudio"

    if-nez v0, :cond_c

    const-string p0, "Attempted to make audio call with uninitialized audio!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_e
    array-length v3, p0

    if-ge v2, v3, :cond_2c

    sget-object v3, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    array-length v4, p0

    sub-int/2addr v4, v2

    invoke-virtual {v3, p0, v2, v4, v0}, Landroid/media/AudioTrack;->write([FIII)I

    move-result v3

    if-lez v3, :cond_1d

    add-int/2addr v2, v3

    goto :goto_e

    :cond_1d
    if-nez v3, :cond_27

    const-wide/16 v3, 0x1

    :try_start_21
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_24
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_24} :catch_25

    goto :goto_e

    :catch_25
    nop

    goto :goto_e

    :cond_27
    const-string p0, "SDL audio: error return from write(float)"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    return-void
.end method

.method public static audioWriteShortBuffer([S)V
    .registers 5

    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    const-string v1, "SDLAudio"

    if-nez v0, :cond_c

    const-string p0, "Attempted to make audio call with uninitialized audio!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    const/4 v0, 0x0

    :goto_d
    array-length v2, p0

    if-ge v0, v2, :cond_2b

    sget-object v2, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    array-length v3, p0

    sub-int/2addr v3, v0

    invoke-virtual {v2, p0, v0, v3}, Landroid/media/AudioTrack;->write([SII)I

    move-result v2

    if-lez v2, :cond_1c

    add-int/2addr v0, v2

    goto :goto_d

    :cond_1c
    if-nez v2, :cond_26

    const-wide/16 v2, 0x1

    :try_start_20
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_23
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_23} :catch_24

    goto :goto_d

    :catch_24
    nop

    goto :goto_d

    :cond_26
    const-string p0, "SDL audio: error return from write(short)"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    return-void
.end method

.method public static captureClose()V
    .registers 1

    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    const/4 v0, 0x0

    sput-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    :cond_f
    return-void
.end method

.method public static captureOpen(IIII)[I
    .registers 5

    const/4 v0, 0x1

    invoke-static {v0, p0, p1, p2, p3}, Lorg/libsdl/app/SDLAudioManager;->open(ZIIII)[I

    move-result-object p0

    return-object p0
.end method

.method public static captureReadByteBuffer([BZ)I
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-ge v0, v2, :cond_f

    sget-object p1, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    array-length v0, p0

    invoke-virtual {p1, p0, v1, v0}, Landroid/media/AudioRecord;->read([BII)I

    move-result p0

    return p0

    :cond_f
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    array-length v2, p0

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p0, v1, v2, p1}, Landroid/media/AudioRecord;->read([BIII)I

    move-result p0

    return p0
.end method

.method public static captureReadFloatBuffer([FZ)I
    .registers 5

    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    array-length v1, p0

    xor-int/lit8 p1, p1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1, p1}, Landroid/media/AudioRecord;->read([FIII)I

    move-result p0

    return p0
.end method

.method public static captureReadShortBuffer([SZ)I
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-ge v0, v2, :cond_f

    sget-object p1, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    array-length v0, p0

    invoke-virtual {p1, p0, v1, v0}, Landroid/media/AudioRecord;->read([SII)I

    move-result p0

    return p0

    :cond_f
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    array-length v2, p0

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p0, v1, v2, p1}, Landroid/media/AudioRecord;->read([SIII)I

    move-result p0

    return p0
.end method

.method protected static getAudioFormatString(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_14

    const/4 v0, 0x3

    if-eq p0, v0, :cond_11

    const/4 v0, 0x4

    if-eq p0, v0, :cond_e

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_e
    const-string p0, "float"

    return-object p0

    :cond_11
    const-string p0, "8-bit"

    return-object p0

    :cond_14
    const-string p0, "16-bit"

    return-object p0
.end method

.method public static initialize()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    sput-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    return-void
.end method

.method public static native nativeSetupJNI()I
.end method

.method protected static open(ZIIII)[I
    .registers 29

    move/from16 v0, p1

    move/from16 v1, p3

    move/from16 v2, p4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Opening "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "capture"

    const-string v6, "playback"

    if-eqz p0, :cond_18

    move-object v7, v5

    goto :goto_19

    :cond_18
    move-object v7, v6

    :goto_19
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", requested "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " frames of "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " channel "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Lorg/libsdl/app/SDLAudioManager;->getAudioFormatString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " audio at "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " Hz"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v11, "SDLAudio"

    invoke-static {v11, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const v12, 0xbb80

    const/16 v13, 0x1f40

    const/16 v14, 0x15

    const/4 v15, 0x2

    if-ge v3, v14, :cond_67

    if-le v1, v15, :cond_5d

    const/4 v1, 0x2

    :cond_5d
    if-ge v0, v13, :cond_62

    const/16 v0, 0x1f40

    goto :goto_67

    :cond_62
    if-le v0, v12, :cond_67

    const v0, 0xbb80

    :cond_67
    :goto_67
    const/4 v12, 0x4

    move/from16 v13, p2

    if-ne v13, v12, :cond_75

    if-eqz p0, :cond_70

    const/16 v14, 0x17

    :cond_70
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v3, v14, :cond_75

    const/4 v13, 0x2

    :cond_75
    const/4 v3, 0x3

    const/4 v14, 0x1

    if-eq v13, v15, :cond_9d

    if-eq v13, v3, :cond_9b

    if-eq v13, v12, :cond_99

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Requested format "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", getting ENCODING_PCM_16BIT"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x2

    const/4 v13, 0x2

    goto :goto_9e

    :cond_99
    const/4 v3, 0x4

    goto :goto_9e

    :cond_9b
    const/4 v3, 0x1

    goto :goto_9e

    :cond_9d
    const/4 v3, 0x2

    :goto_9e
    const-string v12, " channels, getting stereo"

    const/16 v16, 0xfc

    const-string v15, "Requested "

    const/16 v17, 0xc

    if-eqz p0, :cond_c6

    if-eq v1, v14, :cond_c3

    const/4 v14, 0x2

    if-eq v1, v14, :cond_111

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_de

    :cond_c3
    const/16 v12, 0x10

    goto :goto_115

    :cond_c6
    packed-switch v1, :pswitch_data_20e

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_de
    const/4 v1, 0x2

    goto :goto_111

    :pswitch_e0  #0x8
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x17

    if-lt v12, v14, :cond_e9

    const/16 v12, 0x18fc

    goto :goto_115

    :cond_e9
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " channels, getting 5.1 surround"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x6

    goto :goto_105

    :pswitch_102  #0x7
    const/16 v12, 0x4fc

    goto :goto_115

    :goto_105
    :pswitch_105  #0x6
    const/16 v12, 0xfc

    goto :goto_115

    :pswitch_108  #0x5
    const/16 v12, 0xdc

    goto :goto_115

    :pswitch_10b  #0x4
    const/16 v12, 0xcc

    goto :goto_115

    :pswitch_10e  #0x3
    const/16 v12, 0x1c

    goto :goto_115

    :cond_111
    :goto_111
    :pswitch_111  #0x2
    const/16 v12, 0xc

    goto :goto_115

    :pswitch_114  #0x1
    const/4 v12, 0x4

    :goto_115
    mul-int v3, v3, v1

    if-eqz p0, :cond_11e

    invoke-static {v0, v12, v13}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v1

    goto :goto_122

    :cond_11e
    invoke-static {v0, v12, v13}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v1

    :goto_122
    add-int/2addr v1, v3

    const/4 v14, 0x1

    sub-int/2addr v1, v14

    div-int/2addr v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v2, 0x4

    new-array v2, v2, [I

    const/4 v14, 0x0

    const/4 v15, 0x0

    if-eqz p0, :cond_17c

    sget-object v16, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    if-nez v16, :cond_161

    new-instance v22, Landroid/media/AudioRecord;

    const/16 v17, 0x0

    mul-int v21, v1, v3

    move-object/from16 v16, v22

    move/from16 v18, v0

    move/from16 v19, v12

    move/from16 v20, v13

    invoke-direct/range {v16 .. v21}, Landroid/media/AudioRecord;-><init>(IIIII)V

    sput-object v22, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual/range {v22 .. v22}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_15c

    const-string v0, "Failed during initialization of AudioRecord"

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    sput-object v15, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    return-object v15

    :cond_15c
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    :cond_161
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getSampleRate()I

    move-result v0

    aput v0, v2, v14

    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getAudioFormat()I

    move-result v0

    const/4 v3, 0x1

    aput v0, v2, v3

    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getChannelCount()I

    move-result v0

    const/4 v3, 0x2

    aput v0, v2, v3

    goto :goto_1c8

    :cond_17c
    sget-object v16, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    if-nez v16, :cond_1ae

    new-instance v23, Landroid/media/AudioTrack;

    const/16 v17, 0x3

    mul-int v21, v1, v3

    const/16 v22, 0x1

    move-object/from16 v16, v23

    move/from16 v18, v0

    move/from16 v19, v12

    move/from16 v20, v13

    invoke-direct/range {v16 .. v22}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    sput-object v23, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual/range {v23 .. v23}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1a9

    const-string v0, "Failed during initialization of Audio Track"

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    sput-object v15, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    return-object v15

    :cond_1a9
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    :cond_1ae
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result v0

    aput v0, v2, v14

    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioFormat()I

    move-result v0

    const/4 v3, 0x1

    aput v0, v2, v3

    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getChannelCount()I

    move-result v0

    const/4 v3, 0x2

    aput v0, v2, v3

    :goto_1c8
    const/4 v0, 0x3

    aput v1, v2, v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_1d6

    goto :goto_1d7

    :cond_1d6
    move-object v5, v6

    :goto_1d7
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", got "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v2, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    aget v0, v2, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    aget v0, v2, v0

    invoke-static {v0}, Lorg/libsdl/app/SDLAudioManager;->getAudioFormatString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v2, v14

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    nop

    :pswitch_data_20e
    .packed-switch 0x1
        :pswitch_114  #00000001
        :pswitch_111  #00000002
        :pswitch_10e  #00000003
        :pswitch_10b  #00000004
        :pswitch_108  #00000005
        :pswitch_105  #00000006
        :pswitch_102  #00000007
        :pswitch_e0  #00000008
    .end packed-switch
.end method
