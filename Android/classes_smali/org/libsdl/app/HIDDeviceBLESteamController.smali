.class Lorg/libsdl/app/HIDDeviceBLESteamController;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "HIDDeviceBLESteamController.java"

# interfaces
.implements Lorg/libsdl/app/HIDDevice;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;
    }
.end annotation


# static fields
.field private static final CHROMEBOOK_CONNECTION_CHECK_INTERVAL:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "hidapi"

.field private static final TRANSPORT_AUTO:I = 0x0

.field private static final TRANSPORT_BREDR:I = 0x1

.field private static final TRANSPORT_LE:I = 0x2

.field private static final enterValveMode:[B

.field public static final inputCharacteristic:Ljava/util/UUID;

.field public static final reportCharacteristic:Ljava/util/UUID;

.field public static final steamControllerService:Ljava/util/UUID;


# instance fields
.field mCurrentOperation:Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mDeviceId:I

.field private mFrozen:Z

.field private mGatt:Landroid/bluetooth/BluetoothGatt;

.field private mHandler:Landroid/os/Handler;

.field private mIsChromebook:Z

.field private mIsConnected:Z

.field private mIsReconnecting:Z

.field private mIsRegistered:Z

.field private mManager:Lorg/libsdl/app/HIDDeviceManager;

.field private mOperations:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "100F6C32-1735-4313-B402-38567131E5F3"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lorg/libsdl/app/HIDDeviceBLESteamController;->steamControllerService:Ljava/util/UUID;

    const-string v0, "100F6C33-1735-4313-B402-38567131E5F3"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lorg/libsdl/app/HIDDeviceBLESteamController;->inputCharacteristic:Ljava/util/UUID;

    const-string v0, "100F6C34-1735-4313-B402-38567131E5F3"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lorg/libsdl/app/HIDDeviceBLESteamController;->reportCharacteristic:Ljava/util/UUID;

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_22

    sput-object v0, Lorg/libsdl/app/HIDDeviceBLESteamController;->enterValveMode:[B

    return-void

    nop

    :array_22
    .array-data 1
        -0x40t
        -0x79t
        0x3t
        0x8t
        0x7t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Lorg/libsdl/app/HIDDeviceManager;Landroid/bluetooth/BluetoothDevice;)V
    .registers 5

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mIsRegistered:Z

    iput-boolean v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mIsConnected:Z

    iput-boolean v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mIsChromebook:Z

    iput-boolean v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mIsReconnecting:Z

    iput-boolean v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mFrozen:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mCurrentOperation:Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;

    iput-object p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mManager:Lorg/libsdl/app/HIDDeviceManager;

    iput-object p2, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->getIdentifier()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/libsdl/app/HIDDeviceManager;->getDeviceIDForIdentifier(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mDeviceId:I

    iput-boolean v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mIsRegistered:Z

    iget-object p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mManager:Lorg/libsdl/app/HIDDeviceManager;

    invoke-virtual {p1}, Lorg/libsdl/app/HIDDeviceManager;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string p2, "org.chromium.arc.device_management"

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mIsChromebook:Z

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mOperations:Ljava/util/LinkedList;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->connectGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    iput-object p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mGatt:Landroid/bluetooth/BluetoothGatt;

    return-void
.end method

.method static synthetic access$000(Lorg/libsdl/app/HIDDeviceBLESteamController;)Ljava/util/LinkedList;
    .registers 1

    iget-object p0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mOperations:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic access$100(Lorg/libsdl/app/HIDDeviceBLESteamController;)Landroid/bluetooth/BluetoothGatt;
    .registers 1

    iget-object p0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mGatt:Landroid/bluetooth/BluetoothGatt;

    return-object p0
.end method

.method private connectGatt()Landroid/bluetooth/BluetoothGatt;
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->connectGatt(Z)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    return-object v0
.end method

.method private connectGatt(Z)Landroid/bluetooth/BluetoothGatt;
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_21

    :try_start_6
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mManager:Lorg/libsdl/app/HIDDeviceManager;

    invoke-virtual {v1}, Lorg/libsdl/app/HIDDeviceManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, p1, p0, v2}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;I)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_13} :catch_14

    return-object p1

    :catch_14
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mManager:Lorg/libsdl/app/HIDDeviceManager;

    invoke-virtual {v1}, Lorg/libsdl/app/HIDDeviceManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p0}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    return-object p1

    :cond_21
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mManager:Lorg/libsdl/app/HIDDeviceManager;

    invoke-virtual {v1}, Lorg/libsdl/app/HIDDeviceManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p0}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    return-object p1
