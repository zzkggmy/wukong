.class public final Lno/nordicsemi/android/support/v18/scanner/ScanSettings$Builder;
.super Ljava/lang/Object;
.source "ScanSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lno/nordicsemi/android/support/v18/scanner/ScanSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


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
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x2710

    const/4 v2, 0x1

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    const/4 v0, 0x0

    iput v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings$Builder;->mScanMode:I

    .line 249
    iput v2, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings$Builder;->mCallbackType:I

    .line 250
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings$Builder;->mReportDelayMillis:J

    .line 251
    iput v2, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings$Builder;->mMatchMode:I

    .line 252
    const/4 v0, 0x3

    iput v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings$Builder;->mNumOfMatchesPerFilter:I

    .line 253
    iput-boolean v2, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings$Builder;->mUseHardwareFilteringIfSupported:Z

    .line 254
    iput-boolean v2, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings$Builder;->mUseHardwareBatchingIfSupported:Z

    .line 255
    iput-boolean v2, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings$Builder;->mUseHardwareCallbackTypesIfSupported:Z

    .line 256
    iput-wide v4, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings$Builder;->mMatchLostDeviceTimeout:J

    .line 257
    iput-wide v4, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings$Builder;->mMatchLostTaskInterval:J

    return-void
.end method

.method private isValidCallbackType(I)Z
    .locals 2
    .param p1, "callbackType"    # I

    .prologue
    const/4 v0, 0x1

    .line 292
    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 297
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x6

    if-eq p1, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public build()Lno/nordicsemi/android/support/v18/scanner/ScanSettings;
    .locals 15

    .prologue
    .line 406
    new-instance v0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;

    iget v1, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings$Builder;->mScanMode:I

    iget v2, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings$Builder;->mCallbackType:I

    iget-wide v3, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings$Builder;->mReportDelayMillis:J

    iget v5, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings$Builder;->mMatchMode:I

    iget v6, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings$Builder;->mNumOfMatchesPerFilter:I

    iget-boolean v7, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings$Builder;->mUseHardwareFilteringIfSupported:Z

    iget-boolean v8, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings$Builder;->mUseHardwareBatchingIfSupported:Z

    iget-boolean v9, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings$Builder;->mUseHardwareCallbackTypesIfSupported:Z

    iget-wide v10, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings$Builder;->mMatchLostDeviceTimeout:J

    iget-wide v12, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings$Builder;->mMatchLostTaskInterval:J

    const/4 v14, 0x0

    invoke-direct/range {v0 .. v14}, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;-><init>(IIJIIZZZJJLno/nordicsemi/android/support/v18/scanner/ScanSettings$1;)V

    return-object v0
.end method

.method public setCallbackType(I)Lno/nordicsemi/android/support/v18/scanner/ScanSettings$Builder;
    .locals 3
    .param p1, "callbackType"    # I

    .prologue
    .line 283
    invoke-direct {p0, p1}, Lno/nordicsemi/android/support/v18/scanner/ScanSettings$Builder;->isValidCallbackType(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 284
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid callback type - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_0
    iput p1, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings$Builder;->mCallbackType:I

    .line 287
    return-object p0
.end method

.method public setMatchMode(I)Lno/nordicsemi/android/support/v18/scanner/ScanSettings$Builder;
    .locals 3
    .param p1, "matchMode"    # I

    .prologue
    .line 343
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    .line 345
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid matchMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :cond_1
    iput p1, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings$Builder;->mMatchMode:I

    .line 348
    return-object p0
.end method

.method public setMatchOptions(JJ)Lno/nordicsemi/android/support/v18/scanner/ScanSettings$Builder;
    .locals 5
    .param p1, "deviceTimeoutMillis"    # J
    .param p3, "taskIntervalMillis"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 394
    cmp-long v0, p1, v2

    if-lez v0, :cond_0

    cmp-long v0, p3, v2

    if-gtz v0, :cond_1

    .line 395
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxDeviceAgeMillis and taskIntervalMillis must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 397
    :cond_1
    iput-wide p1, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings$Builder;->mMatchLostDeviceTimeout:J

    .line 398
    iput-wide p3, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings$Builder;->mMatchLostTaskInterval:J

    .line 399
    return-object p0
.end method

.method public setNumOfMatches(I)Lno/nordicsemi/android/support/v18/scanner/ScanSettings$Builder;
    .locals 3
    .param p1, "numOfMatches"    # I

    .prologue
    .line 326
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x3

    if-le p1, v0, :cond_1

    .line 328
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid numOfMatches "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 330
    :cond_1
    iput p1, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings$Builder;->mNumOfMatchesPerFilter:I

    .line 331
    return-object p0
.end method

.method public setReportDelay(J)Lno/nordicsemi/android/support/v18/scanner/ScanSettings$Builder;
    .locals 3
    .param p1, "reportDelayMillis"    # J

    .prologue
    .line 309
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 310
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "reportDelay must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_0
    iput-wide p1, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings$Builder;->mReportDelayMillis:J

    .line 313
    return-object p0
.end method

.method public setScanMode(I)Lno/nordicsemi/android/support/v18/scanner/ScanSettings$Builder;
    .locals 3
    .param p1, "scanMode"    # I

    .prologue
    .line 268
    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    .line 269
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid scan mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_1
    iput p1, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings$Builder;->mScanMode:I

    .line 272
    return-object p0
.end method

.method public setUseHardwareBatchingIfSupported(Z)Lno/nordicsemi/android/support/v18/scanner/ScanSettings$Builder;
    .locals 0
    .param p1, "use"    # Z

    .prologue
    .line 370
    iput-boolean p1, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings$Builder;->mUseHardwareBatchingIfSupported:Z

    .line 371
    return-object p0
.end method

.method public setUseHardwareCallbackTypesIfSupported(Z)Lno/nordicsemi/android/support/v18/scanner/ScanSettings$Builder;
    .locals 0
    .param p1, "use"    # Z

    .prologue
    .line 382
    iput-boolean p1, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings$Builder;->mUseHardwareCallbackTypesIfSupported:Z

    .line 383
    return-object p0
.end method

.method public setUseHardwareFilteringIfSupported(Z)Lno/nordicsemi/android/support/v18/scanner/ScanSettings$Builder;
    .locals 0
    .param p1, "use"    # Z

    .prologue
    .line 358
    iput-boolean p1, p0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings$Builder;->mUseHardwareFilteringIfSupported:Z

    .line 359
    return-object p0
.end method
