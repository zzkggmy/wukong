.class final Lno/nordicsemi/android/support/v18/scanner/ScanSettings$1;
.super Ljava/lang/Object;
.source "ScanSettings.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lno/nordicsemi/android/support/v18/scanner/ScanSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lno/nordicsemi/android/support/v18/scanner/ScanSettings;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 232
    invoke-virtual {p0, p1}, Lno/nordicsemi/android/support/v18/scanner/ScanSettings$1;->createFromParcel(Landroid/os/Parcel;)Lno/nordicsemi/android/support/v18/scanner/ScanSettings;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lno/nordicsemi/android/support/v18/scanner/ScanSettings;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 240
    new-instance v0, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lno/nordicsemi/android/support/v18/scanner/ScanSettings;-><init>(Landroid/os/Parcel;Lno/nordicsemi/android/support/v18/scanner/ScanSettings$1;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 232
    invoke-virtual {p0, p1}, Lno/nordicsemi/android/support/v18/scanner/ScanSettings$1;->newArray(I)[Lno/nordicsemi/android/support/v18/scanner/ScanSettings;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lno/nordicsemi/android/support/v18/scanner/ScanSettings;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 235
    new-array v0, p1, [Lno/nordicsemi/android/support/v18/scanner/ScanSettings;

    return-object v0
.end method
