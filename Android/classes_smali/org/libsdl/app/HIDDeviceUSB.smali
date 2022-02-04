.class Lorg/libsdl/app/HIDDeviceUSB;
.super Ljava/lang/Object;
.source "HIDDeviceUSB.java"

# interfaces
.implements Lorg/libsdl/app/HIDDevice;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/libsdl/app/HIDDeviceUSB$InputThread;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "hidapi"


# instance fields
.field protected mConnection:Landroid/hardware/usb/UsbDeviceConnection;

.field protected mDevice:Landroid/hardware/usb/UsbDevice;

.field protected mDeviceId:I

.field protected mFrozen:Z

.field protected mInputEndpoint:Landroid/hardware/usb/UsbEndpoint;

.field protected mInputThread:Lorg/libsdl/app/HIDDeviceUSB$InputThread;

.field protected mInterface:I

.field protected mInterfaceIndex:I

.field protected mManager:Lorg/libsdl/app/HIDDeviceManager;

.field protected mOutputEndpoint:Landroid/hardware/usb/UsbEndpoint;

.field protected mRunning:Z


# direct methods
.method public constructor <init>(Lorg/libsdl/app/HIDDeviceManager;Landroid/hardware/usb/UsbDevice;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/libsdl/app/HIDDeviceUSB;->mManager:Lorg/libsdl/app/HIDDeviceManager;

    iput-object p2, p0, Lorg/libsdl/app/HIDDeviceUSB;->mDevice:Landroid/hardware/usb/UsbDevice;

    iput p3, p0, Lorg/libsdl/app/HIDDeviceUSB;->mInterfaceIndex:I

    invoke-virtual {p2, p3}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object p2

    invoke-virtual {p2}, Landroid/hardware/usb/UsbInterface;->getId()I

    move-result p2

    iput p2, p0, Lorg/libsdl/app/HIDDeviceUSB;->mInterface:I

    invoke-virtual {p0}, Lorg/libsdl/app/HIDDeviceUSB;->getIdentifier()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/libsdl/app/HIDDeviceManager;->getDeviceIDForIdentifier(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/libsdl/app/HIDDeviceUSB;->mDeviceId:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/libsdl/app/HIDDeviceUSB;->mRunning:Z

    return-void
.end method


# virtual methods
.method public close()V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/libsdl/app/HIDDeviceUSB;->mRunning:Z

    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceUSB;->mInputThread:Lorg/libsdl/app/HIDDeviceUSB$InputThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    :goto_8
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceUSB;->mInputThread:Lorg/libsdl/app/HIDDeviceUSB$InputThread;

    invoke-virtual {v0}, Lorg/libsdl/app/HIDDeviceUSB$InputThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceUSB;->mInputThread:Lorg/libsdl/app/HIDDeviceUSB$InputThread;

    invoke-virtual {v0}, Lorg/libsdl/app/HIDDeviceUSB$InputThread;->interrupt()V

    :try_start_15
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceUSB;->mInputThread:Lorg/libsdl/app/HIDDeviceUSB$InputThread;

    invoke-virtual {v0}, Lorg/libsdl/app/HIDDeviceUSB$InputThread;->join()V
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_1a} :catch_1b

    goto :goto_8

    :catch_1b
    nop

    goto :goto_8

    :cond_1d
    iput-object v1, p0, Lorg/libsdl/app/HIDDeviceUSB;->mInputThread:Lorg/libsdl/app/HIDDeviceUSB$InputThread;

    :cond_1f
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceUSB;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceUSB;->mDevice:Landroid/hardware/usb/UsbDevice;

    iget v2, p0, Lorg/libsdl/app/HIDDeviceUSB;->mInterfaceIndex:I

    invoke-virtual {v0, v2}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v0

    iget-object v2, p0, Lorg/libsdl/app/HIDDeviceUSB;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v2, v0}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z

    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceUSB;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    iput-object v1, p0, Lorg/libsdl/app/HIDDeviceUSB;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    :cond_37
    return-void
.end method

