.class public Lorg/libsdl/app/HIDDeviceUSB$InputThread;
.super Ljava/lang/Thread;
.source "HIDDeviceUSB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/libsdl/app/HIDDeviceUSB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "InputThread"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/libsdl/app/HIDDeviceUSB;


# direct methods
.method protected constructor <init>(Lorg/libsdl/app/HIDDeviceUSB;)V
    .registers 2

    iput-object p1, p0, Lorg/libsdl/app/HIDDeviceUSB$InputThread;->this$0:Lorg/libsdl/app/HIDDeviceUSB;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceUSB$InputThread;->this$0:Lorg/libsdl/app/HIDDeviceUSB;

    iget-object v0, v0, Lorg/libsdl/app/HIDDeviceUSB;->mInputEndpoint:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    move-result v0

    new-array v1, v0, [B

    :cond_a
    :goto_a
    iget-object v2, p0, Lorg/libsdl/app/HIDDeviceUSB$InputThread;->this$0:Lorg/libsdl/app/HIDDeviceUSB;

    iget-boolean v2, v2, Lorg/libsdl/app/HIDDeviceUSB;->mRunning:Z

    if-eqz v2, :cond_52

    :try_start_10
    iget-object v2, p0, Lorg/libsdl/app/HIDDeviceUSB$InputThread;->this$0:Lorg/libsdl/app/HIDDeviceUSB;

    iget-object v2, v2, Lorg/libsdl/app/HIDDeviceUSB;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v3, p0, Lorg/libsdl/app/HIDDeviceUSB$InputThread;->this$0:Lorg/libsdl/app/HIDDeviceUSB;

    iget-object v3, v3, Lorg/libsdl/app/HIDDeviceUSB;->mInputEndpoint:Landroid/hardware/usb/UsbEndpoint;

    const/16 v4, 0x3e8

    invoke-virtual {v2, v3, v1, v0, v4}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v2
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1e} :catch_3b

    if-lez v2, :cond_a

    if-ne v2, v0, :cond_24

    move-object v2, v1

    goto :goto_29

    :cond_24
    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    :goto_29
    iget-object v3, p0, Lorg/libsdl/app/HIDDeviceUSB$InputThread;->this$0:Lorg/libsdl/app/HIDDeviceUSB;

    iget-boolean v3, v3, Lorg/libsdl/app/HIDDeviceUSB;->mFrozen:Z

    if-nez v3, :cond_a

    iget-object v3, p0, Lorg/libsdl/app/HIDDeviceUSB$InputThread;->this$0:Lorg/libsdl/app/HIDDeviceUSB;

    iget-object v3, v3, Lorg/libsdl/app/HIDDeviceUSB;->mManager:Lorg/libsdl/app/HIDDeviceManager;

    iget-object v4, p0, Lorg/libsdl/app/HIDDeviceUSB$InputThread;->this$0:Lorg/libsdl/app/HIDDeviceUSB;

    iget v4, v4, Lorg/libsdl/app/HIDDeviceUSB;->mDeviceId:I

    invoke-virtual {v3, v4, v2}, Lorg/libsdl/app/HIDDeviceManager;->HIDDeviceInputReport(I[B)V

    goto :goto_a

    :catch_3b
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in UsbDeviceConnection bulktransfer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hidapi"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_52
    return-void
.end method
