.class Lorg/libsdl/app/HIDDeviceBLESteamController$2;
.super Ljava/lang/Object;
.source "HIDDeviceBLESteamController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/libsdl/app/HIDDeviceBLESteamController;->executeNextGattOperation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/libsdl/app/HIDDeviceBLESteamController;


# direct methods
.method constructor <init>(Lorg/libsdl/app/HIDDeviceBLESteamController;)V
    .registers 2

    iput-object p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController$2;->this$0:Lorg/libsdl/app/HIDDeviceBLESteamController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController$2;->this$0:Lorg/libsdl/app/HIDDeviceBLESteamController;

    invoke-static {v0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->access$000(Lorg/libsdl/app/HIDDeviceBLESteamController;)Ljava/util/LinkedList;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController$2;->this$0:Lorg/libsdl/app/HIDDeviceBLESteamController;

    iget-object v1, v1, Lorg/libsdl/app/HIDDeviceBLESteamController;->mCurrentOperation:Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;

    if-nez v1, :cond_16

    const-string v1, "hidapi"

    const-string v2, "Current operation null in executor?"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_16
    iget-object v1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController$2;->this$0:Lorg/libsdl/app/HIDDeviceBLESteamController;

    iget-object v1, v1, Lorg/libsdl/app/HIDDeviceBLESteamController;->mCurrentOperation:Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;

    invoke-virtual {v1}, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;->run()V

    monitor-exit v0

    return-void

    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_1f

    throw v1
.end method
