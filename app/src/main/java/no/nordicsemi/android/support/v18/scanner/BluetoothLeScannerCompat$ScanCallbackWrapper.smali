.class Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;
.super Ljava/lang/Object;
.source "BluetoothLeScannerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScanCallbackWrapper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$MatchLostNotifierTask;
    }
.end annotation


# instance fields
.field private final mDevicesInBatch:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDevicesInRange:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lno/nordicsemi/android/support/v18/scanner/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private final mFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lno/nordicsemi/android/support/v18/scanner/ScanFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final mFlushPendingScanResultsTask:Ljava/lang/Runnable;

.field private mMatchLostNotifierTask:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$MatchLostNotifierTask;

.field private final mScanCallback:Lno/nordicsemi/android/support/v18/scanner/ScanCallback;

.field private final mScanResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lno/nordicsemi/android/support/v18/scanner/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private final mScanSettings:Lno/nordicsemi/android/support/v18/scanner/ScanSettings;

.field final synthetic this$0:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;


# direct methods
.method constructor <init>(Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;Ljava/util/List;Lno/nordicsemi/android/support/v18/scanner/ScanSettings;Lno/nordicsemi/android/support/v18/scanner/ScanCallback;)V
    .locals 5
    .param p3, "settings"    # Lno/nordicsemi/android/support/v18/scanner/ScanSettings;
    .param p4, "callback"    # Lno/nordicsemi/android/support/v18/scanner/ScanCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lno/nordicsemi/android/support/v18/scanner/ScanFilter;",
            ">;",
            "Lno/nordicsemi/android/support/v18/scanner/ScanSettings;",
            "Lno/nordicsemi/android/support/v18/scanner/ScanCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "filters":Ljava/util/List;, "Ljava/util/List<Lno/nordicsemi/android/support/v18/scanner/ScanFilter;>;"
    const/4 v4, 0x0

    .line 165
    iput-object p1, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->this$0:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    new-instance v2, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$1;

    invoke-direct {v2, p0}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$1;-><init>(Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;)V

    iput-object v2, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mFlushPendingScanResultsTask:Ljava/lang/Runnable;

    .line 166
    iput-object p2, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mFilters:Ljava/util/List;

    .line 167
    iput-object p3, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mScanSettings:Lno/nordicsemi/android/support/v18/scanner/ScanSettings;

    .line 168
    iput-object p4, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mScanCallback:Lno/nordicsemi/android/support/v18/scanner/ScanCallback;

    .line 171
    invoke-virtual {p3}, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->getCallbackType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {p3}, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->getUseHardwareCallbackTypesIfSupported()Z

    move-result v2

    if-nez v2, :cond_0

    .line 172
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mDevicesInRange:Ljava/util/Map;

    .line 177
    :goto_0
    invoke-virtual {p3}, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->getReportDelayMillis()J

    move-result-wide v0

    .line 178
    .local v0, "delay":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 179
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mScanResults:Ljava/util/List;

    .line 180
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mDevicesInBatch:Ljava/util/List;

    .line 181
    invoke-static {p1}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;->access$100(Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mFlushPendingScanResultsTask:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 186
    :goto_1
    return-void

    .line 174
    .end local v0    # "delay":J
    :cond_0
    iput-object v4, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mDevicesInRange:Ljava/util/Map;

    goto :goto_0

    .line 183
    .restart local v0    # "delay":J
    :cond_1
    iput-object v4, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mScanResults:Ljava/util/List;

    .line 184
    iput-object v4, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mDevicesInBatch:Ljava/util/List;

    goto :goto_1
.end method

.method static synthetic access$000(Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;)Lno/nordicsemi/android/support/v18/scanner/ScanSettings;
    .locals 1
    .param p0, "x0"    # Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;

    .prologue
    .line 145
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mScanSettings:Lno/nordicsemi/android/support/v18/scanner/ScanSettings;

    return-object v0
.end method

.method static synthetic access$200(Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;

    .prologue
    .line 145
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mDevicesInRange:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;ZLno/nordicsemi/android/support/v18/scanner/ScanResult;)V
    .locals 0
    .param p0, "x0"    # Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Lno/nordicsemi/android/support/v18/scanner/ScanResult;

    .prologue
    .line 145
    invoke-direct {p0, p1, p2}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->onFoundOrLost(ZLno/nordicsemi/android/support/v18/scanner/ScanResult;)V

    return-void
.end method

.method static synthetic access$400(Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;)Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$MatchLostNotifierTask;
    .locals 1
    .param p0, "x0"    # Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;

    .prologue
    .line 145
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mMatchLostNotifierTask:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$MatchLostNotifierTask;

    return-object v0
.end method

.method static synthetic access$600(Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;)Lno/nordicsemi/android/support/v18/scanner/ScanCallback;
    .locals 1
    .param p0, "x0"    # Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;

    .prologue
    .line 145
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mScanCallback:Lno/nordicsemi/android/support/v18/scanner/ScanCallback;

    return-object v0
.end method

.method private matches(Lno/nordicsemi/android/support/v18/scanner/ScanResult;)Z
    .locals 3
    .param p1, "result"    # Lno/nordicsemi/android/support/v18/scanner/ScanResult;

    .prologue
    .line 297
    iget-object v2, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mFilters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;

    .line 298
    .local v0, "filter":Lno/nordicsemi/android/support/v18/scanner/ScanFilter;
    invoke-virtual {v0, p1}, Lno/nordicsemi/android/support/v18/scanner/ScanFilter;->matches(Lno/nordicsemi/android/support/v18/scanner/ScanResult;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 299
    const/4 v2, 0x1

    .line 301
    .end local v0    # "filter":Lno/nordicsemi/android/support/v18/scanner/ScanFilter;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private onBatchScanResults(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lno/nordicsemi/android/support/v18/scanner/ScanResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 314
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lno/nordicsemi/android/support/v18/scanner/ScanResult;>;"
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->this$0:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;

    invoke-static {v0}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;->access$100(Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$3;

    invoke-direct {v1, p0, p1}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$3;-><init>(Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 320
    return-void
.end method

.method private onFoundOrLost(ZLno/nordicsemi/android/support/v18/scanner/ScanResult;)V
    .locals 2
    .param p1, "onFound"    # Z
    .param p2, "scanResult"    # Lno/nordicsemi/android/support/v18/scanner/ScanResult;

    .prologue
    .line 323
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->this$0:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;

    invoke-static {v0}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;->access$100(Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$4;

    invoke-direct {v1, p0, p1, p2}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$4;-><init>(Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;ZLno/nordicsemi/android/support/v18/scanner/ScanResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 333
    return-void
.end method

.method private onScanResult(Lno/nordicsemi/android/support/v18/scanner/ScanResult;)V
    .locals 2
    .param p1, "scanResult"    # Lno/nordicsemi/android/support/v18/scanner/ScanResult;

    .prologue
    .line 305
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->this$0:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;

    invoke-static {v0}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;->access$100(Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$2;

    invoke-direct {v1, p0, p1}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$2;-><init>(Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;Lno/nordicsemi/android/support/v18/scanner/ScanResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 311
    return-void
.end method


# virtual methods
.method close()V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mScanResults:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->this$0:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;

    invoke-static {v0}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;->access$100(Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mFlushPendingScanResultsTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 192
    :cond_0
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mDevicesInRange:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mDevicesInRange:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 195
    :cond_1
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mMatchLostNotifierTask:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$MatchLostNotifierTask;

    if-eqz v0, :cond_2

    .line 196
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->this$0:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;

    invoke-static {v0}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;->access$100(Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mMatchLostNotifierTask:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$MatchLostNotifierTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 197
    const/4 v0, 0x0

    iput-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mMatchLostNotifierTask:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$MatchLostNotifierTask;

    .line 199
    :cond_2
    return-void
.end method

.method flushPendingScanResults()V
    .locals 3

    .prologue
    .line 214
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mScanResults:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 215
    iget-object v1, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mScanResults:Ljava/util/List;

    monitor-enter v1

    .line 216
    :try_start_0
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mScanCallback:Lno/nordicsemi/android/support/v18/scanner/ScanCallback;

    iget-object v2, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mScanResults:Ljava/util/List;

    invoke-virtual {v0, v2}, Lno/nordicsemi/android/support/v18/scanner/ScanCallback;->onBatchScanResults(Ljava/util/List;)V

    .line 217
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mScanResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 218
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mDevicesInBatch:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 219
    monitor-exit v1

    .line 221
    :cond_0
    return-void

    .line 219
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getScanCallback()Lno/nordicsemi/android/support/v18/scanner/ScanCallback;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mScanCallback:Lno/nordicsemi/android/support/v18/scanner/ScanCallback;

    return-object v0
.end method

.method getScanFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lno/nordicsemi/android/support/v18/scanner/ScanFilter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mFilters:Ljava/util/List;

    return-object v0
.end method

.method getScanSettings()Lno/nordicsemi/android/support/v18/scanner/ScanSettings;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mScanSettings:Lno/nordicsemi/android/support/v18/scanner/ScanSettings;

    return-object v0
.end method

.method handleScanResult(Lno/nordicsemi/android/support/v18/scanner/ScanResult;)V
    .locals 6
    .param p1, "scanResult"    # Lno/nordicsemi/android/support/v18/scanner/ScanResult;

    .prologue
    .line 248
    iget-object v2, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mFilters:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->matches(Lno/nordicsemi/android/support/v18/scanner/ScanResult;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    invoke-virtual {p1}, Lno/nordicsemi/android/support/v18/scanner/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, "deviceAddress":Ljava/lang/String;
    iget-object v2, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mDevicesInRange:Ljava/util/Map;

    if-eqz v2, :cond_3

    .line 256
    iget-object v2, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mDevicesInRange:Ljava/util/Map;

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lno/nordicsemi/android/support/v18/scanner/ScanResult;

    .line 257
    .local v1, "previousResult":Lno/nordicsemi/android/support/v18/scanner/ScanResult;
    if-nez v1, :cond_2

    .line 258
    iget-object v2, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mScanSettings:Lno/nordicsemi/android/support/v18/scanner/ScanSettings;

    invoke-virtual {v2}, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->getCallbackType()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-lez v2, :cond_2

    .line 259
    const/4 v2, 0x1

    invoke-direct {p0, v2, p1}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->onFoundOrLost(ZLno/nordicsemi/android/support/v18/scanner/ScanResult;)V

    .line 263
    :cond_2
    iget-object v2, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mScanSettings:Lno/nordicsemi/android/support/v18/scanner/ScanSettings;

    invoke-virtual {v2}, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->getCallbackType()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-lez v2, :cond_0

    iget-object v2, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mMatchLostNotifierTask:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$MatchLostNotifierTask;

    if-nez v2, :cond_0

    .line 264
    new-instance v2, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$MatchLostNotifierTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$MatchLostNotifierTask;-><init>(Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$1;)V

    iput-object v2, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mMatchLostNotifierTask:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$MatchLostNotifierTask;

    .line 265
    iget-object v2, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->this$0:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;

    invoke-static {v2}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;->access$100(Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mMatchLostNotifierTask:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$MatchLostNotifierTask;

    iget-object v4, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mScanSettings:Lno/nordicsemi/android/support/v18/scanner/ScanSettings;

    invoke-virtual {v4}, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->getMatchLostTaskInterval()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 270
    .end local v1    # "previousResult":Lno/nordicsemi/android/support/v18/scanner/ScanResult;
    :cond_3
    iget-object v2, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mScanSettings:Lno/nordicsemi/android/support/v18/scanner/ScanSettings;

    invoke-virtual {v2}, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->getReportDelayMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_5

    .line 271
    iget-object v3, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mScanResults:Ljava/util/List;

    monitor-enter v3

    .line 272
    :try_start_0
    iget-object v2, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mDevicesInBatch:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 273
    iget-object v2, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mScanResults:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    iget-object v2, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mDevicesInBatch:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    :cond_4
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 279
    :cond_5
    invoke-direct {p0, p1}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->onScanResult(Lno/nordicsemi/android/support/v18/scanner/ScanResult;)V

    goto :goto_0
.end method

.method handleScanResults(Ljava/util/List;Z)V
    .locals 4
    .param p2, "offloadedFilteringSupported"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lno/nordicsemi/android/support/v18/scanner/ScanResult;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 284
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lno/nordicsemi/android/support/v18/scanner/ScanResult;>;"
    move-object v0, p1

    .line 286
    .local v0, "filteredResults":Ljava/util/List;, "Ljava/util/List<Lno/nordicsemi/android/support/v18/scanner/ScanResult;>;"
    iget-object v3, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mFilters:Ljava/util/List;

    if-eqz v3, :cond_2

    if-eqz p2, :cond_0

    iget-object v3, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mScanSettings:Lno/nordicsemi/android/support/v18/scanner/ScanSettings;

    invoke-virtual {v3}, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;->getUseHardwareFilteringIfSupported()Z

    move-result v3

    if-nez v3, :cond_2

    .line 287
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "filteredResults":Ljava/util/List;, "Ljava/util/List<Lno/nordicsemi/android/support/v18/scanner/ScanResult;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 288
    .restart local v0    # "filteredResults":Ljava/util/List;, "Ljava/util/List<Lno/nordicsemi/android/support/v18/scanner/ScanResult;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lno/nordicsemi/android/support/v18/scanner/ScanResult;

    .line 289
    .local v2, "result":Lno/nordicsemi/android/support/v18/scanner/ScanResult;
    invoke-direct {p0, v2}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->matches(Lno/nordicsemi/android/support/v18/scanner/ScanResult;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 290
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 293
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "result":Lno/nordicsemi/android/support/v18/scanner/ScanResult;
    :cond_2
    invoke-direct {p0, v0}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->onBatchScanResults(Ljava/util/List;)V

    .line 294
    return-void
.end method

.method onScanManagerErrorCallback(I)V
    .locals 2
    .param p1, "errorCode"    # I

    .prologue
    .line 336
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->this$0:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;

    iget-object v1, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mScanCallback:Lno/nordicsemi/android/support/v18/scanner/ScanCallback;

    invoke-static {v0, v1, p1}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;->access$700(Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;Lno/nordicsemi/android/support/v18/scanner/ScanCallback;I)V

    .line 337
    return-void
.end method
