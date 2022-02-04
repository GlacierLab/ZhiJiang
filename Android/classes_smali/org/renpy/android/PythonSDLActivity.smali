.class public Lorg/renpy/android/PythonSDLActivity;
.super Lorg/libsdl/app/SDLActivity;
.source "PythonSDLActivity.java"


# static fields
.field public static mActivity:Lorg/renpy/android/PythonSDLActivity;


# instance fields
.field public mActivityResultRequestCode:I

.field public mActivityResultResultCode:I

.field public mActivityResultResultData:Landroid/content/Intent;

.field mAllPacksReady:Z

.field public mFrameLayout:Landroid/widget/FrameLayout;

.field mOldProgress:J

.field public mPresplash:Landroid/widget/ImageView;

.field mProgressBar:Landroid/widget/ProgressBar;

.field public mVbox:Landroid/widget/LinearLayout;

.field resourceManager:Lorg/renpy/android/ResourceManager;

.field waitForWifiConfirmationShown:Z

.field public wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Lorg/libsdl/app/SDLActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/renpy/android/PythonSDLActivity;->mPresplash:Landroid/widget/ImageView;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/renpy/android/PythonSDLActivity;->mAllPacksReady:Z

    iput-object v0, p0, Lorg/renpy/android/PythonSDLActivity;->mProgressBar:Landroid/widget/ProgressBar;

    iput-boolean v1, p0, Lorg/renpy/android/PythonSDLActivity;->waitForWifiConfirmationShown:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/renpy/android/PythonSDLActivity;->mOldProgress:J

    iput-object v0, p0, Lorg/renpy/android/PythonSDLActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, -0x1

    iput v1, p0, Lorg/renpy/android/PythonSDLActivity;->mActivityResultRequestCode:I

    iput v1, p0, Lorg/renpy/android/PythonSDLActivity;->mActivityResultResultCode:I

    iput-object v0, p0, Lorg/renpy/android/PythonSDLActivity;->mActivityResultResultData:Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000()Landroid/view/ViewGroup;
    .registers 1

    sget-object v0, Lorg/renpy/android/PythonSDLActivity;->mLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$100()Landroid/view/ViewGroup;
    .registers 1

    sget-object v0, Lorg/renpy/android/PythonSDLActivity;->mLayout:Landroid/view/ViewGroup;

    return-object v0
.end method


# virtual methods
.method public addView(Landroid/view/View;I)V
    .registers 8

    iget-object v0, p0, Lorg/renpy/android/PythonSDLActivity;->mVbox:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, p1, p2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Lorg/renpy/android/PythonSDLActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_f} :catch_10

    return-object v0

    :catch_10
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDPI()I
    .registers 3

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lorg/renpy/android/PythonSDLActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    return v0
.end method

