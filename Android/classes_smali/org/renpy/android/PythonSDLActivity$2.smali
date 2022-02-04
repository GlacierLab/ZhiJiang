.class Lorg/renpy/android/PythonSDLActivity$2;
.super Ljava/lang/Object;
.source "PythonSDLActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/renpy/android/PythonSDLActivity;->hidePresplash()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/renpy/android/PythonSDLActivity;


# direct methods
.method constructor <init>(Lorg/renpy/android/PythonSDLActivity;)V
    .registers 2

    iput-object p1, p0, Lorg/renpy/android/PythonSDLActivity$2;->this$0:Lorg/renpy/android/PythonSDLActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    sget-object v0, Lorg/renpy/android/PythonSDLActivity;->mActivity:Lorg/renpy/android/PythonSDLActivity;

    iget-object v0, v0, Lorg/renpy/android/PythonSDLActivity;->mPresplash:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_27

    sget-object v0, Lorg/renpy/android/PythonSDLActivity;->mActivity:Lorg/renpy/android/PythonSDLActivity;

    invoke-static {}, Lorg/renpy/android/PythonSDLActivity;->access$000()Landroid/view/ViewGroup;

    move-result-object v0

    sget-object v2, Lorg/renpy/android/PythonSDLActivity;->mActivity:Lorg/renpy/android/PythonSDLActivity;

    iget-object v2, v2, Lorg/renpy/android/PythonSDLActivity;->mPresplash:Landroid/widget/ImageView;

    sget-object v5, Lorg/renpy/android/PythonSDLActivity;->mActivity:Lorg/renpy/android/PythonSDLActivity;

    const v6, 0x7f010001

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    const v6, 0x8

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object v0, Lorg/renpy/android/PythonSDLActivity;->mActivity:Lorg/renpy/android/PythonSDLActivity;

    iput-object v1, v0, Lorg/renpy/android/PythonSDLActivity;->mPresplash:Landroid/widget/ImageView;

    :cond_27
    sget-object v0, Lorg/renpy/android/PythonSDLActivity;->mActivity:Lorg/renpy/android/PythonSDLActivity;

    iget-object v0, v0, Lorg/renpy/android/PythonSDLActivity;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_3e

    sget-object v0, Lorg/renpy/android/PythonSDLActivity;->mActivity:Lorg/renpy/android/PythonSDLActivity;

    invoke-static {}, Lorg/renpy/android/PythonSDLActivity;->access$100()Landroid/view/ViewGroup;

    move-result-object v0

    sget-object v2, Lorg/renpy/android/PythonSDLActivity;->mActivity:Lorg/renpy/android/PythonSDLActivity;

    iget-object v2, v2, Lorg/renpy/android/PythonSDLActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    sget-object v0, Lorg/renpy/android/PythonSDLActivity;->mActivity:Lorg/renpy/android/PythonSDLActivity;

    iput-object v1, v0, Lorg/renpy/android/PythonSDLActivity;->mProgressBar:Landroid/widget/ProgressBar;

    :cond_3e
    return-void
.end method
