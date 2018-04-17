.class public Lno/nordicsemi/android/support/v18/scanner/ScanFilter;
.super Ljava/lang/Object;
.source "ScanFilter.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lno/nordicsemi/android/support/v18/scanner/ScanFilter$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lno/nordicsemi/android/support/v18/scanner/ScanFilter;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY:Lno/nordicsemi/android/support/v18/scanner/ScanFilter;


# instance fields
.field private final mDeviceAddress:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mDeviceName:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mManufacturerData:[B
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mManufacturerDataMask:[B
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mManufacturerId:I

.field private final mServiceData:[B
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mServiceDataMask:[B
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mServiceDataUuid:Landroid/os/ParcelUuid;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mServiceUuid:Landroid/os/ParcelUuid;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mServiceUuidMask:Landroid/os/ParcelUuid;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter$Builder;

    invoke-direct {v0}, Lno/nordicsemi/android/support/v18/scanner/ScanFilter$Builder;-><init>()V

    invoke-virtual {v0}, Lno/nordicsemi/android/support/v18/scanner/ScanFilter$Builder;->build()Lno/nordicsemi/android/support/v18/scanner/ScanFilter;

    move-result-object v0

    sput-object v0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->EMPTY:Lno/nordicsemi/android/support/v18/scanner/ScanFilter;

    .line 135
    new-instance v0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter$1;

    invoke-direct {v0}, Lno/nordicsemi/android/support/v18/scanner/ScanFilter$1;-><init>()V

    sput-object v0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;[B[BI[B[B)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "deviceAddress"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "uuid"    # Landroid/os/ParcelUuid;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "uuidMask"    # Landroid/os/ParcelUuid;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "serviceDataUuid"    # Landroid/os/ParcelUuid;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "serviceData"    # [B
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7, "serviceDataMask"    # [B
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p8, "manufacturerId"    # I
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p9, "manufacturerData"    # [B
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p10, "manufacturerDataMask"    # [B
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mDeviceName:Ljava/lang/String;

    .line 68
    iput-object p3, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    .line 69
    iput-object p4, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    .line 70
    iput-object p2, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mDeviceAddress:Ljava/lang/String;

    .line 71
    iput-object p5, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    .line 72
    iput-object p6, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mServiceData:[B

    .line 73
    iput-object p7, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mServiceDataMask:[B

    .line 74
    iput p8, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mManufacturerId:I

    .line 75
    iput-object p9, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mManufacturerData:[B

    .line 76
    iput-object p10, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mManufacturerDataMask:[B

    .line 77
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;[B[BI[B[BLno/nordicsemi/android/support/v18/scanner/ScanFilter$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Landroid/os/ParcelUuid;
    .param p4, "x3"    # Landroid/os/ParcelUuid;
    .param p5, "x4"    # Landroid/os/ParcelUuid;
    .param p6, "x5"    # [B
    .param p7, "x6"    # [B
    .param p8, "x7"    # I
    .param p9, "x8"    # [B
    .param p10, "x9"    # [B
    .param p11, "x10"    # Lno/nordicsemi/android/support/v18/scanner/ScanFilter$1;

    .prologue
    .line 36
    invoke-direct/range {p0 .. p10}, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;[B[BI[B[B)V

    return-void
.end method

.method private matchesPartialData([B[B[B)Z
    .locals 6
    .param p1, "data"    # [B
    .param p2, "dataMask"    # [B
    .param p3, "parsedData"    # [B

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 345
    if-eqz p3, :cond_0

    array-length v3, p3

    array-length v4, p1

    if-ge v3, v4, :cond_1

    .line 361
    :cond_0
    :goto_0
    return v1

    .line 348
    :cond_1
    if-nez p2, :cond_3

    .line 349
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_2

    .line 350
    aget-byte v3, p3, v0

    aget-byte v4, p1, v0

    if-ne v3, v4, :cond_0

    .line 349
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    .line 354
    goto :goto_0

    .line 356
    .end local v0    # "i":I
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    array-length v3, p1

    if-ge v0, v3, :cond_4

    .line 357
    aget-byte v3, p2, v0

    aget-byte v4, p3, v0

    and-int/2addr v3, v4

    aget-byte v4, p2, v0

    aget-byte v5, p1, v0

    and-int/2addr v4, v5

    if-ne v3, v4, :cond_0

    .line 356
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    move v1, v2

    .line 361
    goto :goto_0
.end method

.method private matchesServiceUuid(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)Z
    .locals 8
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "mask"    # Ljava/util/UUID;
    .param p3, "data"    # Ljava/util/UUID;

    .prologue
    const/4 v0, 0x0

    .line 332
    if-nez p2, :cond_1

    .line 333
    invoke-virtual {p1, p3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 339
    :cond_0
    :goto_0
    return v0

    .line 335
    :cond_1
    invoke-virtual {p1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    invoke-virtual {p2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v4

    and-long/2addr v2, v4

    invoke-virtual {p3}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v4

    invoke-virtual {p2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v6

    and-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 339
    invoke-virtual {p1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    invoke-virtual {p2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v4

    and-long/2addr v2, v4

    invoke-virtual {p3}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v4

    invoke-virtual {p2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v6

    and-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private matchesServiceUuids(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Ljava/util/List;)Z
    .locals 7
    .param p1, "uuid"    # Landroid/os/ParcelUuid;
    .param p2, "parcelUuidMask"    # Landroid/os/ParcelUuid;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelUuid;",
            "Landroid/os/ParcelUuid;",
            "Ljava/util/List",
            "<",
            "Landroid/os/ParcelUuid;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p3, "uuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 314
    if-nez p1, :cond_0

    .line 327
    :goto_0
    return v3

    .line 317
    :cond_0
    if-nez p3, :cond_1

    move v3, v4

    .line 318
    goto :goto_0

    .line 321
    :cond_1
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .line 322
    .local v1, "parcelUuid":Landroid/os/ParcelUuid;
    if-nez p2, :cond_3

    const/4 v2, 0x0

    .line 323
    .local v2, "uuidMask":Ljava/util/UUID;
    :goto_1
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-direct {p0, v5, v2, v6}, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->matchesServiceUuid(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .line 322
    .end local v2    # "uuidMask":Ljava/util/UUID;
    :cond_3
    invoke-virtual {p2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    goto :goto_1

    .end local v1    # "parcelUuid":Landroid/os/ParcelUuid;
    :cond_4
    move v3, v4

    .line 327
    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 385
    if-ne p0, p1, :cond_1

    .line 392
    :cond_0
    :goto_0
    return v1

    .line 388
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 389
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 391
    check-cast v0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;

    .line 392
    .local v0, "other":Lno/nordicsemi/android/support/v18/scanner/ScanFilter;
    iget-object v3, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mDeviceName:Ljava/lang/String;

    iget-object v4, v0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mDeviceName:Ljava/lang/String;

    invoke-static {v3, v4}, Lno/nordicsemi/android/support/v18/scanner/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mDeviceAddress:Ljava/lang/String;

    iget-object v4, v0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mDeviceAddress:Ljava/lang/String;

    invoke-static {v3, v4}, Lno/nordicsemi/android/support/v18/scanner/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mManufacturerId:I

    iget v4, v0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mManufacturerId:I

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mManufacturerData:[B

    iget-object v4, v0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mManufacturerData:[B

    invoke-static {v3, v4}, Lno/nordicsemi/android/support/v18/scanner/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mManufacturerDataMask:[B

    iget-object v4, v0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mManufacturerDataMask:[B

    invoke-static {v3, v4}, Lno/nordicsemi/android/support/v18/scanner/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    iget-object v4, v0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    invoke-static {v3, v4}, Lno/nordicsemi/android/support/v18/scanner/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mServiceData:[B

    iget-object v4, v0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mServiceData:[B

    invoke-static {v3, v4}, Lno/nordicsemi/android/support/v18/scanner/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mServiceDataMask:[B

    iget-object v4, v0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mServiceDataMask:[B

    invoke-static {v3, v4}, Lno/nordicsemi/android/support/v18/scanner/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    iget-object v4, v0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    invoke-static {v3, v4}, Lno/nordicsemi/android/support/v18/scanner/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    iget-object v4, v0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    invoke-static {v3, v4}, Lno/nordicsemi/android/support/v18/scanner/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public getDeviceAddress()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 222
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mDeviceAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 204
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getManufacturerData()[B
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 249
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mManufacturerData:[B

    return-object v0
.end method

.method public getManufacturerDataMask()[B
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 254
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mManufacturerDataMask:[B

    return-object v0
.end method

.method public getManufacturerId()I
    .locals 1

    .prologue
    .line 244
    iget v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mManufacturerId:I

    return v0
.end method

.method public getServiceData()[B
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 227
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mServiceData:[B

    return-object v0
.end method

.method public getServiceDataMask()[B
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 232
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mServiceDataMask:[B

    return-object v0
.end method

.method public getServiceDataUuid()Landroid/os/ParcelUuid;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 237
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    return-object v0
.end method

.method public getServiceUuid()Landroid/os/ParcelUuid;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 212
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    return-object v0
.end method

.method public getServiceUuidMask()Landroid/os/ParcelUuid;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 217
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 378
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mDeviceName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mDeviceAddress:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mManufacturerId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mManufacturerData:[B

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mManufacturerDataMask:[B

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mServiceData:[B

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mServiceDataMask:[B

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    invoke-static {v0}, Lno/nordicsemi/android/support/v18/scanner/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public matches(Lno/nordicsemi/android/support/v18/scanner/ScanResult;)Z
    .locals 6
    .param p1, "scanResult"    # Lno/nordicsemi/android/support/v18/scanner/ScanResult;

    .prologue
    const/4 v2, 0x0

    .line 262
    if-nez p1, :cond_1

    .line 308
    :cond_0
    :goto_0
    return v2

    .line 265
    :cond_1
    invoke-virtual {p1}, Lno/nordicsemi/android/support/v18/scanner/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 267
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v3, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mDeviceAddress:Ljava/lang/String;

    if-eqz v3, :cond_2

    if-eqz v0, :cond_0

    iget-object v3, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 272
    :cond_2
    invoke-virtual {p1}, Lno/nordicsemi/android/support/v18/scanner/ScanResult;->getScanRecord()Lno/nordicsemi/android/support/v18/scanner/ScanRecord;

    move-result-object v1

    .line 275
    .local v1, "scanRecord":Lno/nordicsemi/android/support/v18/scanner/ScanRecord;
    if-nez v1, :cond_3

    iget-object v3, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mDeviceName:Ljava/lang/String;

    if-nez v3, :cond_0

    iget-object v3, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    if-nez v3, :cond_0

    iget-object v3, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mManufacturerData:[B

    if-nez v3, :cond_0

    iget-object v3, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mServiceData:[B

    if-nez v3, :cond_0

    .line 282
    :cond_3
    iget-object v3, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mDeviceName:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v1}, Lno/nordicsemi/android/support/v18/scanner/ScanRecord;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 287
    :cond_4
    iget-object v3, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    iget-object v4, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    invoke-virtual {v1}, Lno/nordicsemi/android/support/v18/scanner/ScanRecord;->getServiceUuids()Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->matchesServiceUuids(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 293
    :cond_5
    iget-object v3, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    if-eqz v3, :cond_6

    .line 294
    iget-object v3, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mServiceData:[B

    iget-object v4, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mServiceDataMask:[B

    iget-object v5, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    invoke-virtual {v1, v5}, Lno/nordicsemi/android/support/v18/scanner/ScanRecord;->getServiceData(Landroid/os/ParcelUuid;)[B

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->matchesPartialData([B[B[B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 301
    :cond_6
    iget v3, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mManufacturerId:I

    if-ltz v3, :cond_7

    .line 302
    iget-object v3, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mManufacturerData:[B

    iget-object v4, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mManufacturerDataMask:[B

    iget v5, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mManufacturerId:I

    invoke-virtual {v1, v5}, Lno/nordicsemi/android/support/v18/scanner/ScanRecord;->getManufacturerSpecificData(I)[B

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->matchesPartialData([B[B[B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 308
    :cond_7
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothLeScanFilter [mDeviceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDeviceAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUuidMask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mServiceDataUuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    invoke-static {v1}, Lno/nordicsemi/android/support/v18/scanner/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mServiceData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mServiceData:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mServiceDataMask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mServiceDataMask:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mManufacturerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mManufacturerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mManufacturerData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mManufacturerData:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mManufacturerDataMask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mManufacturerDataMask:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 86
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mDeviceName:Ljava/lang/String;

    if-nez v0, :cond_5

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mDeviceName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mDeviceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    :cond_0
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mDeviceAddress:Ljava/lang/String;

    if-nez v0, :cond_6

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mDeviceAddress:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    :cond_1
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    if-nez v0, :cond_7

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    if-eqz v0, :cond_2

    .line 96
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 97
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    if-nez v0, :cond_8

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    if-eqz v0, :cond_2

    .line 99
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 102
    :cond_2
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    if-nez v0, :cond_9

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    if-eqz v0, :cond_3

    .line 104
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 105
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mServiceData:[B

    if-nez v0, :cond_a

    move v0, v1

    :goto_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mServiceData:[B

    if-eqz v0, :cond_3

    .line 107
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mServiceData:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mServiceData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 110
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mServiceDataMask:[B

    if-nez v0, :cond_b

    move v0, v1

    :goto_6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mServiceDataMask:[B

    if-eqz v0, :cond_3

    .line 112
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mServiceDataMask:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mServiceDataMask:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 117
    :cond_3
    iget v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mManufacturerId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mManufacturerData:[B

    if-nez v0, :cond_c

    move v0, v1

    :goto_7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mManufacturerData:[B

    if-eqz v0, :cond_4

    .line 120
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mManufacturerData:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mManufacturerData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 123
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mManufacturerDataMask:[B

    if-nez v0, :cond_d

    :goto_8
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mManufacturerDataMask:[B

    if-eqz v0, :cond_4

    .line 125
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mManufacturerDataMask:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->mManufacturerDataMask:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 129
    :cond_4
    return-void

    :cond_5
    move v0, v2

    .line 86
    goto/16 :goto_0

    :cond_6
    move v0, v2

    .line 90
    goto/16 :goto_1

    :cond_7
    move v0, v2

    .line 94
    goto/16 :goto_2

    :cond_8
    move v0, v2

    .line 97
    goto/16 :goto_3

    :cond_9
    move v0, v2

    .line 102
    goto :goto_4

    :cond_a
    move v0, v2

    .line 105
    goto :goto_5

    :cond_b
    move v0, v2

    .line 110
    goto :goto_6

    :cond_c
    move v0, v2

    .line 118
    goto :goto_7

    :cond_d
    move v1, v2

    .line 123
    goto :goto_8
.end method