.method protected getLibraries()[Ljava/lang/String;
    .registers 2

    const-string v0, "renpython"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hidePresplash()V
    .registers 2

    new-instance v0, Lorg/renpy/android/PythonSDLActivity$2;

    invoke-direct {v0, p0}, Lorg/renpy/android/PythonSDLActivity$2;-><init>(Lorg/renpy/android/PythonSDLActivity;)V

    invoke-virtual {p0, v0}, Lorg/renpy/android/PythonSDLActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public native nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    iput p1, p0, Lorg/renpy/android/PythonSDLActivity;->mActivityResultRequestCode:I

    iput p2, p0, Lorg/renpy/android/PythonSDLActivity;->mActivityResultResultCode:I

    iput-object p3, p0, Lorg/renpy/android/PythonSDLActivity;->mActivityResultResultData:Landroid/content/Intent;

    invoke-super {p0, p1, p2, p3}, Lorg/libsdl/app/SDLActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 15

    const-string v0, "python"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lorg/libsdl/app/SDLActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/renpy/android/PythonSDLActivity;->mAllPacksReady:Z

    invoke-static {p1}, Lorg/renpy/android/PythonSDLActivity;->setSurfaceViewFormat(I)V

    const/4 v2, 0x0

    const-string p1, "android-presplash"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/renpy/android/PythonSDLActivity;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_3f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".jpg"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/renpy/android/PythonSDLActivity;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_3f
    const/4 p1, -0x1

    if-eqz v0, :cond_68

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/renpy/android/PythonSDLActivity;->mPresplash:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-object v1, p0, Lorg/renpy/android/PythonSDLActivity;->mPresplash:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v1, p0, Lorg/renpy/android/PythonSDLActivity;->mPresplash:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    sget-object v0, Lorg/renpy/android/PythonSDLActivity;->mLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/renpy/android/PythonSDLActivity;->mPresplash:Landroid/widget/ImageView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, p1, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_68
    iget-boolean v0, p0, Lorg/renpy/android/PythonSDLActivity;->mAllPacksReady:Z

    if-nez v0, :cond_90

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0x14

    invoke-direct {v0, p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p1, 0xc

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    new-instance p1, Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    const v2, 0x1010078

    invoke-direct {p1, p0, v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lorg/renpy/android/PythonSDLActivity;->mProgressBar:Landroid/widget/ProgressBar;

    sget-object p1, Lorg/renpy/android/PythonSDLActivity;->mLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/renpy/android/PythonSDLActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_90
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    const-string v0, "python"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lorg/libsdl/app/SDLActivity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 4

    const-string v0, "python"

    const-string v1, "onNewIntent()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lorg/renpy/android/PythonSDLActivity;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public openUrl(Ljava/lang/String;)V
    .registers 2

    invoke-static {p1}, Lorg/renpy/android/PythonSDLActivity;->openURL(Ljava/lang/String;)I

    return-void
.end method

.method public preparePython()V
    .registers 5

    const-string v0, "python"

    const-string v1, "Starting preparePython."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p0, Lorg/renpy/android/PythonSDLActivity;->mActivity:Lorg/renpy/android/PythonSDLActivity;

    new-instance v0, Lorg/renpy/android/ResourceManager;

    invoke-direct {v0, p0}, Lorg/renpy/android/ResourceManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lorg/renpy/android/PythonSDLActivity;->resourceManager:Lorg/renpy/android/ResourceManager;

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0}, Lorg/renpy/android/PythonSDLActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/renpy/android/PythonSDLActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_25

    move-object v1, v0

    :cond_25
    const-string v2, "private"

    invoke-virtual {p0}, Lorg/renpy/android/PythonSDLActivity;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/renpy/android/PythonSDLActivity;->unpackData(Ljava/lang/String;Ljava/io/File;)V

    const-string v2, "ANDROID_PRIVATE"

    invoke-virtual {p0}, Lorg/renpy/android/PythonSDLActivity;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/renpy/android/PythonSDLActivity;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ANDROID_PUBLIC"

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lorg/renpy/android/PythonSDLActivity;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ANDROID_OLD_PUBLIC"

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/renpy/android/PythonSDLActivity;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/renpy/android/PythonSDLActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_55
    invoke-virtual {p0}, Lorg/renpy/android/PythonSDLActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;
    :try_end_60
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_55 .. :try_end_60} :catch_61

    goto :goto_63

    :catch_61
    const-string v0, ""

    :goto_63
    const-string v1, "ANDROID_APK"

    invoke-virtual {p0, v1, v0}, Lorg/renpy/android/PythonSDLActivity;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lorg/renpy/android/PythonSDLActivity;->mAllPacksReady:Z

    if-nez v0, :cond_73

    const-string v0, "python"

    const-string v1, "Waiting for all packs to become ready."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_73
    monitor-enter p0

    :catch_74
    :goto_74
    :try_start_74
    iget-boolean v0, p0, Lorg/renpy/android/PythonSDLActivity;->mAllPacksReady:Z
    :try_end_76
    .catchall {:try_start_74 .. :try_end_76} :catchall_85

    if-nez v0, :cond_7c

    :try_start_78
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_7b
    .catch Ljava/lang/InterruptedException; {:try_start_78 .. :try_end_7b} :catch_74
    .catchall {:try_start_78 .. :try_end_7b} :catchall_85

    goto :goto_74

    :cond_7c
    :try_start_7c
    monitor-exit p0
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_85

    const-string v0, "python"

    const-string v1, "Finished preparePython."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_85
    move-exception v0

    :try_start_86
    monitor-exit p0
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_85

    goto :goto_89

    :goto_88
    throw v0

    :goto_89
    goto :goto_88
.end method

.method public recursiveDelete(Ljava/io/File;)V
    .registers 6

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    invoke-virtual {p0, v3}, Lorg/renpy/android/PythonSDLActivity;->recursiveDelete(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_16
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lorg/renpy/android/PythonSDLActivity;->mVbox:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 7

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/renpy/android/PythonSDLActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance p1, Landroid/widget/LinearLayout;

    invoke-direct {p1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/renpy/android/PythonSDLActivity;->mVbox:Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object p1, p0, Lorg/renpy/android/PythonSDLActivity;->mVbox:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lorg/renpy/android/PythonSDLActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lorg/renpy/android/PythonSDLActivity;->mVbox:Landroid/widget/LinearLayout;

    invoke-super {p0, p1}, Lorg/libsdl/app/SDLActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setOrientationBis(IIZLjava/lang/String;)V
    .registers 5

    return-void
.end method

.method public setWakeLock(Z)V
    .registers 5

    iget-object v0, p0, Lorg/renpy/android/PythonSDLActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_1a

    const-string v0, "power"

    invoke-virtual {p0, v0}, Lorg/renpy/android/PythonSDLActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/16 v1, 0xa

    const-string v2, "Screen On"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lorg/renpy/android/PythonSDLActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    :cond_1a
    if-eqz p1, :cond_22

    iget-object p1, p0, Lorg/renpy/android/PythonSDLActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_27

    :cond_22
    iget-object p1, p0, Lorg/renpy/android/PythonSDLActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    :goto_27
    return-void
.end method

.method public toastError(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Lorg/renpy/android/PythonSDLActivity$1;

    invoke-direct {v0, p0, p0, p1}, Lorg/renpy/android/PythonSDLActivity$1;-><init>(Lorg/renpy/android/PythonSDLActivity;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/renpy/android/PythonSDLActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    monitor-enter p0

    const-wide/16 v0, 0x3e8

    :try_start_b
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_e} :catch_11
    .catchall {:try_start_b .. :try_end_e} :catchall_f

    goto :goto_11

    :catchall_f
    move-exception p1

    goto :goto_13

    :catch_11
    :goto_11
    :try_start_11
    monitor-exit p0

    return-void

    :goto_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_f

    throw p1
.end method

.method public unpackData(Ljava/lang/String;Ljava/io/File;)V
    .registers 10

    new-instance v0, Ljava/io/File;

    const-string v1, "main.pyo"

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iget-object v0, p0, Lorg/renpy/android/PythonSDLActivity;->resourceManager:Lorg/renpy/android/ResourceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_version"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/renpy/android/ResourceManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".version"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_60

    const/16 v3, 0x40

    :try_start_43
    new-array v3, v3, [B

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/io/InputStream;->read([B)I

    move-result v5

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v3, v2, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_56} :catch_57

    goto :goto_59

    :catch_57
    const-string v6, ""

    :goto_59
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_60

    const/4 v2, 0x1

    :cond_60
    if-eqz v2, :cond_eb

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Extracting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " assets."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "python"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/File;

    const-string v4, "lib"

    invoke-direct {v2, p2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lorg/renpy/android/PythonSDLActivity;->recursiveDelete(Ljava/io/File;)V

    new-instance v2, Ljava/io/File;

    const-string v4, "renpy"

    invoke-direct {v2, p2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lorg/renpy/android/PythonSDLActivity;->recursiveDelete(Ljava/io/File;)V

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    new-instance v2, Lorg/renpy/android/AssetExtract;

    invoke-direct {v2, p0}, Lorg/renpy/android/AssetExtract;-><init>(Landroid/app/Activity;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".mp3"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/renpy/android/AssetExtract;->extractTar(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_cd

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not extract "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " data."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/renpy/android/PythonSDLActivity;->toastError(Ljava/lang/String;)V

    :cond_cd
    :try_start_cd
    new-instance p1, Ljava/io/File;

    const-string v2, ".nomedia"

    invoke-direct {p1, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_e6} :catch_e7

    goto :goto_eb

    :catch_e7
    move-exception p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_eb
    :goto_eb
    return-void
.end method

.method public vibrate(D)V
    .registers 6

    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lorg/renpy/android/PythonSDLActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    if-eqz v0, :cond_16

    const-wide v1, 0x408f400000000000L  # 1000.0

    mul-double p1, p1, v1

    double-to-int p1, p1

    int-to-long p1, p1

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_16
    return-void
.end method
