.class Lorg/libsdl/app/SDLInputConnection;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "SDLActivity.java"


# direct methods
.method public constructor <init>(Landroid/view/View;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    return-void
.end method

.method public static native nativeCommitText(Ljava/lang/String;I)V
.end method


# virtual methods
.method public commitText(Ljava/lang/CharSequence;I)Z
    .registers 6

    const/4 v0, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_1d

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_17

    invoke-static {}, Lorg/libsdl/app/SDLActivity;->onNativeSoftReturnKey()Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 p1, 0x1

    return p1

    :cond_17
    invoke-virtual {p0, v1}, Lorg/libsdl/app/SDLInputConnection;->nativeGenerateScancodeForUnichar(C)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1d
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/libsdl/app/SDLInputConnection;->nativeCommitText(Ljava/lang/String;I)V

    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result p1

    return p1
.end method

.method public deleteSurroundingText(II)Z
    .registers 7

    if-lez p1, :cond_30

    if-nez p2, :cond_30

    const/4 p2, 0x1

    const/4 v0, 0x1

    :goto_6
    add-int/lit8 v1, p1, -0x1

    if-lez p1, :cond_2f

    new-instance p1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    const/16 v3, 0x43

    invoke-direct {p1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, p1}, Lorg/libsdl/app/SDLInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_25

    new-instance p1, Landroid/view/KeyEvent;

    invoke-direct {p1, p2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, p1}, Lorg/libsdl/app/SDLInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_25

    const/4 p1, 0x1

    goto :goto_26

    :cond_25
    const/4 p1, 0x0

    :goto_26
    if-eqz v0, :cond_2c

    if-eqz p1, :cond_2c

    const/4 v0, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v0, 0x0

    :goto_2d
    move p1, v1

    goto :goto_6

    :cond_2f
    return v0

    :cond_30
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->deleteSurroundingText(II)Z

    move-result p1

    return p1
.end method

.method public native nativeGenerateScancodeForUnichar(C)V
.end method

.method public native nativeSetComposingText(Ljava/lang/String;I)V
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_10

    invoke-static {}, Lorg/libsdl/app/SDLActivity;->onNativeSoftReturnKey()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 p1, 0x1

    return p1

    :cond_10
    invoke-super {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .registers 4

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/libsdl/app/SDLInputConnection;->nativeSetComposingText(Ljava/lang/String;I)V

    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    move-result p1

    return p1
.end method
