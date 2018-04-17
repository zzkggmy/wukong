.class public final Lno/nordicsemi/android/support/v18/scanner/ScanFilter$Builder;
.super Ljava/lang/Object;
.source "ScanFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lno/nordicsemi/android/support/v18/scanner/ScanFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mDeviceAddress:Ljava/lang/String;

.field private mDeviceName:Ljava/lang/String;

.field private mManufacturerData:[B

.field private mManufacturerDataMask:[B

.field private mManufacturerId:I

.field private mServiceData:[B

.field private mServiceDataMask:[B

.field private mServiceDataUuid:Landroid/os/ParcelUuid;

.field private mServiceUuid:Landroid/os/ParcelUuid;

.field private mUuidMask:Landroid/os/ParcelUuid;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 419
    const/4 v0, -0x1

    iput v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter$Builder;->mManufacturerId:I

    return-void
.end method


# virtual methods
.method public build()Lno/nordicsemi/android/support/v18/scanner/ScanFilter;
    .locals 12

    .prologue
    .line 578
    new-instance v0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;

    iget-object v1, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter$Builder;->mDeviceName:Ljava/lang/String;

    iget-object v2, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter$Builder;->mDeviceAddress:Ljava/lang/String;

    iget-object v3, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter$Builder;->mServiceUuid:Landroid/os/ParcelUuid;

    iget-object v4, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter$Builder;->mUuidMask:Landroid/os/ParcelUuid;

    iget-object v5, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter$Builder;->mServiceDataUuid:Landroid/os/ParcelUuid;

    iget-object v6, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter$Builder;->mServiceData:[B

    iget-object v7, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter$Builder;->mServiceDataMask:[B

    iget v8, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter$Builder;->mManufacturerId:I

    iget-object v9, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter$Builder;->mManufacturerData:[B

    iget-object v10, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter$Builder;->mManufacturerDataMask:[B

    const/4 v11, 0x0

    invoke-direct/range {v0 .. v11}, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;[B[BI[B[BLno/nordicsemi/android/support/v18/scanner/ScanFilter$1;)V

    return-object v0
.end method

.method public setDeviceAddress(Ljava/lang/String;)Lno/nordicsemi/android/support/v18/scanner/ScanFilter$Builder;
    .locals 3
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 440
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 441
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid device address "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 443
    :cond_0
    iput-object p1, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter$Builder;->mDeviceAddress:Ljava/lang/String;

    .line 444
    return-object p0
.end method

.method public setDeviceName(Ljava/lang/String;)Lno/nordicsemi/android/support/v18/scanner/ScanFilter$Builder;
    .locals 0
    .param p1, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 427
    iput-object p1, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter$Builder;->mDeviceName:Ljava/lang/String;

    .line 428
    return-object p0
.end method

.method public setManufacturerData(I[B)Lno/nordicsemi/android/support/v18/scanner/ScanFilter$Builder;
    .locals 2
    .param p1, "manufacturerId"    # I
    .param p2, "manufacturerData"    # [B

    .prologue
    .line 529
    if-eqz p2, :cond_0

    if-gez p1, :cond_0

    .line 530
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid manufacture id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 532
    :cond_0
    iput p1, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter$Builder;->mManufacturerId:I

    .line 533
    iput-object p2, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter$Builder;->mManufacturerData:[B

    .line 534
    const/4 v0, 0x0

    iput-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter$Builder;->mManufacturerDataMask:[B

    .line 535
    return-object p0
.end method

.method public setManufacturerData(I[B[B)Lno/nordicsemi/android/support/v18/scanner/ScanFilter$Builder;
    .locals 2
    .param p1, "manufacturerId"    # I
    .param p2, "manufacturerData"    # [B
    .param p3, "manufacturerDataMask"    # [B

    .prologue
    .line 551
    if-eqz p2, :cond_0

    if-gez p1, :cond_0

    .line 552
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid manufacture id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 554
    :cond_0
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter$Builder;->mManufacturerDataMask:[B

    if-eqz v0, :cond_2

    .line 555
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter$Builder;->mManufacturerData:[B

    if-nez v0, :cond_1

    .line 556
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "manufacturerData is null while manufacturerDataMask is not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 561
    :cond_1
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter$Builder;->mManufacturerData:[B

    array-length v0, v0

    iget-object v1, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter$Builder;->mManufacturerDataMask:[B

    array-length v1, v1

    if-eq v0, v1, :cond_2

    .line 562
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size mismatch for manufacturerData and manufacturerDataMask"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 566
    :cond_2
    iput p1, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter$Builder;->mManufacturerId:I

    .line 567
    iput-object p2, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter$Builder;->mManufacturerData:[B

    .line 568
    iput-object p3, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter$Builder;->mManufacturerDataMask:[B

    .line 569
    return-object p0
.end method

.method public setServiceData(Landroid/os/ParcelUuid;[B)Lno/nordicsemi/android/support/v18/scanner/ScanFilter$Builder;
    .locals 2
    .param p1, "serviceDataUuid"    # Landroid/os/ParcelUuid;
    .param p2, "serviceData"    # [B

    .prologue
    .line 479
    if-nez p1, :cond_0

    .line 480
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "serviceDataUuid is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 482
    :cond_0
    iput-object p1, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter$Builder;->mServiceDataUuid:Landroid/os/ParcelUuid;

    .line 483
    iput-object p2, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter$Builder;->mServiceData:[B

    .line 484
    const/4 v0, 0x0

    iput-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter$Builder;->mServiceDataMask:[B

    .line 485
    return-object p0
.end method

.method public setServiceData(Landroid/os/ParcelUuid;[B[B)Lno/nordicsemi/android/support/v18/scanner/ScanFilter$Builder;
    .locals 2
    .param p1, "serviceDataUuid"    # Landroid/os/ParcelUuid;
    .param p2, "serviceData"    # [B
    .param p3, "serviceDataMask"    # [B

    .prologue
    .line 500
    if-nez p1, :cond_0

    .line 501
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "serviceDataUuid is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 503
    :cond_0
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter$Builder;->mServiceDataMask:[B

    if-eqz v0, :cond_2

    .line 504
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter$Builder;->mServiceData:[B

    if-nez v0, :cond_1

    .line 505
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "serviceData is null while serviceDataMask is not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 510
    :cond_1
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter$Builder;->mServiceData:[B

    array-length v0, v0

    iget-object v1, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter$Builder;->mServiceDataMask:[B

    array-length v1, v1

    if-eq v0, v1, :cond_2

    .line 511
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size mismatch for service data and service data mask"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 515
    :cond_2
    iput-object p1, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter$Builder;->mServiceDataUuid:Landroid/os/ParcelUuid;

    .line 516
    iput-object p2, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter$Builder;->mServiceData:[B

    .line 517
    iput-object p3, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter$Builder;->mServiceDataMask:[B

    .line 518
    return-object p0
.end method

.method public setServiceUuid(Landroid/os/ParcelUuid;)Lno/nordicsemi/android/support/v18/scanner/ScanFilter$Builder;
    .locals 1
    .param p1, "serviceUuid"    # Landroid/os/ParcelUuid;

    .prologue
    .line 451
    iput-object p1, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter$Builder;->mServiceUuid:Landroid/os/ParcelUuid;

    .line 452
    const/4 v0, 0x0

    iput-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter$Builder;->mUuidMask:Landroid/os/ParcelUuid;

    .line 453
    return-object p0
.end method

.method public setServiceUuid(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Lno/nordicsemi/android/support/v18/scanner/ScanFilter$Builder;
    .locals 2
    .param p1, "serviceUuid"    # Landroid/os/ParcelUuid;
    .param p2, "uuidMask"    # Landroid/os/ParcelUuid;

    .prologue
    .line 465
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter$Builder;->mUuidMask:Landroid/os/ParcelUuid;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter$Builder;->mServiceUuid:Landroid/os/ParcelUuid;

    if-nez v0, :cond_0

    .line 466
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "uuid is null while uuidMask is not null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 468
    :cond_0
    iput-object p1, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter$Builder;->mServiceUuid:Landroid/os/ParcelUuid;

    .line 469
    iput-object p2, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter$Builder;->mUuidMask:Landroid/os/ParcelUuid;

    .line 470
    return-object p0
.end method
