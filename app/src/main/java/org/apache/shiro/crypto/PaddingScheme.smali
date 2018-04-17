.class public final enum Lorg/apache/shiro/crypto/PaddingScheme;
.super Ljava/lang/Enum;
.source "PaddingScheme.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/shiro/crypto/PaddingScheme;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/shiro/crypto/PaddingScheme;

.field public static final enum ISO10126:Lorg/apache/shiro/crypto/PaddingScheme;

.field public static final enum NONE:Lorg/apache/shiro/crypto/PaddingScheme;

.field public static final enum OAEP:Lorg/apache/shiro/crypto/PaddingScheme;

.field public static final enum OAEPWithMd5AndMgf1:Lorg/apache/shiro/crypto/PaddingScheme;

.field public static final enum OAEPWithSha1AndMgf1:Lorg/apache/shiro/crypto/PaddingScheme;

.field public static final enum OAEPWithSha256AndMgf1:Lorg/apache/shiro/crypto/PaddingScheme;

.field public static final enum OAEPWithSha384AndMgf1:Lorg/apache/shiro/crypto/PaddingScheme;

.field public static final enum OAEPWithSha512AndMgf1:Lorg/apache/shiro/crypto/PaddingScheme;

.field public static final enum PKCS1:Lorg/apache/shiro/crypto/PaddingScheme;

.field public static final enum PKCS5:Lorg/apache/shiro/crypto/PaddingScheme;

.field public static final enum SSL3:Lorg/apache/shiro/crypto/PaddingScheme;


