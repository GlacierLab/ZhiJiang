.class Lorg/renpy/android/PythonSDLActivity$1;
.super Ljava/lang/Object;
.source "PythonSDLActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/renpy/android/PythonSDLActivity;->toastError(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/renpy/android/PythonSDLActivity;

.field final synthetic val$msg:Ljava/lang/String;

.field final synthetic val$thisActivity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lorg/renpy/android/PythonSDLActivity;Landroid/app/Activity;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lorg/renpy/android/PythonSDLActivity$1;->this$0:Lorg/renpy/android/PythonSDLActivity;

    iput-object p2, p0, Lorg/renpy/android/PythonSDLActivity$1;->val$thisActivity:Landroid/app/Activity;

    iput-object p3, p0, Lorg/renpy/android/PythonSDLActivity$1;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lorg/renpy/android/PythonSDLActivity$1;->val$thisActivity:Landroid/app/Activity;

    iget-object v1, p0, Lorg/renpy/android/PythonSDLActivity$1;->val$msg:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
