.class public Lorg/apache/shiro/crypto/hash/format/HexFormat;
.super Ljava/lang/Object;
.source "HexFormat.java"

# interfaces
.implements Lorg/apache/shiro/crypto/hash/format/HashFormat;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public format(Lorg/apache/shiro/crypto/hash/Hash;)Ljava/lang/String;
    .locals 1
    .param p1, "hash"    # Lorg/apache/shiro/crypto/hash/Hash;

    .prologue
    .line 39
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/apache/shiro/crypto/hash/Hash;->toHex()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
