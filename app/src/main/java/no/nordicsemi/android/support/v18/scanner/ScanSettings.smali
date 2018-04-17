.class public Lno/nordicsemi/android/support/v18/scanner/ScanSettings;
.super Ljava/lang/Object;
.source "ScanSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lno/nordicsemi/android/support/v18/scanner/ScanSettings$Builder;
    }
.end annotation


# static fields
.field public static final CALLBACK_TYPE_ALL_MATCHES:I = 0x1

.field public static final CALLBACK_TYPE_FIRST_MATCH:I = 0x2

.field public static final CALLBACK_TYPE_MATCH_LOST:I = 0x4

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lno/nordicsemi/android/support/v18/scanner/ScanSettings;",
            ">;"
        }
    .end annotation
.end field

.field public static final MATCH_LOST_DEVICE_TIMEOUT_DEFAULT:J = 0x2710L

.field public static final MATCH_LOST_TASK_INTERVAL_DEFAULT:J = 0x2710L

.field public static final MATCH_MODE_AGGRESSIVE:I = 0x1

.field public static final MATCH_MODE_STICKY:I = 0x2

.field public static final MATCH_NUM_FEW_ADVERTISEMENT:I = 0x2

.field public static final MATCH_NUM_MAX_ADVERTISEMENT:I = 0x3

.field public static final MATCH_NUM_ONE_ADVERTISEMENT:I = 0x1

.field public static final SCAN_MODE_BALANCED:I = 0x1

.field public static final SCAN_MODE_LOW_LATENCY:I = 0x2

.field public static final SCAN_MODE_LOW_POWER:I = 0x0

.field public static final SCAN_MODE_OPPORTUNISTIC:I = -0x1


# instance fields
.field private mCallbackType:I

.field private mMatchLostDeviceTimeout:J

.field private mMatchLostTaskInterval:J

.field private mMatchMode:I

.field private mNumOfMatchesPerFilter:I

.field private mReportDelayMillis:J

.field private mScanMode:I

.field private mUseHardwareBatchingIfSupported:Z

.field private mUseHardwareCallbackTypesIfSupported:Z

.field private mUseHardwareFilteringIfSupported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 232
    new-instance v0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings$1;

    invoke-direct {v0}, Lno/nordicsemi/android/support/v18/scanner/ScanSettings$1;-><init>()V

    sput-object v0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(IIJIIZZZJJ)V
    .locals 2
    .param p1, "scanMode"    # I
    .param p2, "callbackType"    # I
    .param p3, "reportDelayMillis"    # J
    .param p5, "matchMode"    # I
    .param p6, "numOfMatchesPerFilter"    # I
    .param p7, "hardwareFiltering"    # Z
    .param p8, "hardwareBatching"    # Z
    .param p9, "hardwareCallbackTypes"    # Z
    .param p10, "matchTimeout"    # J
    .param p12, "taskInterval"    # J

    .prologue
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iput p1, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->mScanMode:I

    .line 194
    iput p2, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->mCallbackType:I

    .line 195
    iput-wide p3, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->mReportDelayMillis:J

    .line 196
    iput p6, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->mNumOfMatchesPerFilter:I

    .line 197
    iput p5, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->mMatchMode:I

    .line 198
    iput-boolean p7, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->mUseHardwareFilteringIfSupported:Z

    .line 199
    iput-boolean p8, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->mUseHardwareBatchingIfSupported:Z

    .line 200
    iput-boolean p9, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->mUseHardwareCallbackTypesIfSupported:Z

    .line 201
    const-wide/32 v0, 0xf4240

    mul-long/2addr v0, p10

    iput-wide v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->mMatchLostDeviceTimeout:J

    .line 202
    iput-wide p12, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->mMatchLostTaskInterval:J

    .line 203
    return-void
.end method

.method synthetic constructor <init>(IIJIIZZZJJLno/nordicsemi/android/support/v18/scanner/ScanSettings$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # J
    .param p5, "x3"    # I
    .param p6, "x4"    # I
    .param p7, "x5"    # Z
    .param p8, "x6"    # Z
    .param p9, "x7"    # Z
    .param p10, "x8"    # J
    .param p12, "x9"    # J
    .param p14, "x10"    # Lno/nordicsemi/android/support/v18/scanner/ScanSettings$1;

    .prologue
    .line 28
    invoke-direct/range {p0 .. p13}, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;-><init>(IIJIIZZZJJ)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->mScanMode:I

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->mCallbackType:I

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->mReportDelayMillis:J

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->mMatchMode:I

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->mNumOfMatchesPerFilter:I

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->mUseHardwareFilteringIfSupported:Z

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->mUseHardwareBatchingIfSupported:Z

    .line 213
    return-void

    :cond_0
    move v0, v2

    .line 211
    goto :goto_0

    :cond_1
    move v1, v2

    .line 212
    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lno/nordicsemi/android/support/v18/scanner/ScanSettings$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lno/nordicsemi/android/support/v18/scanner/ScanSettings$1;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x0

    return v0
.end method

.method disableUseHardwareCallbackTypes()V
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->mUseHardwareCallbackTypesIfSupported:Z

    .line 174
    return-void
.end method

.method public getCallbackType()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->mCallbackType:I

    return v0
.end method

.method public getMatchLostDeviceTimeout()J
    .locals 2

    .prologue
    .line 177
    iget-wide v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->mMatchLostDeviceTimeout:J

    return-wide v0
.end method

.method public getMatchLostTaskInterval()J
    .locals 2

    .prologue
    .line 181
    iget-wide v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->mMatchLostTaskInterval:J

    return-wide v0
.end method

.method public getMatchMode()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->mMatchMode:I

    return v0
.end method

.method public getNumOfMatches()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->mNumOfMatchesPerFilter:I

    return v0
.end method

.method public getReportDelayMillis()J
    .locals 2

    .prologue
    .line 188
    iget-wide v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->mReportDelayMillis:J

    return-wide v0
.end method

.method public getScanMode()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->mScanMode:I

    return v0
.end method

.method public getUseHardwareBatchingIfSupported()Z
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->mUseHardwareBatchingIfSupported:Z

    return v0
.end method

.method public getUseHardwareCallbackTypesIfSupported()Z
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->mUseHardwareCallbackTypesIfSupported:Z

    return v0
.end method

.method public getUseHardwareFilteringIfSupported()Z
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->mUseHardwareFilteringIfSupported:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 217
    iget v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->mScanMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    iget v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->mCallbackType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    iget-wide v4, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->mReportDelayMillis:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 220
    iget v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->mMatchMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    iget v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->mNumOfMatchesPerFilter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    iget-boolean v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->mUseHardwareFilteringIfSupported:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    iget-boolean v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->mUseHardwareBatchingIfSupported:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 224
    return-void

    :cond_0
    move v0, v2

    .line 222
    goto :goto_0

    :cond_1
    move v1, v2

    .line 223
    goto :goto_1
.end method
