.class public Lno/nordicsemi/android/support/v18/scanner/ScanResult;
.super Ljava/lang/Object;
.source "ScanResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lno/nordicsemi/android/support/v18/scanner/ScanResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mRssi:I

.field private mScanRecord:Lno/nordicsemi/android/support/v18/scanner/ScanRecord;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mTimestampNanos:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 153
    new-instance v0, Lno/nordicsemi/android/support/v18/scanner/ScanResult$1;

    invoke-direct {v0}, Lno/nordicsemi/android/support/v18/scanner/ScanResult$1;-><init>()V

    sput-object v0, Lno/nordicsemi/android/support/v18/scanner/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/support/v18/scanner/ScanRecord;IJ)V
    .locals 0
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "scanRecord"    # Lno/nordicsemi/android/support/v18/scanner/ScanRecord;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "rssi"    # I
    .param p4, "timestampNanos"    # J

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lno/nordicsemi/android/support/v18/scanner/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 55
    iput-object p2, p0, Lno/nordicsemi/android/support/v18/scanner/ScanResult;->mScanRecord:Lno/nordicsemi/android/support/v18/scanner/ScanRecord;

    .line 56
    iput p3, p0, Lno/nordicsemi/android/support/v18/scanner/ScanResult;->mRssi:I

    .line 57
    iput-wide p4, p0, Lno/nordicsemi/android/support/v18/scanner/ScanResult;->mTimestampNanos:J

    .line 58
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-direct {p0, p1}, Lno/nordicsemi/android/support/v18/scanner/ScanResult;->readFromParcel(Landroid/os/Parcel;)V

    .line 62
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lno/nordicsemi/android/support/v18/scanner/ScanResult$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lno/nordicsemi/android/support/v18/scanner/ScanResult$1;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lno/nordicsemi/android/support/v18/scanner/ScanResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 84
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iput-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 86
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lno/nordicsemi/android/support/v18/scanner/ScanRecord;->parseFromBytes([B)Lno/nordicsemi/android/support/v18/scanner/ScanRecord;

    move-result-object v0

    iput-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanResult;->mScanRecord:Lno/nordicsemi/android/support/v18/scanner/ScanRecord;

    .line 89
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanResult;->mRssi:I

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanResult;->mTimestampNanos:J

    .line 91
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 134
    if-ne p0, p1, :cond_1

    .line 141
    :cond_0
    :goto_0
    return v1

    .line 137
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 138
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 140
    check-cast v0, Lno/nordicsemi/android/support/v18/scanner/ScanResult;

    .line 141
    .local v0, "other":Lno/nordicsemi/android/support/v18/scanner/ScanResult;
    iget-object v3, p0, Lno/nordicsemi/android/support/v18/scanner/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v4, v0, Lno/nordicsemi/android/support/v18/scanner/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v3, v4}, Lno/nordicsemi/android/support/v18/scanner/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Lno/nordicsemi/android/support/v18/scanner/ScanResult;->mRssi:I

    iget v4, v0, Lno/nordicsemi/android/support/v18/scanner/ScanResult;->mRssi:I

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lno/nordicsemi/android/support/v18/scanner/ScanResult;->mScanRecord:Lno/nordicsemi/android/support/v18/scanner/ScanRecord;

    iget-object v4, v0, Lno/nordicsemi/android/support/v18/scanner/ScanResult;->mScanRecord:Lno/nordicsemi/android/support/v18/scanner/ScanRecord;

    invoke-static {v3, v4}, Lno/nordicsemi/android/support/v18/scanner/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-wide v4, p0, Lno/nordicsemi/android/support/v18/scanner/ScanResult;->mTimestampNanos:J

    iget-wide v6, v0, Lno/nordicsemi/android/support/v18/scanner/ScanResult;->mTimestampNanos:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getRssi()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanResult;->mRssi:I

    return v0
.end method

.method public getScanRecord()Lno/nordicsemi/android/support/v18/scanner/ScanRecord;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanResult;->mScanRecord:Lno/nordicsemi/android/support/v18/scanner/ScanRecord;

    return-object v0
.end method

.method public getTimestampNanos()J
    .locals 2

    .prologue
    .line 124
    iget-wide v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanResult;->mTimestampNanos:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 129
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lno/nordicsemi/android/support/v18/scanner/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lno/nordicsemi/android/support/v18/scanner/ScanResult;->mRssi:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lno/nordicsemi/android/support/v18/scanner/ScanResult;->mScanRecord:Lno/nordicsemi/android/support/v18/scanner/ScanRecord;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-wide v2, p0, Lno/nordicsemi/android/support/v18/scanner/ScanResult;->mTimestampNanos:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lno/nordicsemi/android/support/v18/scanner/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScanResult{mDevice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lno/nordicsemi/android/support/v18/scanner/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mScanRecord="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lno/nordicsemi/android/support/v18/scanner/ScanResult;->mScanRecord:Lno/nordicsemi/android/support/v18/scanner/ScanRecord;

    invoke-static {v1}, Lno/nordicsemi/android/support/v18/scanner/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRssi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lno/nordicsemi/android/support/v18/scanner/ScanResult;->mRssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTimestampNanos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lno/nordicsemi/android/support/v18/scanner/ScanResult;->mTimestampNanos:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

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

    .line 66
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothDevice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 72
    :goto_0
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanResult;->mScanRecord:Lno/nordicsemi/android/support/v18/scanner/ScanRecord;

    if-eqz v0, :cond_1

    .line 73
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanResult;->mScanRecord:Lno/nordicsemi/android/support/v18/scanner/ScanRecord;

    invoke-virtual {v0}, Lno/nordicsemi/android/support/v18/scanner/ScanRecord;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 78
    :goto_1
    iget v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanResult;->mRssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    iget-wide v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanResult;->mTimestampNanos:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 80
    return-void

    .line 70
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 76
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method
