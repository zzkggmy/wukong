.class public final enum Lorg/apache/shiro/crypto/hash/format/ProvidedHashFormat;
.super Ljava/lang/Enum;
.source "ProvidedHashFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/shiro/crypto/hash/format/ProvidedHashFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/shiro/crypto/hash/format/ProvidedHashFormat;

.field public static final enum BASE64:Lorg/apache/shiro/crypto/hash/format/ProvidedHashFormat;

.field public static final enum HEX:Lorg/apache/shiro/crypto/hash/format/ProvidedHashFormat;

.field public static final enum SHIRO1:Lorg/apache/shiro/crypto/hash/format/ProvidedHashFormat;


# instance fields
.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/shiro/crypto/hash/format/HashFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 31
    new-instance v0, Lorg/apache/shiro/crypto/hash/format/ProvidedHashFormat;

    const-string v1, "HEX"

    const-class v2, Lorg/apache/shiro/crypto/hash/format/HexFormat;

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/shiro/crypto/hash/format/ProvidedHashFormat;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lorg/apache/shiro/crypto/hash/format/ProvidedHashFormat;->HEX:Lorg/apache/shiro/crypto/hash/format/ProvidedHashFormat;

    .line 36
    new-instance v0, Lorg/apache/shiro/crypto/hash/format/ProvidedHashFormat;

    const-string v1, "BASE64"

    const-class v2, Lorg/apache/shiro/crypto/hash/format/Base64Format;

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/shiro/crypto/hash/format/ProvidedHashFormat;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lorg/apache/shiro/crypto/hash/format/ProvidedHashFormat;->BASE64:Lorg/apache/shiro/crypto/hash/format/ProvidedHashFormat;

    .line 41
    new-instance v0, Lorg/apache/shiro/crypto/hash/format/ProvidedHashFormat;

    const-string v1, "SHIRO1"

    const-class v2, Lorg/apache/shiro/crypto/hash/format/Shiro1CryptFormat;

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/shiro/crypto/hash/format/ProvidedHashFormat;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lorg/apache/shiro/crypto/hash/format/ProvidedHashFormat;->SHIRO1:Lorg/apache/shiro/crypto/hash/format/ProvidedHashFormat;

    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/apache/shiro/crypto/hash/format/ProvidedHashFormat;

    sget-object v1, Lorg/apache/shiro/crypto/hash/format/ProvidedHashFormat;->HEX:Lorg/apache/shiro/crypto/hash/format/ProvidedHashFormat;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/shiro/crypto/hash/format/ProvidedHashFormat;->BASE64:Lorg/apache/shiro/crypto/hash/format/ProvidedHashFormat;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/shiro/crypto/hash/format/ProvidedHashFormat;->SHIRO1:Lorg/apache/shiro/crypto/hash/format/ProvidedHashFormat;

    aput-object v1, v0, v5

    sput-object v0, Lorg/apache/shiro/crypto/hash/format/ProvidedHashFormat;->$VALUES:[Lorg/apache/shiro/crypto/hash/format/ProvidedHashFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/shiro/crypto/hash/format/HashFormat;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/shiro/crypto/hash/format/HashFormat;>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput-object p3, p0, Lorg/apache/shiro/crypto/hash/format/ProvidedHashFormat;->clazz:Ljava/lang/Class;

    .line 47
    return-void
.end method

.method public static byId(Ljava/lang/String;)Lorg/apache/shiro/crypto/hash/format/ProvidedHashFormat;
    .locals 3
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 54
    if-nez p0, :cond_0

    .line 60
    :goto_0
    return-object v1

    .line 58
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/shiro/crypto/hash/format/ProvidedHashFormat;->valueOf(Ljava/lang/String;)Lorg/apache/shiro/crypto/hash/format/ProvidedHashFormat;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "ignored":Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/shiro/crypto/hash/format/ProvidedHashFormat;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    const-class v0, Lorg/apache/shiro/crypto/hash/format/ProvidedHashFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/shiro/crypto/hash/format/ProvidedHashFormat;

    return-object v0
.end method

.method public static values()[Lorg/apache/shiro/crypto/hash/format/ProvidedHashFormat;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lorg/apache/shiro/crypto/hash/format/ProvidedHashFormat;->$VALUES:[Lorg/apache/shiro/crypto/hash/format/ProvidedHashFormat;

    invoke-virtual {v0}, [Lorg/apache/shiro/crypto/hash/format/ProvidedHashFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/shiro/crypto/hash/format/ProvidedHashFormat;

    return-object v0
.end method


# virtual methods
.method getHashFormatClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/shiro/crypto/hash/format/HashFormat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/shiro/crypto/hash/format/ProvidedHashFormat;->clazz:Ljava/lang/Class;

    return-object v0
.end method