.method public getDevice()Landroid/hardware/usb/UsbDevice;
    .registers 2

    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceUSB;->mDevice:Landroid/hardware/usb/UsbDevice;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/libsdl/app/HIDDeviceUSB;->getManufacturerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/libsdl/app/HIDDeviceUSB;->getProductName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/libsdl/app/HIDDeviceUSB;->getVendorId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "%x"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/libsdl/app/HIDDeviceUSB;->getProductId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFeatureReport([B)Z
    .registers 16

    array-length v0, p1

    const/4 v1, 0x0

    aget-byte v2, p1, v1

    const/4 v3, 0x1

    if-nez v2, :cond_c

    add-int/lit8 v0, v0, -0x1

    const/4 v10, 0x1

    const/4 v13, 0x1

    goto :goto_e

    :cond_c
    const/4 v10, 0x0

    const/4 v13, 0x0

    :goto_e
    iget-object v4, p0, Lorg/libsdl/app/HIDDeviceUSB;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v5, 0xa1

    const/4 v6, 0x1

    or-int/lit16 v7, v2, 0x300

    iget v8, p0, Lorg/libsdl/app/HIDDeviceUSB;->mInterface:I

    const/16 v12, 0x3e8

    move-object v9, p1

    move v11, v0

    invoke-virtual/range {v4 .. v12}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BIII)I

    move-result v2

    if-gez v2, :cond_44

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getFeatureReport() returned "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " on device "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/libsdl/app/HIDDeviceUSB;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "hidapi"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_44
    if-eqz v13, :cond_4a

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    :cond_4a
    if-ne v2, v0, :cond_4d

    goto :goto_51

    :cond_4d
    invoke-static {p1, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    :goto_51
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceUSB;->mManager:Lorg/libsdl/app/HIDDeviceManager;

    iget v1, p0, Lorg/libsdl/app/HIDDeviceUSB;->mDeviceId:I

    invoke-virtual {v0, v1, p1}, Lorg/libsdl/app/HIDDeviceManager;->HIDDeviceFeatureReport(I[B)V

    return v3
.end method

.method public getId()I
    .registers 2

    iget v0, p0, Lorg/libsdl/app/HIDDeviceUSB;->mDeviceId:I

    return v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lorg/libsdl/app/HIDDeviceUSB;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/libsdl/app/HIDDeviceUSB;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/libsdl/app/HIDDeviceUSB;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lorg/libsdl/app/HIDDeviceUSB;->mInterfaceIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "%s/%x/%x/%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getManufacturerName()Ljava/lang/String;
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_d

    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceUSB;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    if-nez v0, :cond_24

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/libsdl/app/HIDDeviceUSB;->getVendorId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "%x"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_24
    return-object v0
.end method

.method public getProductId()I
    .registers 2

    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceUSB;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v0

    return v0
.end method

.method public getProductName()Ljava/lang/String;
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_d

    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceUSB;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    if-nez v0, :cond_24

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/libsdl/app/HIDDeviceUSB;->getProductId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "%x"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_24
    return-object v0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_d

    :try_start_6
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceUSB;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_c} :catch_d

    goto :goto_e

    :catch_d
    :cond_d
    const/4 v0, 0x0

    :goto_e
    if-nez v0, :cond_12

    const-string v0, ""

    :cond_12
    return-object v0
.end method

.method public getVendorId()I
    .registers 2

    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceUSB;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v0

    return v0
.end method

.method public getVersion()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public open()Z
    .registers 9

    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceUSB;->mManager:Lorg/libsdl/app/HIDDeviceManager;

    invoke-virtual {v0}, Lorg/libsdl/app/HIDDeviceManager;->getUSBManager()Landroid/hardware/usb/UsbManager;

    move-result-object v0

    iget-object v1, p0, Lorg/libsdl/app/HIDDeviceUSB;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v0

    iput-object v0, p0, Lorg/libsdl/app/HIDDeviceUSB;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const-string v1, "hidapi"

    const/4 v2, 0x0

    if-nez v0, :cond_2c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open USB device "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/libsdl/app/HIDDeviceUSB;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2c
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceUSB;->mDevice:Landroid/hardware/usb/UsbDevice;

    iget v3, p0, Lorg/libsdl/app/HIDDeviceUSB;->mInterfaceIndex:I

    invoke-virtual {v0, v3}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v0

    iget-object v3, p0, Lorg/libsdl/app/HIDDeviceUSB;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    move-result v3

    if-nez v3, :cond_59

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to claim interfaces on USB device "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/libsdl/app/HIDDeviceUSB;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lorg/libsdl/app/HIDDeviceUSB;->close()V

    return v2

    :cond_59
    const/4 v3, 0x0

    :goto_5a
    invoke-virtual {v0}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v5

    if-ge v3, v5, :cond_7f

    invoke-virtual {v0, v3}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v6

    if-eqz v6, :cond_76

    const/16 v7, 0x80

    if-eq v6, v7, :cond_6f

    goto :goto_7c

    :cond_6f
    iget-object v6, p0, Lorg/libsdl/app/HIDDeviceUSB;->mInputEndpoint:Landroid/hardware/usb/UsbEndpoint;

    if-nez v6, :cond_7c

    iput-object v5, p0, Lorg/libsdl/app/HIDDeviceUSB;->mInputEndpoint:Landroid/hardware/usb/UsbEndpoint;

    goto :goto_7c

    :cond_76
    iget-object v6, p0, Lorg/libsdl/app/HIDDeviceUSB;->mOutputEndpoint:Landroid/hardware/usb/UsbEndpoint;

    if-nez v6, :cond_7c

    iput-object v5, p0, Lorg/libsdl/app/HIDDeviceUSB;->mOutputEndpoint:Landroid/hardware/usb/UsbEndpoint;

    :cond_7c
    :goto_7c
    add-int/lit8 v3, v3, 0x1

    goto :goto_5a

    :cond_7f
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceUSB;->mInputEndpoint:Landroid/hardware/usb/UsbEndpoint;

    if-eqz v0, :cond_95

    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceUSB;->mOutputEndpoint:Landroid/hardware/usb/UsbEndpoint;

    if-nez v0, :cond_88

    goto :goto_95

    :cond_88
    iput-boolean v4, p0, Lorg/libsdl/app/HIDDeviceUSB;->mRunning:Z

    new-instance v0, Lorg/libsdl/app/HIDDeviceUSB$InputThread;

    invoke-direct {v0, p0}, Lorg/libsdl/app/HIDDeviceUSB$InputThread;-><init>(Lorg/libsdl/app/HIDDeviceUSB;)V

    iput-object v0, p0, Lorg/libsdl/app/HIDDeviceUSB;->mInputThread:Lorg/libsdl/app/HIDDeviceUSB$InputThread;

    invoke-virtual {v0}, Lorg/libsdl/app/HIDDeviceUSB$InputThread;->start()V

    return v4

    :cond_95
    :goto_95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing required endpoint on USB device "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/libsdl/app/HIDDeviceUSB;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lorg/libsdl/app/HIDDeviceUSB;->close()V

    return v2
.end method

.method public sendFeatureReport([B)I
    .registers 15

    array-length v0, p1

    const/4 v1, 0x0

    aget-byte v2, p1, v1

    const/4 v3, 0x1

    if-nez v2, :cond_c

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x1

    const/4 v10, 0x1

    goto :goto_d

    :cond_c
    const/4 v10, 0x0

    :goto_d
    iget-object v4, p0, Lorg/libsdl/app/HIDDeviceUSB;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v5, 0x21

    const/16 v6, 0x9

    or-int/lit16 v7, v2, 0x300

    iget v8, p0, Lorg/libsdl/app/HIDDeviceUSB;->mInterface:I

    const/16 v12, 0x3e8

    move-object v9, p1

    move v11, v0

    invoke-virtual/range {v4 .. v12}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BIII)I

    move-result p1

    if-gez p1, :cond_45

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendFeatureReport() returned "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " on device "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/libsdl/app/HIDDeviceUSB;->getDeviceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "hidapi"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1

    :cond_45
    if-eqz v1, :cond_49

    add-int/lit8 v0, v0, 0x1

    :cond_49
    return v0
.end method

.method public sendOutputReport([B)I
    .registers 6

    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceUSB;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v1, p0, Lorg/libsdl/app/HIDDeviceUSB;->mOutputEndpoint:Landroid/hardware/usb/UsbEndpoint;

    array-length v2, p1

    const/16 v3, 0x3e8

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v0

    array-length p1, p1

    if-eq v0, p1, :cond_30

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendOutputReport() returned "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " on device "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/libsdl/app/HIDDeviceUSB;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "hidapi"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    return v0
.end method

.method public setFrozen(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/libsdl/app/HIDDeviceUSB;->mFrozen:Z

    return-void
.end method

.method public shutdown()V
    .registers 2

    invoke-virtual {p0}, Lorg/libsdl/app/HIDDeviceUSB;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/libsdl/app/HIDDeviceUSB;->mManager:Lorg/libsdl/app/HIDDeviceManager;

    return-void
.end method
