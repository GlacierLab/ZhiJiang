.class public Lorg/libsdl/app/SDLActivity;
.super Landroid/app/Activity;
.source "SDLActivity.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/libsdl/app/SDLActivity$ShowTextInputTask;,
        Lorg/libsdl/app/SDLActivity$SDLCommandHandler;,
        Lorg/libsdl/app/SDLActivity$NativeState;
    }
.end annotation


# static fields
.field static final COMMAND_CHANGE_SURFACEVIEW_FORMAT:I = 0x4

.field static final COMMAND_CHANGE_TITLE:I = 0x1

.field static final COMMAND_CHANGE_WINDOW_STYLE:I = 0x2

.field static final COMMAND_SET_KEEP_SCREEN_ON:I = 0x5

.field static final COMMAND_TEXTEDIT_HIDE:I = 0x3

.field protected static final COMMAND_USER:I = 0x8000

.field protected static final SDL_ORIENTATION_LANDSCAPE:I = 0x1

.field protected static final SDL_ORIENTATION_LANDSCAPE_FLIPPED:I = 0x2

.field protected static final SDL_ORIENTATION_PORTRAIT:I = 0x3

.field protected static final SDL_ORIENTATION_PORTRAIT_FLIPPED:I = 0x4

.field protected static final SDL_ORIENTATION_UNKNOWN:I = 0x0

.field private static final SDL_SYSTEM_CURSOR_ARROW:I = 0x0

.field private static final SDL_SYSTEM_CURSOR_CROSSHAIR:I = 0x3

.field private static final SDL_SYSTEM_CURSOR_HAND:I = 0xb

.field private static final SDL_SYSTEM_CURSOR_IBEAM:I = 0x1

.field private static final SDL_SYSTEM_CURSOR_NO:I = 0xa

.field private static final SDL_SYSTEM_CURSOR_SIZEALL:I = 0x9

.field private static final SDL_SYSTEM_CURSOR_SIZENESW:I = 0x6

.field private static final SDL_SYSTEM_CURSOR_SIZENS:I = 0x8

.field private static final SDL_SYSTEM_CURSOR_SIZENWSE:I = 0x5

.field private static final SDL_SYSTEM_CURSOR_SIZEWE:I = 0x7

.field private static final SDL_SYSTEM_CURSOR_WAIT:I = 0x2

.field private static final SDL_SYSTEM_CURSOR_WAITARROW:I = 0x4

.field private static final TAG:Ljava/lang/String; = "SDL"

.field public static mBrokenLibraries:Z

.field protected static mClipboardHandler:Lorg/libsdl/app/SDLClipboardHandler;

.field protected static mCurrentLocale:Ljava/util/Locale;

.field public static mCurrentNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

.field protected static mCurrentOrientation:I

.field protected static mCursors:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Landroid/view/PointerIcon;",
            ">;"
        }
    .end annotation
.end field

.field protected static mFullscreenModeActive:Z

.field protected static mHIDDeviceManager:Lorg/libsdl/app/HIDDeviceManager;

.field public static mHasFocus:Z

.field public static final mHasMultiWindow:Z

.field public static mIsResumedCalled:Z

.field protected static mLastCursorID:I

.field protected static mLayout:Landroid/view/ViewGroup;

.field protected static mMotionListener:Lorg/libsdl/app/SDLGenericMotionListener_API12;

.field public static mNextNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

.field protected static mSDLThread:Ljava/lang/Thread;

.field protected static mScreenKeyboardShown:Z

.field protected static mSingleton:Lorg/libsdl/app/SDLActivity;

.field protected static mSurface:Lorg/libsdl/app/SDLSurface;

.field protected static mTextEdit:Landroid/view/View;


# instance fields
.field commandHandler:Landroid/os/Handler;

