.class public Lcom/baidu/tts/o/d;
.super Ljava/lang/Object;
.source "JsonTool.java"


# direct methods
.method public static a(Ljava/util/Set;)Lorg/json/JSONArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 15
    if-eqz p0, :cond_0

    .line 16
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 18
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lorg/json/JSONArray;)[Ljava/lang/String;
    .locals 4

    .prologue
    .line 23
    if-eqz p0, :cond_1

    .line 24
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 25
    new-array v0, v2, [Ljava/lang/String;

    .line 26
    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 32
    :goto_1
    return-object v0

    .line 27
    :cond_0
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    .line 28
    aput-object v3, v0, v1

    .line 26
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 32
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
