.class Lno/nordicsemi/android/support/v18/scanner/BluetoothLeUtils;
.super Ljava/lang/Object;
.source "BluetoothLeUtils.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkAdapterStateOn(Landroid/bluetooth/BluetoothAdapter;)V
    .locals 2
    .param p0, "adapter"    # Landroid/bluetooth/BluetoothAdapter;
    .annotation build Landroid/support/annotation/RequiresPermission;
        value = "android.permission.BLUETOOTH"
    .end annotation

    .prologue
    .line 135
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    .line 136
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "BT Adapter is not turned ON"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_1
    return-void
.end method

.method static equals(Landroid/util/SparseArray;Landroid/util/SparseArray;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<[B>;",
            "Landroid/util/SparseArray",
            "<[B>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    .local p1, "otherArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 82
    if-ne p0, p1, :cond_0

    move v1, v3

    .line 99
    :goto_0
    return v1

    .line 85
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    move v1, v4

    .line 86
    goto :goto_0

    .line 88
    :cond_2
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-eq v1, v2, :cond_3

    move v1, v4

    .line 89
    goto :goto_0

    .line 93
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 94
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    if-ne v1, v2, :cond_4

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    move v1, v4

    .line 96
    goto :goto_0

    .line 93
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    move v1, v3

    .line 99
    goto :goto_0
.end method

.method static equals(Ljava/util/Map;Ljava/util/Map;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TT;[B>;",
            "Ljava/util/Map",
            "<TT;[B>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TT;[B>;"
    .local p1, "otherMap":Ljava/util/Map;, "Ljava/util/Map<TT;[B>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 106
    if-ne p0, p1, :cond_1

    .line 124
    :cond_0
    :goto_0
    return v3

    .line 109
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v3, v4

    .line 110
    goto :goto_0

    .line 112
    :cond_3
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v5

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v6

    if-eq v5, v6, :cond_4

    move v3, v4

    .line 113
    goto :goto_0

    .line 115
    :cond_4
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 116
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    move v3, v4

    .line 117
    goto :goto_0

    .line 119
    :cond_5
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 120
    .local v1, "key":Ljava/lang/Object;, "TT;"
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lno/nordicsemi/android/support/v18/scanner/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    move v3, v4

    .line 121
    goto :goto_0
.end method

.method static toString(Landroid/util/SparseArray;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<[B>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    if-nez p0, :cond_0

    .line 39
    const-string v2, "null"

    .line 50
    :goto_0
    return-object v2

    .line 41
    :cond_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 42
    const-string v2, "{}"

    goto :goto_0

    .line 44
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v2, 0x7b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 47
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 49
    :cond_2
    const/16 v2, 0x7d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method static toString(Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TT;[B>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TT;[B>;"
    if-nez p0, :cond_0

    .line 58
    const-string v4, "null"

    .line 75
    :goto_0
    return-object v4

    .line 60
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 61
    const-string v4, "{}"

    goto :goto_0

    .line 63
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v4, 0x7b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 66
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TT;[B>;>;"
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 67
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 68
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;[B>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 69
    .local v3, "key":Ljava/lang/Object;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-static {v4}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 71
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 74
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;[B>;"
    .end local v3    # "key":Ljava/lang/Object;
    :cond_3
    const/16 v4, 0x7d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method