# instance fields
.field private final transformationName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 43
    new-instance v0, Lorg/apache/shiro/crypto/PaddingScheme;

    const-string v1, "NONE"

    const-string v2, "NoPadding"

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/shiro/crypto/PaddingScheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/shiro/crypto/PaddingScheme;->NONE:Lorg/apache/shiro/crypto/PaddingScheme;

    .line 49
    new-instance v0, Lorg/apache/shiro/crypto/PaddingScheme;

    const-string v1, "ISO10126"

    const-string v2, "ISO10126Padding"

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/shiro/crypto/PaddingScheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/shiro/crypto/PaddingScheme;->ISO10126:Lorg/apache/shiro/crypto/PaddingScheme;

    .line 77
    new-instance v0, Lorg/apache/shiro/crypto/PaddingScheme;

    const-string v1, "OAEP"

    const-string v2, "OAEPPadding"

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/shiro/crypto/PaddingScheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/shiro/crypto/PaddingScheme;->OAEP:Lorg/apache/shiro/crypto/PaddingScheme;

    .line 87
    new-instance v0, Lorg/apache/shiro/crypto/PaddingScheme;

    const-string v1, "OAEPWithMd5AndMgf1"

    const-string v2, "OAEPWithMD5AndMGF1Padding"

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/shiro/crypto/PaddingScheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/shiro/crypto/PaddingScheme;->OAEPWithMd5AndMgf1:Lorg/apache/shiro/crypto/PaddingScheme;

    .line 97
    new-instance v0, Lorg/apache/shiro/crypto/PaddingScheme;

    const-string v1, "OAEPWithSha1AndMgf1"

    const-string v2, "OAEPWithSHA-1AndMGF1Padding"

    invoke-direct {v0, v1, v8, v2}, Lorg/apache/shiro/crypto/PaddingScheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/shiro/crypto/PaddingScheme;->OAEPWithSha1AndMgf1:Lorg/apache/shiro/crypto/PaddingScheme;

    .line 107
    new-instance v0, Lorg/apache/shiro/crypto/PaddingScheme;

    const-string v1, "OAEPWithSha256AndMgf1"

    const/4 v2, 0x5

    const-string v3, "OAEPWithSHA-256AndMGF1Padding"

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/shiro/crypto/PaddingScheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/shiro/crypto/PaddingScheme;->OAEPWithSha256AndMgf1:Lorg/apache/shiro/crypto/PaddingScheme;

    .line 117
    new-instance v0, Lorg/apache/shiro/crypto/PaddingScheme;

    const-string v1, "OAEPWithSha384AndMgf1"

    const/4 v2, 0x6

    const-string v3, "OAEPWithSHA-384AndMGF1Padding"

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/shiro/crypto/PaddingScheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/shiro/crypto/PaddingScheme;->OAEPWithSha384AndMgf1:Lorg/apache/shiro/crypto/PaddingScheme;

    .line 127
    new-instance v0, Lorg/apache/shiro/crypto/PaddingScheme;

    const-string v1, "OAEPWithSha512AndMgf1"

    const/4 v2, 0x7

    const-string v3, "OAEPWithSHA-512AndMGF1Padding"

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/shiro/crypto/PaddingScheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/shiro/crypto/PaddingScheme;->OAEPWithSha512AndMgf1:Lorg/apache/shiro/crypto/PaddingScheme;

    .line 134
    new-instance v0, Lorg/apache/shiro/crypto/PaddingScheme;

    const-string v1, "PKCS1"

    const/16 v2, 0x8

    const-string v3, "PKCS1Padding"

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/shiro/crypto/PaddingScheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/shiro/crypto/PaddingScheme;->PKCS1:Lorg/apache/shiro/crypto/PaddingScheme;

    .line 140
    new-instance v0, Lorg/apache/shiro/crypto/PaddingScheme;

    const-string v1, "PKCS5"

    const/16 v2, 0x9

    const-string v3, "PKCS5Padding"

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/shiro/crypto/PaddingScheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/shiro/crypto/PaddingScheme;->PKCS5:Lorg/apache/shiro/crypto/PaddingScheme;

    .line 146
    new-instance v0, Lorg/apache/shiro/crypto/PaddingScheme;

    const-string v1, "SSL3"

    const/16 v2, 0xa

    const-string v3, "SSL3Padding"

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/shiro/crypto/PaddingScheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/shiro/crypto/PaddingScheme;->SSL3:Lorg/apache/shiro/crypto/PaddingScheme;

    .line 37
    const/16 v0, 0xb

    new-array v0, v0, [Lorg/apache/shiro/crypto/PaddingScheme;

    sget-object v1, Lorg/apache/shiro/crypto/PaddingScheme;->NONE:Lorg/apache/shiro/crypto/PaddingScheme;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/shiro/crypto/PaddingScheme;->ISO10126:Lorg/apache/shiro/crypto/PaddingScheme;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/shiro/crypto/PaddingScheme;->OAEP:Lorg/apache/shiro/crypto/PaddingScheme;

    aput-object v1, v0, v6

    sget-object v1, Lorg/apache/shiro/crypto/PaddingScheme;->OAEPWithMd5AndMgf1:Lorg/apache/shiro/crypto/PaddingScheme;

    aput-object v1, v0, v7

    sget-object v1, Lorg/apache/shiro/crypto/PaddingScheme;->OAEPWithSha1AndMgf1:Lorg/apache/shiro/crypto/PaddingScheme;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lorg/apache/shiro/crypto/PaddingScheme;->OAEPWithSha256AndMgf1:Lorg/apache/shiro/crypto/PaddingScheme;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/apache/shiro/crypto/PaddingScheme;->OAEPWithSha384AndMgf1:Lorg/apache/shiro/crypto/PaddingScheme;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/apache/shiro/crypto/PaddingScheme;->OAEPWithSha512AndMgf1:Lorg/apache/shiro/crypto/PaddingScheme;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/apache/shiro/crypto/PaddingScheme;->PKCS1:Lorg/apache/shiro/crypto/PaddingScheme;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/apache/shiro/crypto/PaddingScheme;->PKCS5:Lorg/apache/shiro/crypto/PaddingScheme;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/apache/shiro/crypto/PaddingScheme;->SSL3:Lorg/apache/shiro/crypto/PaddingScheme;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/shiro/crypto/PaddingScheme;->$VALUES:[Lorg/apache/shiro/crypto/PaddingScheme;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "transformationName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 150
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 151
    iput-object p3, p0, Lorg/apache/shiro/crypto/PaddingScheme;->transformationName:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/shiro/crypto/PaddingScheme;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 37
    const-class v0, Lorg/apache/shiro/crypto/PaddingScheme;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/shiro/crypto/PaddingScheme;

    return-object v0
.end method

.method public static values()[Lorg/apache/shiro/crypto/PaddingScheme;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lorg/apache/shiro/crypto/PaddingScheme;->$VALUES:[Lorg/apache/shiro/crypto/PaddingScheme;

    invoke-virtual {v0}, [Lorg/apache/shiro/crypto/PaddingScheme;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/shiro/crypto/PaddingScheme;

    return-object v0
.end method


# virtual methods
.method public getTransformationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lorg/apache/shiro/crypto/PaddingScheme;->transformationName:Ljava/lang/String;

    return-object v0
.end method
