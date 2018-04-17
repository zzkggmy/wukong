.class public final enum Lorg/apache/shiro/crypto/OperationMode;
.super Ljava/lang/Enum;
.source "OperationMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/shiro/crypto/OperationMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/shiro/crypto/OperationMode;

.field public static final enum CBC:Lorg/apache/shiro/crypto/OperationMode;

.field public static final enum CCM:Lorg/apache/shiro/crypto/OperationMode;

.field public static final enum CFB:Lorg/apache/shiro/crypto/OperationMode;

.field public static final enum CTR:Lorg/apache/shiro/crypto/OperationMode;

.field public static final enum EAX:Lorg/apache/shiro/crypto/OperationMode;

.field public static final enum ECB:Lorg/apache/shiro/crypto/OperationMode;

.field public static final enum GCM:Lorg/apache/shiro/crypto/OperationMode;

.field public static final enum NONE:Lorg/apache/shiro/crypto/OperationMode;

.field public static final enum OCB:Lorg/apache/shiro/crypto/OperationMode;

.field public static final enum OFB:Lorg/apache/shiro/crypto/OperationMode;

.field public static final enum PCBC:Lorg/apache/shiro/crypto/OperationMode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 50
    new-instance v0, Lorg/apache/shiro/crypto/OperationMode;

    const-string v1, "CBC"

    invoke-direct {v0, v1, v3}, Lorg/apache/shiro/crypto/OperationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/shiro/crypto/OperationMode;->CBC:Lorg/apache/shiro/crypto/OperationMode;

    .line 61
    new-instance v0, Lorg/apache/shiro/crypto/OperationMode;

    const-string v1, "CCM"

    invoke-direct {v0, v1, v4}, Lorg/apache/shiro/crypto/OperationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/shiro/crypto/OperationMode;->CCM:Lorg/apache/shiro/crypto/OperationMode;

    .line 69
    new-instance v0, Lorg/apache/shiro/crypto/OperationMode;

    const-string v1, "CFB"

    invoke-direct {v0, v1, v5}, Lorg/apache/shiro/crypto/OperationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/shiro/crypto/OperationMode;->CFB:Lorg/apache/shiro/crypto/OperationMode;

    .line 78
    new-instance v0, Lorg/apache/shiro/crypto/OperationMode;

    const-string v1, "CTR"

    invoke-direct {v0, v1, v6}, Lorg/apache/shiro/crypto/OperationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/shiro/crypto/OperationMode;->CTR:Lorg/apache/shiro/crypto/OperationMode;

    .line 88
    new-instance v0, Lorg/apache/shiro/crypto/OperationMode;

    const-string v1, "EAX"

    invoke-direct {v0, v1, v7}, Lorg/apache/shiro/crypto/OperationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/shiro/crypto/OperationMode;->EAX:Lorg/apache/shiro/crypto/OperationMode;

    .line 98
    new-instance v0, Lorg/apache/shiro/crypto/OperationMode;

    const-string v1, "ECB"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/apache/shiro/crypto/OperationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/shiro/crypto/OperationMode;->ECB:Lorg/apache/shiro/crypto/OperationMode;

    .line 108
    new-instance v0, Lorg/apache/shiro/crypto/OperationMode;

    const-string v1, "GCM"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/apache/shiro/crypto/OperationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/shiro/crypto/OperationMode;->GCM:Lorg/apache/shiro/crypto/OperationMode;

    .line 115
    new-instance v0, Lorg/apache/shiro/crypto/OperationMode;

    const-string v1, "NONE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/apache/shiro/crypto/OperationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/shiro/crypto/OperationMode;->NONE:Lorg/apache/shiro/crypto/OperationMode;

    .line 126
    new-instance v0, Lorg/apache/shiro/crypto/OperationMode;

    const-string v1, "OCB"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/apache/shiro/crypto/OperationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/shiro/crypto/OperationMode;->OCB:Lorg/apache/shiro/crypto/OperationMode;

    .line 134
    new-instance v0, Lorg/apache/shiro/crypto/OperationMode;

    const-string v1, "OFB"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lorg/apache/shiro/crypto/OperationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/shiro/crypto/OperationMode;->OFB:Lorg/apache/shiro/crypto/OperationMode;

    .line 142
    new-instance v0, Lorg/apache/shiro/crypto/OperationMode;

    const-string v1, "PCBC"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lorg/apache/shiro/crypto/OperationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/shiro/crypto/OperationMode;->PCBC:Lorg/apache/shiro/crypto/OperationMode;

    .line 41
    const/16 v0, 0xb

    new-array v0, v0, [Lorg/apache/shiro/crypto/OperationMode;

    sget-object v1, Lorg/apache/shiro/crypto/OperationMode;->CBC:Lorg/apache/shiro/crypto/OperationMode;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/shiro/crypto/OperationMode;->CCM:Lorg/apache/shiro/crypto/OperationMode;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/shiro/crypto/OperationMode;->CFB:Lorg/apache/shiro/crypto/OperationMode;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/shiro/crypto/OperationMode;->CTR:Lorg/apache/shiro/crypto/OperationMode;

    aput-object v1, v0, v6

    sget-object v1, Lorg/apache/shiro/crypto/OperationMode;->EAX:Lorg/apache/shiro/crypto/OperationMode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/apache/shiro/crypto/OperationMode;->ECB:Lorg/apache/shiro/crypto/OperationMode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/apache/shiro/crypto/OperationMode;->GCM:Lorg/apache/shiro/crypto/OperationMode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/apache/shiro/crypto/OperationMode;->NONE:Lorg/apache/shiro/crypto/OperationMode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/apache/shiro/crypto/OperationMode;->OCB:Lorg/apache/shiro/crypto/OperationMode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/apache/shiro/crypto/OperationMode;->OFB:Lorg/apache/shiro/crypto/OperationMode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/apache/shiro/crypto/OperationMode;->PCBC:Lorg/apache/shiro/crypto/OperationMode;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/shiro/crypto/OperationMode;->$VALUES:[Lorg/apache/shiro/crypto/OperationMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/shiro/crypto/OperationMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    const-class v0, Lorg/apache/shiro/crypto/OperationMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/shiro/crypto/OperationMode;

    return-object v0
.end method

.method public static values()[Lorg/apache/shiro/crypto/OperationMode;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lorg/apache/shiro/crypto/OperationMode;->$VALUES:[Lorg/apache/shiro/crypto/OperationMode;

    invoke-virtual {v0}, [Lorg/apache/shiro/crypto/OperationMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/shiro/crypto/OperationMode;

    return-object v0
.end method
