.class public Lorg/libsdl/app/SDL;
.super Ljava/lang/Object;
.source "SDL.java"


# static fields
.field protected static mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .registers 1

    sget-object v0, Lorg/libsdl/app/SDL;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static initialize()V
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/libsdl/app/SDL;->setContext(Landroid/content/Context;)V

    invoke-static {}, Lorg/libsdl/app/SDLActivity;->initialize()V

    invoke-static {}, Lorg/libsdl/app/SDLAudioManager;->initialize()V

    invoke-static {}, Lorg/libsdl/app/SDLControllerManager;->initialize()V

    return-void
.end method

.method public static loadLibrary(Ljava/lang/String;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;,
            Ljava/lang/SecurityException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    if-eqz p0, :cond_72

    :try_start_2
    sget-object v0, Lorg/libsdl/app/SDL;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "com.getkeepsafe.relinker.ReLinker"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lorg/libsdl/app/SDL;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.getkeepsafe.relinker.ReLinker$LoadListener"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Lorg/libsdl/app/SDL;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-string v3, "android.content.Context"

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Lorg/libsdl/app/SDL;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const-string v4, "java.lang.String"

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "force"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v4, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v7, "loadLibrary"

    const/4 v8, 0x4

    new-array v9, v8, [Ljava/lang/Class;

    aput-object v2, v9, v5

    const/4 v2, 0x1

    aput-object v3, v9, v2

    const/4 v10, 0x2

    aput-object v3, v9, v10

    const/4 v3, 0x3

    aput-object v1, v9, v3

    invoke-virtual {v4, v7, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v4, v8, [Ljava/lang/Object;

    sget-object v7, Lorg/libsdl/app/SDL;->mContext:Landroid/content/Context;

    aput-object v7, v4, v5

    aput-object p0, v4, v2

    aput-object v6, v4, v10

    aput-object v6, v4, v3

    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_69
    .catchall {:try_start_2 .. :try_end_69} :catchall_6a

    goto :goto_6d

    :catchall_6a
    :try_start_6a
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_6d
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_6a .. :try_end_6d} :catch_70
    .catch Ljava/lang/SecurityException; {:try_start_6a .. :try_end_6d} :catch_6e

    :goto_6d
    return-void

    :catch_6e
    move-exception p0

    throw p0

    :catch_70
    move-exception p0

    throw p0

    :cond_72
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "No library name provided."

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setContext(Landroid/content/Context;)V
    .registers 1

    sput-object p0, Lorg/libsdl/app/SDL;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static setupJNI()V
    .registers 0

    invoke-static {}, Lorg/libsdl/app/SDLActivity;->nativeSetupJNI()I

    invoke-static {}, Lorg/libsdl/app/SDLAudioManager;->nativeSetupJNI()I

    invoke-static {}, Lorg/libsdl/app/SDLControllerManager;->nativeSetupJNI()I

    return-void
.end method
