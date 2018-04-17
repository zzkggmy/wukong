.class final Lno/nordicsemi/android/support/v18/scanner/ScanFilter$1;
.super Ljava/lang/Object;
.source "ScanFilter.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lno/nordicsemi/android/support/v18/scanner/ScanFilter;
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
        "Lno/nordicsemi/android/support/v18/scanner/ScanFilter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 135
    invoke-virtual {p0, p1}, Lno/nordicsemi/android/support/v18/scanner/ScanFilter$1;->createFromParcel(Landroid/os/Parcel;)Lno/nordicsemi/android/support/v18/scanner/ScanFilter;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lno/nordicsemi/android/support/v18/scanner/ScanFilter;
    .locals 16
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 144
    new-instance v1, Lno/nordicsemi/android/support/v18/scanner/ScanFilter$Builder;

    invoke-direct {v1}, Lno/nordicsemi/android/support/v18/scanner/ScanFilter$Builder;-><init>()V

    .line 145
    .local v1, "builder":Lno/nordicsemi/android/support/v18/scanner/ScanFilter$Builder;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_0

    .line 146
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Lno/nordicsemi/android/support/v18/scanner/ScanFilter$Builder;->setDeviceName(Ljava/lang/String;)Lno/nordicsemi/android/support/v18/scanner/ScanFilter$Builder;

    .line 148
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1

    .line 149
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Lno/nordicsemi/android/support/v18/scanner/ScanFilter$Builder;->setDeviceAddress(Ljava/lang/String;)Lno/nordicsemi/android/support/v18/scanner/ScanFilter$Builder;

    .line 151
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_2

    .line 152
    const-class v14, Landroid/os/ParcelUuid;

    invoke-virtual {v14}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Landroid/os/ParcelUuid;

    .line 153
    .local v12, "uuid":Landroid/os/ParcelUuid;
    invoke-virtual {v1, v12}, Lno/nordicsemi/android/support/v18/scanner/ScanFilter$Builder;->setServiceUuid(Landroid/os/ParcelUuid;)Lno/nordicsemi/android/support/v18/scanner/ScanFilter$Builder;

    .line 154
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_2

    .line 155
    const-class v14, Landroid/os/ParcelUuid;

    invoke-virtual {v14}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Landroid/os/ParcelUuid;

    .line 157
    .local v13, "uuidMask":Landroid/os/ParcelUuid;
    invoke-virtual {v1, v12, v13}, Lno/nordicsemi/android/support/v18/scanner/ScanFilter$Builder;->setServiceUuid(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Lno/nordicsemi/android/support/v18/scanner/ScanFilter$Builder;

    .line 160
    .end local v12    # "uuid":Landroid/os/ParcelUuid;
    .end local v13    # "uuidMask":Landroid/os/ParcelUuid;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_3

    .line 161
    const-class v14, Landroid/os/ParcelUuid;

    invoke-virtual {v14}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/os/ParcelUuid;

    .line 163
    .local v11, "serviceDataUuid":Landroid/os/ParcelUuid;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_3

    .line 164
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 165
    .local v8, "serviceDataLength":I
    new-array v7, v8, [B

    .line 166
    .local v7, "serviceData":[B
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->readByteArray([B)V

    .line 167
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-nez v14, :cond_5

    .line 168
    invoke-virtual {v1, v11, v7}, Lno/nordicsemi/android/support/v18/scanner/ScanFilter$Builder;->setServiceData(Landroid/os/ParcelUuid;[B)Lno/nordicsemi/android/support/v18/scanner/ScanFilter$Builder;

    .line 179
    .end local v7    # "serviceData":[B
    .end local v8    # "serviceDataLength":I
    .end local v11    # "serviceDataUuid":Landroid/os/ParcelUuid;
    :cond_3
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 180
    .local v6, "manufacturerId":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_4

    .line 181
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 182
    .local v3, "manufacturerDataLength":I
    new-array v2, v3, [B

    .line 183
    .local v2, "manufacturerData":[B
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readByteArray([B)V

    .line 184
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-nez v14, :cond_6

    .line 185
    invoke-virtual {v1, v6, v2}, Lno/nordicsemi/android/support/v18/scanner/ScanFilter$Builder;->setManufacturerData(I[B)Lno/nordicsemi/android/support/v18/scanner/ScanFilter$Builder;

    .line 195
    .end local v2    # "manufacturerData":[B
    .end local v3    # "manufacturerDataLength":I
    :cond_4
    :goto_1
    invoke-virtual {v1}, Lno/nordicsemi/android/support/v18/scanner/ScanFilter$Builder;->build()Lno/nordicsemi/android/support/v18/scanner/ScanFilter;

    move-result-object v14

    return-object v14

    .line 170
    .end local v6    # "manufacturerId":I
    .restart local v7    # "serviceData":[B
    .restart local v8    # "serviceDataLength":I
    .restart local v11    # "serviceDataUuid":Landroid/os/ParcelUuid;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 171
    .local v10, "serviceDataMaskLength":I
    new-array v9, v10, [B

    .line 172
    .local v9, "serviceDataMask":[B
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->readByteArray([B)V

    .line 173
    invoke-virtual {v1, v11, v7, v9}, Lno/nordicsemi/android/support/v18/scanner/ScanFilter$Builder;->setServiceData(Landroid/os/ParcelUuid;[B[B)Lno/nordicsemi/android/support/v18/scanner/ScanFilter$Builder;

    goto :goto_0

    .line 187
    .end local v7    # "serviceData":[B
    .end local v8    # "serviceDataLength":I
    .end local v9    # "serviceDataMask":[B
    .end local v10    # "serviceDataMaskLength":I
    .end local v11    # "serviceDataUuid":Landroid/os/ParcelUuid;
    .restart local v2    # "manufacturerData":[B
    .restart local v3    # "manufacturerDataLength":I
    .restart local v6    # "manufacturerId":I
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 188
    .local v5, "manufacturerDataMaskLength":I
    new-array v4, v5, [B

    .line 189
    .local v4, "manufacturerDataMask":[B
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->readByteArray([B)V

    .line 190
    invoke-virtual {v1, v6, v2, v4}, Lno/nordicsemi/android/support/v18/scanner/ScanFilter$Builder;->setManufacturerData(I[B[B)Lno/nordicsemi/android/support/v18/scanner/ScanFilter$Builder;

    goto :goto_1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 135
    invoke-virtual {p0, p1}, Lno/nordicsemi/android/support/v18/scanner/ScanFilter$1;->newArray(I)[Lno/nordicsemi/android/support/v18/scanner/ScanFilter;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lno/nordicsemi/android/support/v18/scanner/ScanFilter;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 139
    new-array v0, p1, [Lno/nordicsemi/android/support/v18/scanner/ScanFilter;

    return-object v0
.end method
