.class Lorg/libsdl/app/HIDDeviceManager$3;
.super Ljava/lang/Object;
.source "HIDDeviceManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/libsdl/app/HIDDeviceManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/libsdl/app/HIDDeviceManager;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lorg/libsdl/app/HIDDeviceManager;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lorg/libsdl/app/HIDDeviceManager$3;->this$0:Lorg/libsdl/app/HIDDeviceManager;

    iput-object p2, p0, Lorg/libsdl/app/HIDDeviceManager$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    :try_start_0
    iget-object p1, p0, Lorg/libsdl/app/HIDDeviceManager$3;->val$context:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_7} :catch_7

    :catch_7
    return-void
.end method