.end method

.method private enableNotification(Ljava/util/UUID;)V
    .registers 3

    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0, p1}, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;->enableNotification(Landroid/bluetooth/BluetoothGatt;Ljava/util/UUID;)Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/libsdl/app/HIDDeviceBLESteamController;->queueGattOperation(Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;)V

    return-void
.end method

.method private executeNextGattOperation()V
    .registers 3

    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mOperations:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mCurrentOperation:Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    iget-object v1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mOperations:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    monitor-exit v0

    return-void

    :cond_13
    iget-object v1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mOperations:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;

    iput-object v1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mCurrentOperation:Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_29

    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/libsdl/app/HIDDeviceBLESteamController$2;

    invoke-direct {v1, p0}, Lorg/libsdl/app/HIDDeviceBLESteamController$2;-><init>(Lorg/libsdl/app/HIDDeviceBLESteamController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_29
    move-exception v1

    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v1
.end method

.method private finishCurrentGattOperation()V
    .registers 4

    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mOperations:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mCurrentOperation:Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    iget-object v1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mCurrentOperation:Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;

    iput-object v2, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mCurrentOperation:Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;

    move-object v2, v1

    :cond_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_1f

    if-eqz v2, :cond_1b

    invoke-virtual {v2}, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;->finish()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mOperations:Ljava/util/LinkedList;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    :cond_1b
    invoke-direct {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->executeNextGattOperation()V

    return-void

    :catchall_1f
    move-exception v1

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method private isRegistered()Z
    .registers 2

    iget-boolean v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mIsRegistered:Z

    return v0
.end method

.method private probeService(Lorg/libsdl/app/HIDDeviceBLESteamController;)Z
    .registers 8

    invoke-direct {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->isRegistered()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    iget-boolean v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mIsConnected:Z

    const/4 v2, 0x0

    if-nez v0, :cond_e

    return v2

    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "probeService controller="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "hidapi"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_98

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGattService;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v4

    sget-object v5, Lorg/libsdl/app/HIDDeviceBLESteamController;->steamControllerService:Ljava/util/UUID;

    invoke-virtual {v4, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found Valve steam controller service "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_66
    :goto_66
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_97

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    sget-object v4, Lorg/libsdl/app/HIDDeviceBLESteamController;->inputCharacteristic:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_66

    const-string v3, "Found input characteristic"

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "00002902-0000-1000-8000-00805f9b34fb"

    invoke-static {v3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v3

    if-eqz v3, :cond_66

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/libsdl/app/HIDDeviceBLESteamController;->enableNotification(Ljava/util/UUID;)V

    goto :goto_66

    :cond_97
    return v1

    :cond_98
    iget-object p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_c0

    iget-boolean p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mIsChromebook:Z

    if-eqz p1, :cond_c0

    iget-boolean p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mIsReconnecting:Z

    if-nez p1, :cond_c0

    const-string p1, "Chromebook: Discovered services were empty; this almost certainly means the BtGatt.ContextMap bug has bitten us."

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mIsConnected:Z

    iput-boolean v1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mIsReconnecting:Z

    iget-object p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    invoke-direct {p0, v2}, Lorg/libsdl/app/HIDDeviceBLESteamController;->connectGatt(Z)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    iput-object p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mGatt:Landroid/bluetooth/BluetoothGatt;

    :cond_c0
    return v2
.end method

.method private queueGattOperation(Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;)V
    .registers 4

    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mOperations:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mOperations:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    invoke-direct {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->executeNextGattOperation()V

    return-void

    :catchall_d
    move-exception p1

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw p1
.end method

.method private setRegistered()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mIsRegistered:Z

    return-void
.end method


# virtual methods
.method protected checkConnectionForChromebookIssue()V
    .registers 6

    iget-boolean v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mIsChromebook:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->getConnectionState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "hidapi"

    if-eqz v0, :cond_66

    if-eq v0, v2, :cond_60

    const/4 v4, 0x2

    if-eq v0, v4, :cond_15

    goto :goto_78

    :cond_15
    iget-boolean v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mIsConnected:Z

    if-nez v0, :cond_2c

    const-string v0, "Chromebook: We are in a very bad state; the controller shows as connected in the underlying Bluetooth layer, but we never received a callback.  Forcing a reconnect."

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mIsReconnecting:Z

    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    invoke-direct {p0, v1}, Lorg/libsdl/app/HIDDeviceBLESteamController;->connectGatt(Z)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    iput-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mGatt:Landroid/bluetooth/BluetoothGatt;

    goto :goto_78

    :cond_2c
    invoke-direct {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_5a

    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_47

    const-string v0, "Chromebook: We are connected to a controller, but never got our registration.  Trying to recover."

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->probeService(Lorg/libsdl/app/HIDDeviceBLESteamController;)Z

    goto :goto_78

    :cond_47
    const-string v0, "Chromebook: We are connected to a controller, but never discovered services.  Trying to recover."

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mIsReconnecting:Z

    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    invoke-direct {p0, v1}, Lorg/libsdl/app/HIDDeviceBLESteamController;->connectGatt(Z)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    iput-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mGatt:Landroid/bluetooth/BluetoothGatt;

    goto :goto_78

    :cond_5a
    const-string v0, "Chromebook: We are connected, and registered.  Everything\'s good!"

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_60
    const-string v0, "Chromebook: We\'re still trying to connect.  Waiting a bit longer."

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_78

    :cond_66
    const-string v0, "Chromebook: We have either been disconnected, or the Chromebook BtGatt.ContextMap bug has bitten us.  Attempting a disconnect/reconnect, but we may not be able to recover."

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mIsReconnecting:Z

    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    invoke-direct {p0, v1}, Lorg/libsdl/app/HIDDeviceBLESteamController;->connectGatt(Z)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    iput-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mGatt:Landroid/bluetooth/BluetoothGatt;

    :goto_78
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/libsdl/app/HIDDeviceBLESteamController$1;

    invoke-direct {v1, p0, p0}, Lorg/libsdl/app/HIDDeviceBLESteamController$1;-><init>(Lorg/libsdl/app/HIDDeviceBLESteamController;Lorg/libsdl/app/HIDDeviceBLESteamController;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public close()V
    .registers 1

    return-void
.end method

.method protected getConnectionState()I
    .registers 4

    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mManager:Lorg/libsdl/app/HIDDeviceManager;

    invoke-virtual {v0}, Lorg/libsdl/app/HIDDeviceManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    const-string v2, "bluetooth"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    if-nez v0, :cond_15

    return v1

    :cond_15
    iget-object v1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothManager;->getConnectionState(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v0

    return v0
.end method

.method public getDevice()Landroid/hardware/usb/UsbDevice;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFeatureReport([B)Z
    .registers 3

    invoke-direct {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->isRegistered()Z

    move-result p1

    if-nez p1, :cond_16

    const-string p1, "hidapi"

    const-string v0, "Attempted getFeatureReport before Steam Controller is registered!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mIsConnected:Z

    if-eqz p1, :cond_14

    invoke-direct {p0, p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->probeService(Lorg/libsdl/app/HIDDeviceBLESteamController;)Z

    :cond_14
    const/4 p1, 0x0

    return p1

    :cond_16
    sget-object p1, Lorg/libsdl/app/HIDDeviceBLESteamController;->reportCharacteristic:Ljava/util/UUID;

    invoke-virtual {p0, p1}, Lorg/libsdl/app/HIDDeviceBLESteamController;->readCharacteristic(Ljava/util/UUID;)V

    const/4 p1, 0x1

    return p1
.end method

.method public getGatt()Landroid/bluetooth/BluetoothGatt;
    .registers 2

    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mGatt:Landroid/bluetooth/BluetoothGatt;

    return-object v0
.end method

.method public getId()I
    .registers 2

    iget v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mDeviceId:I

    return v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "SteamController.%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getManufacturerName()Ljava/lang/String;
    .registers 2

    const-string v0, "Valve Corporation"

    return-object v0
.end method

.method public getProductId()I
    .registers 2

    const/16 v0, 0x1106

    return v0
.end method

.method public getProductName()Ljava/lang/String;
    .registers 2

    const-string v0, "Steam Controller"

    return-object v0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .registers 2

    const-string v0, "12345"

    return-object v0
.end method

.method public getVendorId()I
    .registers 2

    const/16 v0, 0x28de

    return v0
.end method

.method public getVersion()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 4

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p1

    sget-object v0, Lorg/libsdl/app/HIDDeviceBLESteamController;->inputCharacteristic:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    iget-boolean p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mFrozen:Z

    if-nez p1, :cond_1d

    iget-object p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mManager:Lorg/libsdl/app/HIDDeviceManager;

    invoke-virtual {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->getId()I

    move-result v0

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lorg/libsdl/app/HIDDeviceManager;->HIDDeviceInputReport(I[B)V

    :cond_1d
    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .registers 4

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p1

    sget-object p3, Lorg/libsdl/app/HIDDeviceBLESteamController;->reportCharacteristic:Ljava/util/UUID;

    invoke-virtual {p1, p3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    iget-boolean p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mFrozen:Z

    if-nez p1, :cond_1d

    iget-object p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mManager:Lorg/libsdl/app/HIDDeviceManager;

    invoke-virtual {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->getId()I

    move-result p3

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/libsdl/app/HIDDeviceManager;->HIDDeviceFeatureReport(I[B)V

    :cond_1d
    invoke-direct {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->finishCurrentGattOperation()V

    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .registers 18

    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    sget-object v1, Lorg/libsdl/app/HIDDeviceBLESteamController;->reportCharacteristic:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-direct {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_5a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Registering Steam Controller with ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hidapi"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    iget-object v1, v0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mManager:Lorg/libsdl/app/HIDDeviceManager;

    invoke-virtual {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->getId()I

    move-result v2

    invoke-virtual {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->getVendorId()I

    move-result v4

    invoke-virtual {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->getProductId()I

    move-result v5

    invoke-virtual {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->getSerialNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->getVersion()I

    move-result v7

    invoke-virtual {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->getManufacturerName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->getProductName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v1 .. v13}, Lorg/libsdl/app/HIDDeviceManager;->HIDDeviceConnected(ILjava/lang/String;IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;IIII)V

    invoke-direct {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->setRegistered()V

    goto :goto_5b

    :cond_5a
    move-object v0, p0

    :goto_5b
    invoke-direct {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->finishCurrentGattOperation()V

    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .registers 4

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mIsReconnecting:Z

    const/4 p2, 0x2

    if-ne p3, p2, :cond_1a

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mIsConnected:Z

    invoke-direct {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->isRegistered()Z

    move-result p1

    if-nez p1, :cond_1e

    iget-object p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mHandler:Landroid/os/Handler;

    new-instance p2, Lorg/libsdl/app/HIDDeviceBLESteamController$3;

    invoke-direct {p2, p0}, Lorg/libsdl/app/HIDDeviceBLESteamController$3;-><init>(Lorg/libsdl/app/HIDDeviceBLESteamController;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1e

    :cond_1a
    if-nez p3, :cond_1e

    iput-boolean p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mIsConnected:Z

    :cond_1e
    :goto_1e
    return-void
.end method

.method public onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .registers 4

    return-void
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .registers 5

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p3

    sget-object v0, Lorg/libsdl/app/HIDDeviceBLESteamController;->inputCharacteristic:Ljava/util/UUID;

    invoke-virtual {p3, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2b

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object p2

    sget-object p3, Lorg/libsdl/app/HIDDeviceBLESteamController;->reportCharacteristic:Ljava/util/UUID;

    invoke-virtual {p2, p3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p2

    if-eqz p2, :cond_2b

    const-string p3, "hidapi"

    const-string v0, "Writing report characteristic to enter valve mode"

    invoke-static {p3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p3, Lorg/libsdl/app/HIDDeviceBLESteamController;->enterValveMode:[B

    invoke-virtual {p2, p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    :cond_2b
    invoke-direct {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->finishCurrentGattOperation()V

    return-void
.end method

.method public onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V
    .registers 4

    return-void
.end method

.method public onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V
    .registers 4

    return-void
.end method

.method public onReliableWriteCompleted(Landroid/bluetooth/BluetoothGatt;I)V
    .registers 3

    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .registers 4

    if-nez p2, :cond_26

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_23

    const-string p2, "hidapi"

    const-string v0, "onServicesDiscovered returned zero services; something has gone horribly wrong down in Android\'s Bluetooth stack."

    invoke-static {p2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x1

    iput-boolean p2, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mIsReconnecting:Z

    const/4 p2, 0x0

    iput-boolean p2, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mIsConnected:Z

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    invoke-direct {p0, p2}, Lorg/libsdl/app/HIDDeviceBLESteamController;->connectGatt(Z)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    iput-object p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mGatt:Landroid/bluetooth/BluetoothGatt;

    goto :goto_26

    :cond_23
    invoke-direct {p0, p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->probeService(Lorg/libsdl/app/HIDDeviceBLESteamController;)Z

    :cond_26
    :goto_26
    return-void
.end method

.method public open()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public readCharacteristic(Ljava/util/UUID;)V
    .registers 3

    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0, p1}, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;->readCharacteristic(Landroid/bluetooth/BluetoothGatt;Ljava/util/UUID;)Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/libsdl/app/HIDDeviceBLESteamController;->queueGattOperation(Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;)V

    return-void
.end method

.method public reconnect()V
    .registers 3

    invoke-virtual {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->getConnectionState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_12

    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    invoke-direct {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->connectGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    iput-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mGatt:Landroid/bluetooth/BluetoothGatt;

    :cond_12
    return-void
.end method

.method public sendFeatureReport([B)I
    .registers 4

    invoke-direct {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_16

    const-string p1, "hidapi"

    const-string v0, "Attempted sendFeatureReport before Steam Controller is registered!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mIsConnected:Z

    if-eqz p1, :cond_14

    invoke-direct {p0, p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->probeService(Lorg/libsdl/app/HIDDeviceBLESteamController;)Z

    :cond_14
    const/4 p1, -0x1

    return p1

    :cond_16
    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    sget-object v1, Lorg/libsdl/app/HIDDeviceBLESteamController;->reportCharacteristic:Ljava/util/UUID;

    invoke-virtual {p0, v1, v0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->writeCharacteristic(Ljava/util/UUID;[B)V

    array-length p1, p1

    return p1
.end method

.method public sendOutputReport([B)I
    .registers 3

    invoke-direct {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_16

    const-string p1, "hidapi"

    const-string v0, "Attempted sendOutputReport before Steam Controller is registered!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mIsConnected:Z

    if-eqz p1, :cond_14

    invoke-direct {p0, p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->probeService(Lorg/libsdl/app/HIDDeviceBLESteamController;)Z

    :cond_14
    const/4 p1, -0x1

    return p1

    :cond_16
    sget-object v0, Lorg/libsdl/app/HIDDeviceBLESteamController;->reportCharacteristic:Ljava/util/UUID;

    invoke-virtual {p0, v0, p1}, Lorg/libsdl/app/HIDDeviceBLESteamController;->writeCharacteristic(Ljava/util/UUID;[B)V

    array-length p1, p1

    return p1
.end method

.method public setFrozen(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mFrozen:Z

    return-void
.end method

.method public shutdown()V
    .registers 3

    invoke-virtual {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->close()V

    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mGatt:Landroid/bluetooth/BluetoothGatt;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V

    iput-object v1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mGatt:Landroid/bluetooth/BluetoothGatt;

    :cond_10
    iput-object v1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mManager:Lorg/libsdl/app/HIDDeviceManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mIsRegistered:Z

    iput-boolean v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mIsConnected:Z

    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mOperations:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method

.method public writeCharacteristic(Ljava/util/UUID;[B)V
    .registers 4

    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0, p1, p2}, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;->writeCharacteristic(Landroid/bluetooth/BluetoothGatt;Ljava/util/UUID;[B)Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/libsdl/app/HIDDeviceBLESteamController;->queueGattOperation(Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;)V

    return-void
.end method
