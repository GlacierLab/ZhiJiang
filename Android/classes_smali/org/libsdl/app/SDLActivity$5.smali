.class Lorg/libsdl/app/SDLActivity$5;
.super Ljava/lang/Object;
.source "SDLActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/libsdl/app/SDLActivity;->messageboxCreateAndShow(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/libsdl/app/SDLActivity;

.field final synthetic val$dialog:Landroid/app/AlertDialog;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lorg/libsdl/app/SDLActivity;ILandroid/app/AlertDialog;)V
    .registers 4

    iput-object p1, p0, Lorg/libsdl/app/SDLActivity$5;->this$0:Lorg/libsdl/app/SDLActivity;

    iput p2, p0, Lorg/libsdl/app/SDLActivity$5;->val$id:I

    iput-object p3, p0, Lorg/libsdl/app/SDLActivity$5;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object p1, p0, Lorg/libsdl/app/SDLActivity$5;->this$0:Lorg/libsdl/app/SDLActivity;

    iget-object p1, p1, Lorg/libsdl/app/SDLActivity;->messageboxSelection:[I

    iget v0, p0, Lorg/libsdl/app/SDLActivity$5;->val$id:I

    const/4 v1, 0x0

    aput v0, p1, v1

    iget-object p1, p0, Lorg/libsdl/app/SDLActivity$5;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