.field protected final messageboxSelection:[I

.field private final rehideSystemUi:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x18

    if-lt v0, v2, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    sput-boolean v0, Lorg/libsdl/app/SDLActivity;->mHasMultiWindow:Z

    sput-boolean v1, Lorg/libsdl/app/SDLActivity;->mBrokenLibraries:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lorg/libsdl/app/SDLActivity$SDLCommandHandler;

    invoke-direct {v0}, Lorg/libsdl/app/SDLActivity$SDLCommandHandler;-><init>()V

    iput-object v0, p0, Lorg/libsdl/app/SDLActivity;->commandHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/libsdl/app/SDLActivity;->messageboxSelection:[I

    new-instance v0, Lorg/libsdl/app/SDLActivity$7;

    invoke-direct {v0, p0}, Lorg/libsdl/app/SDLActivity$7;-><init>(Lorg/libsdl/app/SDLActivity;)V

    iput-object v0, p0, Lorg/libsdl/app/SDLActivity;->rehideSystemUi:Ljava/lang/Runnable;

    return-void
.end method

.method public static clipboardGetText()Ljava/lang/String;
    .registers 1

    sget-object v0, Lorg/libsdl/app/SDLActivity;->mClipboardHandler:Lorg/libsdl/app/SDLClipboardHandler;

    invoke-virtual {v0}, Lorg/libsdl/app/SDLClipboardHandler;->clipboardGetText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static clipboardHasText()Z
    .registers 1

    sget-object v0, Lorg/libsdl/app/SDLActivity;->mClipboardHandler:Lorg/libsdl/app/SDLClipboardHandler;

    invoke-virtual {v0}, Lorg/libsdl/app/SDLClipboardHandler;->clipboardHasText()Z

    move-result v0

    return v0
.end method

.method public static clipboardSetText(Ljava/lang/String;)V
    .registers 2

    sget-object v0, Lorg/libsdl/app/SDLActivity;->mClipboardHandler:Lorg/libsdl/app/SDLClipboardHandler;

    invoke-virtual {v0, p0}, Lorg/libsdl/app/SDLClipboardHandler;->clipboardSetText(Ljava/lang/String;)V

    return-void
.end method

.method public static createCustomCursor([IIIII)I
    .registers 6

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    sget p1, Lorg/libsdl/app/SDLActivity;->mLastCursorID:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lorg/libsdl/app/SDLActivity;->mLastCursorID:I

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 p2, 0x0

    const/16 v0, 0x18

    if-lt p1, v0, :cond_27

    :try_start_13
    sget-object p1, Lorg/libsdl/app/SDLActivity;->mCursors:Ljava/util/Hashtable;

    sget v0, Lorg/libsdl/app/SDLActivity;->mLastCursorID:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    int-to-float p3, p3

    int-to-float p4, p4

    invoke-static {p0, p3, p4}, Landroid/view/PointerIcon;->create(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_24} :catch_27

    sget p0, Lorg/libsdl/app/SDLActivity;->mLastCursorID:I

    return p0

    :catch_27
    :cond_27
    return p2
.end method

.method public static getContentView()Landroid/view/View;
    .registers 1

    sget-object v0, Lorg/libsdl/app/SDLActivity;->mLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .registers 1

    invoke-static {}, Lorg/libsdl/app/SDL;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentOrientation()I
    .registers 4

    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_26

    if-eq v0, v3, :cond_25

    if-eq v0, v2, :cond_23

    if-eq v0, v1, :cond_21

    const/4 v1, 0x0

    goto :goto_26

    :cond_21
    const/4 v1, 0x2

    goto :goto_26

    :cond_23
    const/4 v1, 0x4

    goto :goto_26

    :cond_25
    const/4 v1, 0x1

    :cond_26
    :goto_26
    return v1
.end method

.method public static getDiagonal()D
    .registers 7

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    if-nez v1, :cond_10

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_10
    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v1, v1

    iget v3, v0, Landroid/util/DisplayMetrics;->xdpi:F

    float-to-double v3, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v3, v3

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    float-to-double v5, v0

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v5

    mul-double v1, v1, v1

    mul-double v3, v3, v3

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getDisplayDPI()Landroid/util/DisplayMetrics;
    .registers 1

    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    return-object v0
.end method

.method public static getManifestEnvironmentVariables()Z
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_8

    return v0

    :cond_8
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v1, :cond_23

    return v0

    :cond_23
    const-string v2, "SDL_ENV."

    const/16 v3, 0x8

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2f
    :goto_2f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_51

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2f

    invoke-virtual {v5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lorg/libsdl/app/SDLActivity;->nativeSetenv(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_50} :catch_53

    goto :goto_2f

    :cond_51
    const/4 v0, 0x1

    return v0

    :catch_53
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SDL"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method protected static getMotionListener()Lorg/libsdl/app/SDLGenericMotionListener_API12;
    .registers 2

    sget-object v0, Lorg/libsdl/app/SDLActivity;->mMotionListener:Lorg/libsdl/app/SDLGenericMotionListener_API12;

    if-nez v0, :cond_27

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_12

    new-instance v0, Lorg/libsdl/app/SDLGenericMotionListener_API26;

    invoke-direct {v0}, Lorg/libsdl/app/SDLGenericMotionListener_API26;-><init>()V

    sput-object v0, Lorg/libsdl/app/SDLActivity;->mMotionListener:Lorg/libsdl/app/SDLGenericMotionListener_API12;

    goto :goto_27

    :cond_12
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_20

    new-instance v0, Lorg/libsdl/app/SDLGenericMotionListener_API24;

    invoke-direct {v0}, Lorg/libsdl/app/SDLGenericMotionListener_API24;-><init>()V

    sput-object v0, Lorg/libsdl/app/SDLActivity;->mMotionListener:Lorg/libsdl/app/SDLGenericMotionListener_API12;

    goto :goto_27

    :cond_20
    new-instance v0, Lorg/libsdl/app/SDLGenericMotionListener_API12;

    invoke-direct {v0}, Lorg/libsdl/app/SDLGenericMotionListener_API12;-><init>()V

    sput-object v0, Lorg/libsdl/app/SDLActivity;->mMotionListener:Lorg/libsdl/app/SDLGenericMotionListener_API12;

    :cond_27
    :goto_27
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mMotionListener:Lorg/libsdl/app/SDLGenericMotionListener_API12;

    return-object v0
.end method

.method public static getNativeSurface()Landroid/view/Surface;
    .registers 1

    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSurface:Lorg/libsdl/app/SDLSurface;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    invoke-virtual {v0}, Lorg/libsdl/app/SDLSurface;->getNativeSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public static handleNativeState()V
    .registers 3

    sget-object v0, Lorg/libsdl/app/SDLActivity;->mNextNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    sget-object v1, Lorg/libsdl/app/SDLActivity;->mCurrentNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    if-ne v0, v1, :cond_7

    return-void

    :cond_7
    sget-object v1, Lorg/libsdl/app/SDLActivity$NativeState;->INIT:Lorg/libsdl/app/SDLActivity$NativeState;

    if-ne v0, v1, :cond_10

    sget-object v0, Lorg/libsdl/app/SDLActivity;->mNextNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    sput-object v0, Lorg/libsdl/app/SDLActivity;->mCurrentNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    return-void

    :cond_10
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mNextNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    sget-object v1, Lorg/libsdl/app/SDLActivity$NativeState;->PAUSED:Lorg/libsdl/app/SDLActivity$NativeState;

    if-ne v0, v1, :cond_29

    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSDLThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1d

    invoke-static {}, Lorg/libsdl/app/SDLActivity;->nativePause()V

    :cond_1d
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSurface:Lorg/libsdl/app/SDLSurface;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Lorg/libsdl/app/SDLSurface;->handlePause()V

    :cond_24
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mNextNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    sput-object v0, Lorg/libsdl/app/SDLActivity;->mCurrentNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    return-void

    :cond_29
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mNextNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    sget-object v1, Lorg/libsdl/app/SDLActivity$NativeState;->RESUMED:Lorg/libsdl/app/SDLActivity$NativeState;

    if-ne v0, v1, :cond_67

    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSurface:Lorg/libsdl/app/SDLSurface;

    iget-boolean v0, v0, Lorg/libsdl/app/SDLSurface;->mIsSurfaceReady:Z

    if-eqz v0, :cond_67

    sget-boolean v0, Lorg/libsdl/app/SDLActivity;->mHasFocus:Z

    if-eqz v0, :cond_67

    sget-boolean v0, Lorg/libsdl/app/SDLActivity;->mIsResumedCalled:Z

    if-eqz v0, :cond_67

    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSDLThread:Ljava/lang/Thread;

    if-nez v0, :cond_5b

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/libsdl/app/SDLMain;

    invoke-direct {v1}, Lorg/libsdl/app/SDLMain;-><init>()V

    const-string v2, "SDLThread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v0, Lorg/libsdl/app/SDLActivity;->mSDLThread:Ljava/lang/Thread;

    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSurface:Lorg/libsdl/app/SDLSurface;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lorg/libsdl/app/SDLSurface;->enableSensor(IZ)V

    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSDLThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_5e

    :cond_5b
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->nativeResume()V

    :goto_5e
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSurface:Lorg/libsdl/app/SDLSurface;

    invoke-virtual {v0}, Lorg/libsdl/app/SDLSurface;->handleResume()V

    sget-object v0, Lorg/libsdl/app/SDLActivity;->mNextNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    sput-object v0, Lorg/libsdl/app/SDLActivity;->mCurrentNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    :cond_67
    return-void
.end method

.method public static initTouch()V
    .registers 5

    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_26

    aget v3, v0, v2

    invoke-static {v3}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v3

    if-eqz v3, :cond_23

    invoke-virtual {v3}, Landroid/view/InputDevice;->getSources()I

    move-result v4

    and-int/lit16 v4, v4, 0x1002

    if-eqz v4, :cond_23

    invoke-virtual {v3}, Landroid/view/InputDevice;->getId()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lorg/libsdl/app/SDLActivity;->nativeAddTouch(ILjava/lang/String;)V

    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_26
    return-void
.end method

.method public static initialize()V
    .registers 2

    const/4 v0, 0x0

    sput-object v0, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    sput-object v0, Lorg/libsdl/app/SDLActivity;->mSurface:Lorg/libsdl/app/SDLSurface;

    sput-object v0, Lorg/libsdl/app/SDLActivity;->mTextEdit:Landroid/view/View;

    sput-object v0, Lorg/libsdl/app/SDLActivity;->mLayout:Landroid/view/ViewGroup;

    sput-object v0, Lorg/libsdl/app/SDLActivity;->mClipboardHandler:Lorg/libsdl/app/SDLClipboardHandler;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    sput-object v1, Lorg/libsdl/app/SDLActivity;->mCursors:Ljava/util/Hashtable;

    const/4 v1, 0x0

    sput v1, Lorg/libsdl/app/SDLActivity;->mLastCursorID:I

    sput-object v0, Lorg/libsdl/app/SDLActivity;->mSDLThread:Ljava/lang/Thread;

    sput-boolean v1, Lorg/libsdl/app/SDLActivity;->mIsResumedCalled:Z

    const/4 v0, 0x1

    sput-boolean v0, Lorg/libsdl/app/SDLActivity;->mHasFocus:Z

    sget-object v0, Lorg/libsdl/app/SDLActivity$NativeState;->INIT:Lorg/libsdl/app/SDLActivity$NativeState;

    sput-object v0, Lorg/libsdl/app/SDLActivity;->mNextNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    sget-object v0, Lorg/libsdl/app/SDLActivity$NativeState;->INIT:Lorg/libsdl/app/SDLActivity$NativeState;

    sput-object v0, Lorg/libsdl/app/SDLActivity;->mCurrentNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    return-void
.end method

.method public static isAndroidTV()Z
    .registers 4

    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "uimode"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_15

    return v1

    :cond_15
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "MINIX"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "NEO-U1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    return v1

    :cond_2a
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "Amlogic"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "X96-W"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    return v1

    :cond_3f
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "TV"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52

    goto :goto_53

    :cond_52
    const/4 v1, 0x0

    :goto_53
    return v1
.end method

.method public static isChromebook()Z
    .registers 2

    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "org.chromium.arc.device_management"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isDeXMode()Z
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x18

    if-ge v0, v2, :cond_8

    return v1

    :cond_8
    :try_start_8
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "SEM_DESKTOP_MODE_ENABLED"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    const-string v4, "semDesktopModeEnabled"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2c} :catch_2f

    if-ne v3, v0, :cond_2f

    const/4 v1, 0x1

    :catch_2f
    :cond_2f
    return v1
.end method

.method public static isScreenKeyboardShown()Z
    .registers 2

    sget-object v0, Lorg/libsdl/app/SDLActivity;->mTextEdit:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    sget-boolean v0, Lorg/libsdl/app/SDLActivity;->mScreenKeyboardShown:Z

    if-nez v0, :cond_b

    return v1

    :cond_b
    invoke-static {}, Lorg/libsdl/app/SDL;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isAcceptingText()Z

    move-result v0

    return v0
.end method

.method public static isTablet()Z
    .registers 5

    const/4 v0, 0x1

    return v0
.end method

.method public static isTextInputEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0}, Landroid/view/KeyEvent;->isPrintingKey()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    const/16 v0, 0x3e

    if-ne p0, v0, :cond_17

    :cond_16
    const/4 v1, 0x1

    :cond_17
    return v1
.end method

.method public static manualBackButton()V
    .registers 1

    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    invoke-virtual {v0}, Lorg/libsdl/app/SDLActivity;->pressBackButton()V

    return-void
.end method

.method public static minimizeWindow()V
    .registers 2

    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-object v1, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    invoke-virtual {v1, v0}, Lorg/libsdl/app/SDLActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static native nativeAddTouch(ILjava/lang/String;)V
.end method

.method public static native nativeFocusChanged(Z)V
.end method

.method public static native nativeGetHint(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native nativeLowMemory()V
.end method

.method public static native nativePause()V
.end method

.method public static native nativePermissionResult(IZ)V
.end method

.method public static native nativeQuit()V
.end method

.method public static native nativeResume()V
.end method

.method public static native nativeRunMain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)I
.end method

.method public static native nativeSendQuit()V
.end method

.method public static native nativeSetScreenResolution(IIIIIF)V
.end method

.method public static native nativeSetenv(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native nativeSetupJNI()I
.end method

.method public static native onNativeAccel(FFF)V
.end method

.method public static native onNativeClipboardChanged()V
.end method

.method public static native onNativeDropFile(Ljava/lang/String;)V
.end method

.method public static native onNativeKeyDown(I)V
.end method

.method public static native onNativeKeyUp(I)V
.end method

.method public static native onNativeKeyboardFocusLost()V
.end method

.method public static native onNativeLocaleChanged()V
.end method

.method public static native onNativeMouse(IIFFZ)V
.end method

.method public static native onNativeOrientationChanged(I)V
.end method

.method public static native onNativeResize()V
.end method

.method public static native onNativeSoftReturnKey()Z
.end method

.method public static native onNativeSurfaceChanged()V
.end method

.method public static native onNativeSurfaceCreated()V
.end method

.method public static native onNativeSurfaceDestroyed()V
.end method

.method public static native onNativeTouch(IIIFFF)V
.end method

.method public static openURL(Ljava/lang/String;)I
    .registers 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/high16 p0, 0x48080000  # 139264.0f

    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-object p0, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    invoke-virtual {p0, v0}, Lorg/libsdl/app/SDLActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1e

    const/4 p0, 0x0

    return p0

    :catch_1e
    const/4 p0, -0x1

    return p0
.end method

.method public static requestPermission(Ljava/lang/String;I)V
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-ge v0, v2, :cond_b

    invoke-static {p1, v1}, Lorg/libsdl/app/SDLActivity;->nativePermissionResult(IZ)V

    return-void

    :cond_b
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_20

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_23

    :cond_20
    invoke-static {p1, v1}, Lorg/libsdl/app/SDLActivity;->nativePermissionResult(IZ)V

    :goto_23
    return-void
.end method

.method public static sendMessage(II)Z
    .registers 3

    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/libsdl/app/SDLActivity;->sendCommand(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static setActivityTitle(Ljava/lang/String;)Z
    .registers 3

    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lorg/libsdl/app/SDLActivity;->sendCommand(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static setCustomCursor(I)Z
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x18

    if-lt v0, v2, :cond_1a

    :try_start_7
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSurface:Lorg/libsdl/app/SDLSurface;

    sget-object v2, Lorg/libsdl/app/SDLActivity;->mCursors:Ljava/util/Hashtable;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/PointerIcon;

    invoke-virtual {v0, p0}, Lorg/libsdl/app/SDLSurface;->setPointerIcon(Landroid/view/PointerIcon;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_18} :catch_1a

    const/4 p0, 0x1

    return p0

    :catch_1a
    :cond_1a
    return v1
.end method

.method public static setOrientation(IIZLjava/lang/String;)V
    .registers 5

    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/libsdl/app/SDLActivity;->setOrientationBis(IIZLjava/lang/String;)V

    :cond_7
    return-void
.end method

.method public static setRelativeMouseEnabled(Z)Z
    .registers 2

    if-eqz p0, :cond_a

    invoke-static {}, Lorg/libsdl/app/SDLActivity;->supportsRelativeMouse()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getMotionListener()Lorg/libsdl/app/SDLGenericMotionListener_API12;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/libsdl/app/SDLGenericMotionListener_API12;->setRelativeMouseEnabled(Z)Z

    move-result p0

    return p0
.end method

.method public static setSurfaceViewFormat(I)V
    .registers 3

    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p0}, Lorg/libsdl/app/SDLActivity;->sendCommand(ILjava/lang/Object;)Z

    return-void
.end method

.method public static setSystemCursor(I)Z
    .registers 4

    const/16 v0, 0x3ec

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_3c

    const/4 v0, 0x0

    goto :goto_25

    :pswitch_8  #0xb
    const/16 v0, 0x3ea

    goto :goto_25

    :pswitch_b  #0xa
    const/16 v0, 0x3f4

    goto :goto_25

    :pswitch_e  #0x9
    const/16 v0, 0x3fc

    goto :goto_25

    :pswitch_11  #0x8
    const/16 v0, 0x3f7

    goto :goto_25

    :pswitch_14  #0x7
    const/16 v0, 0x3f6

    goto :goto_25

    :pswitch_17  #0x6
    const/16 v0, 0x3f8

    goto :goto_25

    :pswitch_1a  #0x5
    const/16 v0, 0x3f9

    goto :goto_25

    :pswitch_1d  #0x3
    const/16 v0, 0x3ef

    goto :goto_25

    :pswitch_20  #0x1
    const/16 v0, 0x3f0

    goto :goto_25

    :pswitch_23  #0x0
    const/16 v0, 0x3e8

    :goto_25
    :pswitch_25  #0x2, 0x4
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt p0, v2, :cond_3a

    :try_start_2b
    sget-object p0, Lorg/libsdl/app/SDLActivity;->mSurface:Lorg/libsdl/app/SDLSurface;

    invoke-static {}, Lorg/libsdl/app/SDL;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/libsdl/app/SDLSurface;->setPointerIcon(Landroid/view/PointerIcon;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_38} :catch_39

    goto :goto_3a

    :catch_39
    return v1

    :cond_3a
    :goto_3a
    const/4 p0, 0x1

    return p0

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_23  #00000000
        :pswitch_20  #00000001
        :pswitch_25  #00000002
        :pswitch_1d  #00000003
        :pswitch_25  #00000004
        :pswitch_1a  #00000005
        :pswitch_17  #00000006
        :pswitch_14  #00000007
        :pswitch_11  #00000008
        :pswitch_e  #00000009
        :pswitch_b  #0000000a
        :pswitch_8  #0000000b
    .end packed-switch
.end method

.method public static setWindowStyle(Z)V
    .registers 3

    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Lorg/libsdl/app/SDLActivity;->sendCommand(ILjava/lang/Object;)Z

    return-void
.end method

.method public static shouldMinimizeOnFocusLoss()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method public static showTextInput(IIII)Z
    .registers 6

    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    iget-object v0, v0, Lorg/libsdl/app/SDLActivity;->commandHandler:Landroid/os/Handler;

    new-instance v1, Lorg/libsdl/app/SDLActivity$ShowTextInputTask;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/libsdl/app/SDLActivity$ShowTextInputTask;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public static supportsRelativeMouse()Z
    .registers 3

    invoke-static {}, Lorg/libsdl/app/SDLActivity;->isChromebook()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1b

    if-ge v0, v2, :cond_15

    invoke-static {}, Lorg/libsdl/app/SDLActivity;->isDeXMode()Z

    move-result v0

    if-eqz v0, :cond_15

    return v1

    :cond_15
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getMotionListener()Lorg/libsdl/app/SDLGenericMotionListener_API12;

    move-result-object v0

    invoke-virtual {v0}, Lorg/libsdl/app/SDLGenericMotionListener_API12;->supportsRelativeMouse()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5

    sget-boolean v0, Lorg/libsdl/app/SDLActivity;->mBrokenLibraries:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v2, 0x19

    if-eq v0, v2, :cond_24

    const/16 v2, 0x18

    if-eq v0, v2, :cond_24

    const/16 v2, 0x1b

    if-eq v0, v2, :cond_24

    const/16 v2, 0xa8

    if-eq v0, v2, :cond_24

    const/16 v2, 0xa9

    if-ne v0, v2, :cond_1f

    goto :goto_24

    :cond_1f
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_24
    :goto_24
    return v1
.end method

.method protected getArguments()[Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method protected getLibraries()[Ljava/lang/String;
    .registers 4

    const-string v0, "hidapi"

    const-string v1, "SDL2"

    const-string v2, "main"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getMainFunction()Ljava/lang/String;
    .registers 2

    const-string v0, "SDL_main"

    return-object v0
.end method

.method protected getMainSharedObject()Ljava/lang/String;
    .registers 4

    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    invoke-virtual {v0}, Lorg/libsdl/app/SDLActivity;->getLibraries()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_25

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lib"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".so"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_27

    :cond_25
    const-string v0, "libmain.so"

    :goto_27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadLibraries()V
    .registers 5

    invoke-virtual {p0}, Lorg/libsdl/app/SDLActivity;->getLibraries()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_10

    aget-object v3, v0, v2

    invoke-static {v3}, Lorg/libsdl/app/SDL;->loadLibrary(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_10
    return-void
.end method

.method protected messageboxCreateAndShow(Landroid/os/Bundle;)V
    .registers 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "colors"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_1c

    aget v6, v2, v5

    aget v7, v2, v4

    aget v8, v2, v3

    const/4 v8, 0x3

    aget v8, v2, v8

    const/4 v9, 0x4

    aget v2, v2, v9

    goto :goto_1f

    :cond_1c
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1f
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    const-string v9, "title"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog;->setCancelable(Z)V

    new-instance v9, Lorg/libsdl/app/SDLActivity$4;

    invoke-direct {v9, v0}, Lorg/libsdl/app/SDLActivity$4;-><init>(Lorg/libsdl/app/SDLActivity;)V

    invoke-virtual {v2, v9}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v10, 0x11

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setGravity(I)V

    const-string v11, "message"

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v7, :cond_54

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_54
    const-string v11, "buttonFlags"

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v11

    const-string v12, "buttonIds"

    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v12

    const-string v13, "buttonTexts"

    invoke-virtual {v1, v13}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v13, Landroid/util/SparseArray;

    invoke-direct {v13}, Landroid/util/SparseArray;-><init>()V

    new-instance v14, Landroid/widget/LinearLayout;

    invoke-direct {v14, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v14, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v14, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    :goto_76
    array-length v10, v1

    if-ge v5, v10, :cond_c5

    new-instance v10, Landroid/widget/Button;

    invoke-direct {v10, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    aget v15, v12, v5

    new-instance v3, Lorg/libsdl/app/SDLActivity$5;

    invoke-direct {v3, v0, v15, v2}, Lorg/libsdl/app/SDLActivity$5;-><init>(Lorg/libsdl/app/SDLActivity;ILandroid/app/AlertDialog;)V

    invoke-virtual {v10, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    aget v3, v11, v5

    if-eqz v3, :cond_a2

    aget v3, v11, v5

    and-int/2addr v3, v4

    if-eqz v3, :cond_96

    const/16 v3, 0x42

    invoke-virtual {v13, v3, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_96
    aget v3, v11, v5

    const/4 v15, 0x2

    and-int/2addr v3, v15

    if-eqz v3, :cond_a3

    const/16 v3, 0x6f

    invoke-virtual {v13, v3, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_a3

    :cond_a2
    const/4 v15, 0x2

    :cond_a3
    :goto_a3
    aget-object v3, v1, v5

    invoke-virtual {v10, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    if-eqz v7, :cond_ad

    invoke-virtual {v10, v7}, Landroid/widget/Button;->setTextColor(I)V

    :cond_ad
    if-eqz v8, :cond_be

    invoke-virtual {v10}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_b9

    invoke-virtual {v10, v8}, Landroid/widget/Button;->setBackgroundColor(I)V

    goto :goto_be

    :cond_b9
    sget-object v15, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v8, v15}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_be
    :goto_be
    invoke-virtual {v14, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v5, v5, 0x1

    const/4 v3, 0x2

    goto :goto_76

    :cond_c5
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    if-eqz v6, :cond_d8

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    :cond_d8
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    new-instance v1, Lorg/libsdl/app/SDLActivity$6;

    invoke-direct {v1, v0, v13}, Lorg/libsdl/app/SDLActivity$6;-><init>(Lorg/libsdl/app/SDLActivity;Landroid/util/SparseArray;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public messageboxShowMessageBox(ILjava/lang/String;Ljava/lang/String;[I[I[Ljava/lang/String;[I)I
    .registers 12

    iget-object v0, p0, Lorg/libsdl/app/SDLActivity;->messageboxSelection:[I

    const/4 v1, 0x0

    const/4 v2, -0x1

    aput v2, v0, v1

    array-length v0, p4

    array-length v3, p5

    if-eq v0, v3, :cond_f

    array-length v0, p5

    array-length v3, p6

    if-eq v0, v3, :cond_f

    return v2

    :cond_f
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "flags"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "title"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "message"

    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "buttonFlags"

    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string p1, "buttonIds"

    invoke-virtual {v0, p1, p5}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string p1, "buttonTexts"

    invoke-virtual {v0, p1, p6}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string p1, "colors"

    invoke-virtual {v0, p1, p7}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    new-instance p1, Lorg/libsdl/app/SDLActivity$3;

    invoke-direct {p1, p0, v0}, Lorg/libsdl/app/SDLActivity$3;-><init>(Lorg/libsdl/app/SDLActivity;Landroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Lorg/libsdl/app/SDLActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lorg/libsdl/app/SDLActivity;->messageboxSelection:[I

    monitor-enter p1

    :try_start_42
    iget-object p2, p0, Lorg/libsdl/app/SDLActivity;->messageboxSelection:[I

    invoke-virtual {p2}, Ljava/lang/Object;->wait()V
    :try_end_47
    .catch Ljava/lang/InterruptedException; {:try_start_42 .. :try_end_47} :catch_4f
    .catchall {:try_start_42 .. :try_end_47} :catchall_4d

    :try_start_47
    monitor-exit p1
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_4d

    iget-object p1, p0, Lorg/libsdl/app/SDLActivity;->messageboxSelection:[I

    aget p1, p1, v1

    return p1

    :catchall_4d
    move-exception p2

    goto :goto_55

    :catch_4f
    move-exception p2

    :try_start_50
    invoke-virtual {p2}, Ljava/lang/InterruptedException;->printStackTrace()V

    monitor-exit p1

    return v2

    :goto_55
    monitor-exit p1
    :try_end_56
    .catchall {:try_start_50 .. :try_end_56} :catchall_4d

    throw p2
.end method

.method public onBackPressed()V
    .registers 3

    const-string v0, "SDL_ANDROID_TRAP_BACK_BUTTON"

    invoke-static {v0}, Lorg/libsdl/app/SDLActivity;->nativeGetHint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    return-void

    :cond_11
    invoke-virtual {p0}, Lorg/libsdl/app/SDLActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_1a
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    const-string v0, "SDL"

    const-string v1, "onConfigurationChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    sget-boolean v0, Lorg/libsdl/app/SDLActivity;->mBrokenLibraries:Z

    if-eqz v0, :cond_f

    return-void

    :cond_f
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mCurrentLocale:Ljava/util/Locale;

    if-eqz v0, :cond_1b

    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    :cond_1b
    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sput-object p1, Lorg/libsdl/app/SDLActivity;->mCurrentLocale:Ljava/util/Locale;

    invoke-static {}, Lorg/libsdl/app/SDLActivity;->onNativeLocaleChanged()V

    :cond_22
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SDL"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Model: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "onCreate()"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    :try_start_36
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    const-string v0, "SDLActivity"

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_3f} :catch_40

    goto :goto_59

    :catch_40
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "modify thread properties failed "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_59
    const/4 p1, 0x1

    const/4 v0, 0x0

    :try_start_5b
    invoke-virtual {p0}, Lorg/libsdl/app/SDLActivity;->loadLibraries()V

    sput-boolean v0, Lorg/libsdl/app/SDLActivity;->mBrokenLibraries:Z
    :try_end_60
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_5b .. :try_end_60} :catch_74
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_60} :catch_63

    const-string p1, ""

    goto :goto_84

    :catch_63
    move-exception v2

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sput-boolean p1, Lorg/libsdl/app/SDLActivity;->mBrokenLibraries:Z

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_84

    :catch_74
    move-exception v2

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sput-boolean p1, Lorg/libsdl/app/SDLActivity;->mBrokenLibraries:Z

    invoke-virtual {v2}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_84
    sget-boolean v2, Lorg/libsdl/app/SDLActivity;->mBrokenLibraries:Z

    if-eqz v2, :cond_d2

    sput-object p0, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "An error occurred while trying to start the application. Please try again and/or reinstall."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "line.separator"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string p1, "SDL Error"

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance p1, Lorg/libsdl/app/SDLActivity$1;

    invoke-direct {p1, p0}, Lorg/libsdl/app/SDLActivity$1;-><init>(Lorg/libsdl/app/SDLActivity;)V

    const-string v2, "Exit"

    invoke-virtual {v1, v2, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_d2
    invoke-static {}, Lorg/libsdl/app/SDL;->setupJNI()V

    invoke-static {}, Lorg/libsdl/app/SDL;->initialize()V

    sput-object p0, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    invoke-static {p0}, Lorg/libsdl/app/SDL;->setContext(Landroid/content/Context;)V

    new-instance p1, Lorg/libsdl/app/SDLClipboardHandler;

    invoke-direct {p1}, Lorg/libsdl/app/SDLClipboardHandler;-><init>()V

    sput-object p1, Lorg/libsdl/app/SDLActivity;->mClipboardHandler:Lorg/libsdl/app/SDLClipboardHandler;

    new-instance p1, Lorg/libsdl/app/SDLSurface;

    invoke-virtual {p0}, Lorg/libsdl/app/SDLActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-direct {p1, v2}, Lorg/libsdl/app/SDLSurface;-><init>(Landroid/content/Context;)V

    sput-object p1, Lorg/libsdl/app/SDLActivity;->mSurface:Lorg/libsdl/app/SDLSurface;

    new-instance p1, Landroid/widget/RelativeLayout;

    invoke-direct {p1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    sput-object p1, Lorg/libsdl/app/SDLActivity;->mLayout:Landroid/view/ViewGroup;

    sget-object v2, Lorg/libsdl/app/SDLActivity;->mSurface:Lorg/libsdl/app/SDLSurface;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getCurrentOrientation()I

    move-result p1

    sput p1, Lorg/libsdl/app/SDLActivity;->mCurrentOrientation:I

    invoke-static {p1}, Lorg/libsdl/app/SDLActivity;->onNativeOrientationChanged(I)V

    :try_start_104
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-ge p1, v2, :cond_11b

    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sput-object p1, Lorg/libsdl/app/SDLActivity;->mCurrentLocale:Ljava/util/Locale;

    goto :goto_133

    :cond_11b
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p1

    sput-object p1, Lorg/libsdl/app/SDLActivity;->mCurrentLocale:Ljava/util/Locale;
    :try_end_131
    .catch Ljava/lang/Exception; {:try_start_104 .. :try_end_131} :catch_132

    goto :goto_133

    :catch_132
    nop

    :goto_133
    sget-object p1, Lorg/libsdl/app/SDLActivity;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lorg/libsdl/app/SDLActivity;->setContentView(Landroid/view/View;)V

    invoke-static {v0}, Lorg/libsdl/app/SDLActivity;->setWindowStyle(Z)V

    invoke-virtual {p0}, Lorg/libsdl/app/SDLActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    invoke-virtual {p0}, Lorg/libsdl/app/SDLActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_173

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_173

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_173

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got filename: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lorg/libsdl/app/SDLActivity;->onNativeDropFile(Ljava/lang/String;)V

    :cond_173
    return-void
.end method

.method protected onDestroy()V
    .registers 5

    const-string v0, "SDL"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lorg/libsdl/app/SDLActivity;->mHIDDeviceManager:Lorg/libsdl/app/HIDDeviceManager;

    if-eqz v1, :cond_11

    invoke-static {v1}, Lorg/libsdl/app/HIDDeviceManager;->release(Lorg/libsdl/app/HIDDeviceManager;)V

    const/4 v1, 0x0

    sput-object v1, Lorg/libsdl/app/SDLActivity;->mHIDDeviceManager:Lorg/libsdl/app/HIDDeviceManager;

    :cond_11
    sget-boolean v1, Lorg/libsdl/app/SDLActivity;->mBrokenLibraries:Z

    if-eqz v1, :cond_19

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void

    :cond_19
    sget-object v1, Lorg/libsdl/app/SDLActivity;->mSDLThread:Ljava/lang/Thread;

    if-eqz v1, :cond_3b

    invoke-static {}, Lorg/libsdl/app/SDLActivity;->nativeSendQuit()V

    :try_start_20
    sget-object v1, Lorg/libsdl/app/SDLActivity;->mSDLThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_25} :catch_26

    goto :goto_3b

    :catch_26
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Problem stopping SDLThread: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    :goto_3b
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->nativeQuit()V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onLowMemory()V
    .registers 3

    const-string v0, "SDL"

    const-string v1, "onLowMemory()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    sget-boolean v0, Lorg/libsdl/app/SDLActivity;->mBrokenLibraries:Z

    if-eqz v0, :cond_f

    return-void

    :cond_f
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->nativeLowMemory()V

    return-void
.end method

.method protected onPause()V
    .registers 3

    const-string v0, "SDL"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    sget-object v0, Lorg/libsdl/app/SDLActivity;->mHIDDeviceManager:Lorg/libsdl/app/HIDDeviceManager;

    if-eqz v0, :cond_12

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/libsdl/app/HIDDeviceManager;->setFrozen(Z)V

    :cond_12
    sget-boolean v0, Lorg/libsdl/app/SDLActivity;->mHasMultiWindow:Z

    if-nez v0, :cond_19

    invoke-virtual {p0}, Lorg/libsdl/app/SDLActivity;->pauseNativeThread()V

    :cond_19
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 5

    array-length p2, p3

    const/4 v0, 0x0

    if-lez p2, :cond_9

    aget p2, p3, v0

    if-nez p2, :cond_9

    const/4 v0, 0x1

    :cond_9
    invoke-static {p1, v0}, Lorg/libsdl/app/SDLActivity;->nativePermissionResult(IZ)V

    return-void
.end method

.method protected onResume()V
    .registers 3

    const-string v0, "SDL"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    sget-object v0, Lorg/libsdl/app/SDLActivity;->mHIDDeviceManager:Lorg/libsdl/app/HIDDeviceManager;

    if-eqz v0, :cond_12

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/libsdl/app/HIDDeviceManager;->setFrozen(Z)V

    :cond_12
    sget-boolean v0, Lorg/libsdl/app/SDLActivity;->mHasMultiWindow:Z

    if-nez v0, :cond_19

    invoke-virtual {p0}, Lorg/libsdl/app/SDLActivity;->resumeNativeThread()V

    :cond_19
    return-void
.end method

.method protected onStart()V
    .registers 3

    const-string v0, "SDL"

    const-string v1, "onStart()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    sget-boolean v0, Lorg/libsdl/app/SDLActivity;->mHasMultiWindow:Z

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lorg/libsdl/app/SDLActivity;->resumeNativeThread()V

    :cond_11
    return-void
.end method

.method protected onStop()V
    .registers 3

    const-string v0, "SDL"

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    sget-boolean v0, Lorg/libsdl/app/SDLActivity;->mHasMultiWindow:Z

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lorg/libsdl/app/SDLActivity;->pauseNativeThread()V

    :cond_11
    return-void
.end method

.method public onSystemUiVisibilityChange(I)V
    .registers 5

    sget-boolean v0, Lorg/libsdl/app/SDLActivity;->mFullscreenModeActive:Z

    if-eqz v0, :cond_26

    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_c

    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_26

    :cond_c
    invoke-virtual {p0}, Lorg/libsdl/app/SDLActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_26

    iget-object v0, p0, Lorg/libsdl/app/SDLActivity;->rehideSystemUi:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lorg/libsdl/app/SDLActivity;->rehideSystemUi:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_26
    return-void
.end method

.method protected onUnhandledMessage(ILjava/lang/Object;)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public onWindowFocusChanged(Z)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWindowFocusChanged(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SDL"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lorg/libsdl/app/SDLActivity;->mBrokenLibraries:Z

    if-eqz v0, :cond_1e

    return-void

    :cond_1e
    sput-boolean p1, Lorg/libsdl/app/SDLActivity;->mHasFocus:Z

    if-eqz p1, :cond_35

    sget-object p1, Lorg/libsdl/app/SDLActivity$NativeState;->RESUMED:Lorg/libsdl/app/SDLActivity$NativeState;

    sput-object p1, Lorg/libsdl/app/SDLActivity;->mNextNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getMotionListener()Lorg/libsdl/app/SDLGenericMotionListener_API12;

    move-result-object p1

    invoke-virtual {p1}, Lorg/libsdl/app/SDLGenericMotionListener_API12;->reclaimRelativeMouseModeIfNeeded()V

    invoke-static {}, Lorg/libsdl/app/SDLActivity;->handleNativeState()V

    const/4 p1, 0x1

    invoke-static {p1}, Lorg/libsdl/app/SDLActivity;->nativeFocusChanged(Z)V

    goto :goto_44

    :cond_35
    const/4 p1, 0x0

    invoke-static {p1}, Lorg/libsdl/app/SDLActivity;->nativeFocusChanged(Z)V

    sget-boolean p1, Lorg/libsdl/app/SDLActivity;->mHasMultiWindow:Z

    if-nez p1, :cond_44

    sget-object p1, Lorg/libsdl/app/SDLActivity$NativeState;->PAUSED:Lorg/libsdl/app/SDLActivity$NativeState;

    sput-object p1, Lorg/libsdl/app/SDLActivity;->mNextNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    invoke-static {}, Lorg/libsdl/app/SDLActivity;->handleNativeState()V

    :cond_44
    :goto_44
    return-void
.end method

.method protected pauseNativeThread()V
    .registers 2

    sget-object v0, Lorg/libsdl/app/SDLActivity$NativeState;->PAUSED:Lorg/libsdl/app/SDLActivity$NativeState;

    sput-object v0, Lorg/libsdl/app/SDLActivity;->mNextNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    const/4 v0, 0x0

    sput-boolean v0, Lorg/libsdl/app/SDLActivity;->mIsResumedCalled:Z

    sget-boolean v0, Lorg/libsdl/app/SDLActivity;->mBrokenLibraries:Z

    if-eqz v0, :cond_c

    return-void

    :cond_c
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->handleNativeState()V

    return-void
.end method

.method public pressBackButton()V
    .registers 2

    new-instance v0, Lorg/libsdl/app/SDLActivity$2;

    invoke-direct {v0, p0}, Lorg/libsdl/app/SDLActivity$2;-><init>(Lorg/libsdl/app/SDLActivity;)V

    invoke-virtual {p0, v0}, Lorg/libsdl/app/SDLActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected resumeNativeThread()V
    .registers 2

    sget-object v0, Lorg/libsdl/app/SDLActivity$NativeState;->RESUMED:Lorg/libsdl/app/SDLActivity$NativeState;

    sput-object v0, Lorg/libsdl/app/SDLActivity;->mNextNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    const/4 v0, 0x1

    sput-boolean v0, Lorg/libsdl/app/SDLActivity;->mIsResumedCalled:Z

    sget-boolean v0, Lorg/libsdl/app/SDLActivity;->mBrokenLibraries:Z

    if-eqz v0, :cond_c

    return-void

    :cond_c
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->handleNativeState()V

    return-void
.end method

.method sendCommand(ILjava/lang/Object;)Z
    .registers 8

    iget-object v0, p0, Lorg/libsdl/app/SDLActivity;->commandHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lorg/libsdl/app/SDLActivity;->commandHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_73

    const/4 v1, 0x2

    if-ne p1, v1, :cond_73

    instance-of p1, p2, Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz p1, :cond_52

    const-string p1, "window"

    invoke-virtual {p0, p1}, Lorg/libsdl/app/SDLActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p1, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget p1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    sget-object v3, Lorg/libsdl/app/SDLActivity;->mSurface:Lorg/libsdl/app/SDLSurface;

    invoke-virtual {v3}, Lorg/libsdl/app/SDLSurface;->getWidth()I

    move-result v3

    const/4 v4, 0x1

    if-ne p1, v3, :cond_48

    iget p1, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    sget-object v2, Lorg/libsdl/app/SDLActivity;->mSurface:Lorg/libsdl/app/SDLSurface;

    invoke-virtual {v2}, Lorg/libsdl/app/SDLSurface;->getHeight()I

    move-result v2

    if-ne p1, v2, :cond_48

    const/4 v1, 0x1

    :cond_48
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v4, :cond_52

    xor-int/lit8 v1, v1, 0x1

    :cond_52
    if-eqz v1, :cond_73

    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_73

    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    monitor-enter p1

    :try_start_5f
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContext()Landroid/content/Context;

    move-result-object p2

    const-wide/16 v1, 0x1f4

    invoke-virtual {p2, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_68
    .catch Ljava/lang/InterruptedException; {:try_start_5f .. :try_end_68} :catch_6b
    .catchall {:try_start_5f .. :try_end_68} :catchall_69

    goto :goto_6f

    :catchall_69
    move-exception p2

    goto :goto_71

    :catch_6b
    move-exception p2

    :try_start_6c
    invoke-virtual {p2}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_6f
    monitor-exit p1

    goto :goto_73

    :goto_71
    monitor-exit p1
    :try_end_72
    .catchall {:try_start_6c .. :try_end_72} :catchall_69

    throw p2

    :cond_73
    :goto_73
    return v0
.end method

.method public setOrientationBis(IIZLjava/lang/String;)V
    .registers 14

    const-string v0, "LandscapeRight"

    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x6

    const-string v3, "LandscapeLeft"

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eqz v1, :cond_15

    invoke-virtual {p4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v0, 0x6

    goto :goto_27

    :cond_15
    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x0

    goto :goto_27

    :cond_1d
    invoke-virtual {p4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_26

    const/16 v0, 0x8

    goto :goto_27

    :cond_26
    const/4 v0, -0x1

    :goto_27
    const-string v1, "Portrait"

    invoke-virtual {p4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v6, 0x7

    const-string v7, "PortraitUpsideDown"

    const/4 v8, 0x1

    if-eqz v3, :cond_3b

    invoke-virtual {p4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3b

    const/4 v1, 0x7

    goto :goto_4d

    :cond_3b
    invoke-virtual {p4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_43

    const/4 v1, 0x1

    goto :goto_4d

    :cond_43
    invoke-virtual {p4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4c

    const/16 v1, 0x9

    goto :goto_4d

    :cond_4c
    const/4 v1, -0x1

    :goto_4d
    if-eq v0, v5, :cond_51

    const/4 v3, 0x1

    goto :goto_52

    :cond_51
    const/4 v3, 0x0

    :goto_52
    if-eq v1, v5, :cond_55

    const/4 v4, 0x1

    :cond_55
    const/16 v5, 0xa

    if-nez v4, :cond_64

    if-nez v3, :cond_64

    if-eqz p3, :cond_5e

    goto :goto_7a

    :cond_5e
    if-le p1, p2, :cond_61

    goto :goto_62

    :cond_61
    const/4 v2, 0x7

    :goto_62
    move v5, v2

    goto :goto_7a

    :cond_64
    if-eqz p3, :cond_6e

    if-eqz v4, :cond_6b

    if-eqz v3, :cond_6b

    goto :goto_7a

    :cond_6b
    if-eqz v3, :cond_78

    goto :goto_79

    :cond_6e
    if-eqz v4, :cond_75

    if-eqz v3, :cond_75

    if-le p1, p2, :cond_78

    goto :goto_79

    :cond_75
    if-eqz v3, :cond_78

    goto :goto_79

    :cond_78
    move v0, v1

    :goto_79
    move v5, v0

    :goto_7a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOrientation() requestedOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " height="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " resizable="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " hint="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SDL"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    invoke-virtual {p1, v5}, Lorg/libsdl/app/SDLActivity;->setRequestedOrientation(I)V

    return-void
.end method

.method public superOnBackPressed()V
    .registers 1

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method
