.class Lorg/libsdl/app/SDLActivity$ShowTextInputTask;
.super Ljava/lang/Object;
.source "SDLActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/libsdl/app/SDLActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ShowTextInputTask"
.end annotation


# static fields
.field static final HEIGHT_PADDING:I = 0xf


# instance fields
.field public h:I

.field public w:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(IIII)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/libsdl/app/SDLActivity$ShowTextInputTask;->x:I

    iput p2, p0, Lorg/libsdl/app/SDLActivity$ShowTextInputTask;->y:I

    iput p3, p0, Lorg/libsdl/app/SDLActivity$ShowTextInputTask;->w:I

    iput p4, p0, Lorg/libsdl/app/SDLActivity$ShowTextInputTask;->h:I

    if-gtz p3, :cond_10

    const/4 p1, 0x1

    iput p1, p0, Lorg/libsdl/app/SDLActivity$ShowTextInputTask;->w:I

    :cond_10
    iget p1, p0, Lorg/libsdl/app/SDLActivity$ShowTextInputTask;->h:I

    add-int/lit8 p1, p1, 0xf

    if-gtz p1, :cond_1a

    const/16 p1, -0xe

    iput p1, p0, Lorg/libsdl/app/SDLActivity$ShowTextInputTask;->h:I

    :cond_1a
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lorg/libsdl/app/SDLActivity$ShowTextInputTask;->w:I

    iget v2, p0, Lorg/libsdl/app/SDLActivity$ShowTextInputTask;->h:I

    add-int/lit8 v2, v2, 0xf

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget v1, p0, Lorg/libsdl/app/SDLActivity$ShowTextInputTask;->x:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v1, p0, Lorg/libsdl/app/SDLActivity$ShowTextInputTask;->y:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sget-object v1, Lorg/libsdl/app/SDLActivity;->mTextEdit:Landroid/view/View;

    if-nez v1, :cond_2a

    new-instance v1, Lorg/libsdl/app/DummyEdit;

    invoke-static {}, Lorg/libsdl/app/SDL;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/libsdl/app/DummyEdit;-><init>(Landroid/content/Context;)V

    sput-object v1, Lorg/libsdl/app/SDLActivity;->mTextEdit:Landroid/view/View;

    sget-object v1, Lorg/libsdl/app/SDLActivity;->mLayout:Landroid/view/ViewGroup;

    sget-object v2, Lorg/libsdl/app/SDLActivity;->mTextEdit:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2f

    :cond_2a
    sget-object v1, Lorg/libsdl/app/SDLActivity;->mTextEdit:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_2f
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mTextEdit:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget-object v0, Lorg/libsdl/app/SDLActivity;->mTextEdit:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    invoke-static {}, Lorg/libsdl/app/SDL;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    sget-object v2, Lorg/libsdl/app/SDLActivity;->mTextEdit:Landroid/view/View;

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    const/4 v0, 0x1

    sput-boolean v0, Lorg/libsdl/app/SDLActivity;->mScreenKeyboardShown:Z

    return-void
.end method
