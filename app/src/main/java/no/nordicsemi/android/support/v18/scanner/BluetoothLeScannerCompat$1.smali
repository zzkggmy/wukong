.class Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$1;
.super Ljava/lang/Object;
.source "BluetoothLeScannerCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;->postCallbackError(Lno/nordicsemi/android/support/v18/scanner/ScanCallback;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;

.field final synthetic val$callback:Lno/nordicsemi/android/support/v18/scanner/ScanCallback;

.field final synthetic val$errorCode:I


# direct methods
.method constructor <init>(Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;Lno/nordicsemi/android/support/v18/scanner/ScanCallback;I)V
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$1;->this$0:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;

    iput-object p2, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$1;->val$callback:Lno/nordicsemi/android/support/v18/scanner/ScanCallback;

    iput p3, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$1;->val$errorCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$1;->val$callback:Lno/nordicsemi/android/support/v18/scanner/ScanCallback;

    iget v1, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat$1;->val$errorCode:I

    invoke-virtual {v0, v1}, Lno/nordicsemi/android/support/v18/scanner/ScanCallback;->onScanFailed(I)V

    .line 345
    return-void
.end method
