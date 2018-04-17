.class public abstract Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;
.super Ljava/lang/Object;
.source "BluetoothLeScannerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;
    }
.end annotation


# static fields
.field private static mInstance:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;->mHandler:Landroid/os/Handler;

    .line 70
    return-void
.end method

.method static synthetic access$100(Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;

    .prologue
    .line 50
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;Lno/nordicsemi/android/support/v18/scanner/ScanCallback;I)V
    .locals 0
    .param p0, "x0"    # Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;
    .param p1, "x1"    # Lno/nordicsemi/android/support/v18/scanner/ScanCallback;
    .param p2, "x2"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;->postCallbackError(Lno/nordicsemi/android/support/v18/scanner/ScanCallback;I)V

    return-void
.end method

.method public static getScanner()Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;
    .locals 2

    .prologue
    .line 59
    sget-object v0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;->mInstance:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;

    if-eqz v0, :cond_0

    .line 60
    sget-object v0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;->mInstance:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;

    .line 65
    :goto_0
    return-object v0

    .line 61
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 62
    new-instance v0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplMarshmallow;

    invoke-direct {v0}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplMarshmallow;-><init>()V

    sput-object v0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;->mInstance:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;

    goto :goto_0

    .line 63
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 64
    new-instance v0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop;

    invoke-direct {v0}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplLollipop;-><init>()V

    sput-object v0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;->mInstance:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;

    goto :goto_0

    .line 65
    :cond_2
    new-instance v0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;

    invoke-direct {v0}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;-><init>()V

    sput-object v0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;->mInstance:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;

    goto :goto_0
.end method

.method private postCallbackError(Lno/nordicsemi/android/support/v18/scanner/ScanCallback;I)V
    .locals 2
    .param p1, "callback"    # Lno/nordicsemi/android/support/v18/scanner/ScanCallback;
    .param p2, "errorCode"    # I

    .prologue
    .line 341
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;->mHandler:Landroid/os/Handler;

    new-instance v1, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$1;

    invoke-direct {v1, p0, p1, p2}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$1;-><init>(Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;Lno/nordicsemi/android/support/v18/scanner/ScanCallback;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 347
    return-void
.end method


# virtual methods
.method public abstract flushPendingScanResults(Lno/nordicsemi/android/support/v18/scanner/ScanCallback;)V
.end method

.method public startScan(Ljava/util/List;Lno/nordicsemi/android/support/v18/scanner/ScanSettings;Lno/nordicsemi/android/support/v18/scanner/ScanCallback;)V
    .locals 2
    .param p2, "settings"    # Lno/nordicsemi/android/support/v18/scanner/ScanSettings;
    .param p3, "callback"    # Lno/nordicsemi/android/support/v18/scanner/ScanCallback;
    .annotation build Landroid/support/annotation/RequiresPermission;
        allOf = {
            "android.permission.BLUETOOTH_ADMIN",
            "android.permission.BLUETOOTH"
        }
    .end annotation

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
    .line 109
    .local p1, "filters":Ljava/util/List;, "Ljava/util/List<Lno/nordicsemi/android/support/v18/scanner/ScanFilter;>;"
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 110
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "settings or callback is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;->startScanInternal(Ljava/util/List;Lno/nordicsemi/android/support/v18/scanner/ScanSettings;Lno/nordicsemi/android/support/v18/scanner/ScanCallback;)V

    .line 113
    return-void
.end method

.method public startScan(Lno/nordicsemi/android/support/v18/scanner/ScanCallback;)V
    .locals 2
    .param p1, "callback"    # Lno/nordicsemi/android/support/v18/scanner/ScanCallback;
    .annotation build Landroid/support/annotation/RequiresPermission;
        allOf = {
            "android.permission.BLUETOOTH_ADMIN",
            "android.permission.BLUETOOTH"
        }
    .end annotation

    .prologue
    .line 87
    if-nez p1, :cond_0

    .line 88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_0
    const/4 v0, 0x0

    new-instance v1, Lno/nordicsemi/android/support/v18/scanner/ScanSettings$Builder;

    invoke-direct {v1}, Lno/nordicsemi/android/support/v18/scanner/ScanSettings$Builder;-><init>()V

    invoke-virtual {v1}, Lno/nordicsemi/android/support/v18/scanner/ScanSettings$Builder;->build()Lno/nordicsemi/android/support/v18/scanner/ScanSettings;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;->startScanInternal(Ljava/util/List;Lno/nordicsemi/android/support/v18/scanner/ScanSettings;Lno/nordicsemi/android/support/v18/scanner/ScanCallback;)V

    .line 91
    return-void
.end method

.method abstract startScanInternal(Ljava/util/List;Lno/nordicsemi/android/support/v18/scanner/ScanSettings;Lno/nordicsemi/android/support/v18/scanner/ScanCallback;)V
    .annotation build Landroid/support/annotation/RequiresPermission;
        allOf = {
            "android.permission.BLUETOOTH_ADMIN",
            "android.permission.BLUETOOTH"
        }
    .end annotation

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
.end method

.method public abstract stopScan(Lno/nordicsemi/android/support/v18/scanner/ScanCallback;)V
    .annotation build Landroid/support/annotation/RequiresPermission;
        value = "android.permission.BLUETOOTH_ADMIN"
    .end annotation
.end method
