.class Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackImpl;
.super Landroid/bluetooth/le/ScanCallback;
.source "BluetoothLeScannerImplLollipop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScanCallbackImpl"
.end annotation


# instance fields
.field private mLastBatchTimestamp:J

.field final synthetic this$0:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop;


# direct methods
.method private constructor <init>(Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackImpl;->this$0:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop;

    invoke-direct {p0}, Landroid/bluetooth/le/ScanCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop;Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$1;)V
    .locals 0
    .param p1, "x0"    # Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop;
    .param p2, "x1"    # Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$1;

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackImpl;-><init>(Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop;)V

    return-void
.end method


# virtual methods
.method public onBatchScanResults(Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 137
    .local p1, "_results":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanResult;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackImpl;->this$0:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop;

    invoke-static {v3}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop;->access$100(Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop;)Ljava/util/Map;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;

    .line 138
    .local v14, "wrapper":Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;
    if-eqz v14, :cond_0

    .line 140
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 141
    .local v12, "now":J
    move-object/from16 v0, p0

    iget-wide v4, v0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackImpl;->mLastBatchTimestamp:J

    invoke-virtual {v14}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->getScanSettings()Lno/nordicsemi/android/support/v18/scanner/ScanSettings;

    move-result-object v3

    invoke-virtual {v3}, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->getReportDelayMillis()J

    move-result-wide v6

    sub-long v6, v12, v6

    const-wide/16 v16, 0x5

    add-long v6, v6, v16

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    .line 155
    .end local v12    # "now":J
    :cond_0
    :goto_0
    return-void

    .line 144
    .restart local v12    # "now":J
    :cond_1
    move-object/from16 v0, p0

    iput-wide v12, v0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackImpl;->mLastBatchTimestamp:J

    .line 146
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 147
    .local v11, "results":Ljava/util/List;, "Ljava/util/List<Lno/nordicsemi/android/support/v18/scanner/ScanResult;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/bluetooth/le/ScanResult;

    .line 148
    .local v8, "_result":Landroid/bluetooth/le/ScanResult;
    invoke-virtual {v8}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v8}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    move-result-object v9

    .line 149
    .local v9, "data":[B
    :goto_2
    new-instance v2, Lno/nordicsemi/android/support/v18/scanner/ScanResult;

    invoke-virtual {v8}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-static {v9}, Lno/nordicsemi/android/support/v18/scanner/ScanRecord;->parseFromBytes([B)Lno/nordicsemi/android/support/v18/scanner/ScanRecord;

    move-result-object v4

    invoke-virtual {v8}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result v5

    invoke-virtual {v8}, Landroid/bluetooth/le/ScanResult;->getTimestampNanos()J

    move-result-wide v6

    invoke-direct/range {v2 .. v7}, Lno/nordicsemi/android/support/v18/scanner/ScanResult;-><init>(Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/support/v18/scanner/ScanRecord;IJ)V

    .line 150
    .local v2, "result":Lno/nordicsemi/android/support/v18/scanner/ScanResult;
    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 148
    .end local v2    # "result":Lno/nordicsemi/android/support/v18/scanner/ScanResult;
    .end local v9    # "data":[B
    :cond_2
    const/4 v9, 0x0

    goto :goto_2

    .line 153
    .end local v8    # "_result":Landroid/bluetooth/le/ScanResult;
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackImpl;->this$0:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop;

    invoke-static {v3}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop;->access$200(Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop;)Z

    move-result v3

    invoke-virtual {v14, v11, v3}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->handleScanResults(Ljava/util/List;Z)V

    goto :goto_0
.end method

.method public onScanFailed(I)V
    .locals 5
    .param p1, "errorCode"    # I
    .annotation build Landroid/support/annotation/RequiresPermission;
        allOf = {
            "android.permission.BLUETOOTH_ADMIN",
            "android.permission.BLUETOOTH"
        }
    .end annotation

    .prologue
    .line 160
    iget-object v3, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackImpl;->this$0:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop;

    invoke-static {v3}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop;->access$100(Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;

    .line 161
    .local v2, "wrapper":Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;
    if-nez v2, :cond_0

    .line 182
    :goto_0
    return-void

    .line 164
    :cond_0
    invoke-virtual {v2}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->getScanSettings()Lno/nordicsemi/android/support/v18/scanner/ScanSettings;

    move-result-object v1

    .line 168
    .local v1, "settings":Lno/nordicsemi/android/support/v18/scanner/ScanSettings;
    invoke-virtual {v1}, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->getUseHardwareCallbackTypesIfSupported()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->getCallbackType()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 172
    invoke-virtual {v1}, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->disableUseHardwareCallbackTypes()V

    .line 174
    invoke-virtual {v2}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->getScanCallback()Lno/nordicsemi/android/support/v18/scanner/ScanCallback;

    move-result-object v0

    .line 175
    .local v0, "callback":Lno/nordicsemi/android/support/v18/scanner/ScanCallback;
    iget-object v3, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackImpl;->this$0:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop;

    invoke-virtual {v3, v0}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop;->stopScan(Lno/nordicsemi/android/support/v18/scanner/ScanCallback;)V

    .line 176
    iget-object v3, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackImpl;->this$0:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop;

    invoke-virtual {v2}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->getScanFilters()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4, v1, v0}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop;->startScanInternal(Ljava/util/List;Lno/nordicsemi/android/support/v18/scanner/ScanSettings;Lno/nordicsemi/android/support/v18/scanner/ScanCallback;)V

    goto :goto_0

    .line 181
    .end local v0    # "callback":Lno/nordicsemi/android/support/v18/scanner/ScanCallback;
    :cond_1
    invoke-virtual {v2, p1}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->onScanManagerErrorCallback(I)V

    goto :goto_0
.end method

.method public onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .locals 8
    .param p1, "callbackType"    # I
    .param p2, "_result"    # Landroid/bluetooth/le/ScanResult;

    .prologue
    .line 126
    iget-object v1, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop$ScanCallbackImpl;->this$0:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop;

    invoke-static {v1}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop;->access$100(Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;

    .line 127
    .local v7, "wrapper":Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;
    if-eqz v7, :cond_0

    .line 128
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    move-result-object v6

    .line 129
    .local v6, "data":[B
    :goto_0
    new-instance v0, Lno/nordicsemi/android/support/v18/scanner/ScanResult;

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-static {v6}, Lno/nordicsemi/android/support/v18/scanner/ScanRecord;->parseFromBytes([B)Lno/nordicsemi/android/support/v18/scanner/ScanRecord;

    move-result-object v2

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result v3

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getTimestampNanos()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lno/nordicsemi/android/support/v18/scanner/ScanResult;-><init>(Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/support/v18/scanner/ScanRecord;IJ)V

    .line 131
    .local v0, "result":Lno/nordicsemi/android/support/v18/scanner/ScanResult;
    invoke-virtual {v7, v0}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->handleScanResult(Lno/nordicsemi/android/support/v18/scanner/ScanResult;)V

    .line 133
    .end local v0    # "result":Lno/nordicsemi/android/support/v18/scanner/ScanResult;
    .end local v6    # "data":[B
    :cond_0
    return-void

    .line 128
    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method
