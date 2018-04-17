.class public final enum Lcom/baidu/tts/answer/auth/e;
.super Ljava/lang/Enum;
.source "OfflineAuthEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/tts/answer/auth/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/tts/answer/auth/e;

.field public static final enum b:Lcom/baidu/tts/answer/auth/e;

.field public static final enum c:Lcom/baidu/tts/answer/auth/e;

.field public static final enum d:Lcom/baidu/tts/answer/auth/e;

.field public static final enum e:Lcom/baidu/tts/answer/auth/e;

.field public static final enum f:Lcom/baidu/tts/answer/auth/e;

.field public static final enum g:Lcom/baidu/tts/answer/auth/e;

.field public static final enum h:Lcom/baidu/tts/answer/auth/e;

.field public static final enum i:Lcom/baidu/tts/answer/auth/e;

.field public static final enum j:Lcom/baidu/tts/answer/auth/e;

.field public static final enum k:Lcom/baidu/tts/answer/auth/e;

.field private static final synthetic n:[Lcom/baidu/tts/answer/auth/e;


# instance fields
.field private final l:I

.field private final m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 12
    new-instance v0, Lcom/baidu/tts/answer/auth/e;

    const-string v1, "VALID_RETAIN"

    const-string v2, "[0, 1000)"

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/baidu/tts/answer/auth/e;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/baidu/tts/answer/auth/e;->a:Lcom/baidu/tts/answer/auth/e;

    .line 13
    new-instance v0, Lcom/baidu/tts/answer/auth/e;

    const-string v1, "VALID_TEMP"

    const/16 v2, 0x3e8

    const-string v3, "[1000, ...)"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/baidu/tts/answer/auth/e;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/baidu/tts/answer/auth/e;->b:Lcom/baidu/tts/answer/auth/e;

    .line 14
    new-instance v0, Lcom/baidu/tts/answer/auth/e;

    const-string v1, "PACKAGE_UNMATCH"

    const/4 v2, -0x2

    const-string v3, "\u5305\u540d\u4e0d\u5339\u914d"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/baidu/tts/answer/auth/e;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/baidu/tts/answer/auth/e;->c:Lcom/baidu/tts/answer/auth/e;

    .line 15
    new-instance v0, Lcom/baidu/tts/answer/auth/e;

    const-string v1, "SIGN_UNMATCH"

    const/4 v2, -0x3

    const-string v3, "\u5f00\u53d1\u8005\u7b7e\u540d\u6216\u8005appCode\u4e0d\u5339\u914d"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/baidu/tts/answer/auth/e;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/baidu/tts/answer/auth/e;->d:Lcom/baidu/tts/answer/auth/e;

    .line 16
    new-instance v0, Lcom/baidu/tts/answer/auth/e;

    const-string v1, "CUID_UNMATCH"

    const/4 v2, -0x4

    const-string v3, "cuid\u4e0d\u5339\u914d"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/baidu/tts/answer/auth/e;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/baidu/tts/answer/auth/e;->e:Lcom/baidu/tts/answer/auth/e;

    .line 17
    new-instance v0, Lcom/baidu/tts/answer/auth/e;

    const-string v1, "FORMAL_EXPIRED"

    const/4 v2, 0x5

    const/4 v3, -0x5

    const-string v4, "\u6b63\u5f0flicense\u8fc7\u671f"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/baidu/tts/answer/auth/e;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/baidu/tts/answer/auth/e;->f:Lcom/baidu/tts/answer/auth/e;

    .line 18
    new-instance v0, Lcom/baidu/tts/answer/auth/e;

    const-string v1, "WILL_EXPIRED"

    const/4 v2, 0x6

    const/4 v3, -0x6

    const-string v4, "\u8fd8\u6709\u4e00\u4e2a\u6708\u8fc7\u671f"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/baidu/tts/answer/auth/e;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/baidu/tts/answer/auth/e;->g:Lcom/baidu/tts/answer/auth/e;

    .line 19
    new-instance v0, Lcom/baidu/tts/answer/auth/e;

    const-string v1, "PLATFORM_ERROR"

    const/4 v2, 0x7

    const/4 v3, -0x7

    const-string v4, "\u5e73\u53f0\u9519\u8bef"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/baidu/tts/answer/auth/e;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/baidu/tts/answer/auth/e;->h:Lcom/baidu/tts/answer/auth/e;

    .line 20
    new-instance v0, Lcom/baidu/tts/answer/auth/e;

    const-string v1, "INVALID_FILE"

    const/16 v2, 0x8

    const/4 v3, -0x8

    const-string v4, "\u6587\u4ef6\u4e0d\u5b58\u5728\u6216\u8005\u957f\u5ea6\u4e3a0(\u4e0b\u8f7d\u5931\u8d25)"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/baidu/tts/answer/auth/e;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/baidu/tts/answer/auth/e;->i:Lcom/baidu/tts/answer/auth/e;

    .line 21
    new-instance v0, Lcom/baidu/tts/answer/auth/e;

    const-string v1, "TEMP_EXPIRED"

    const/16 v2, 0x9

    const/16 v3, -0xa

    const-string v4, "temp license expired"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/baidu/tts/answer/auth/e;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/baidu/tts/answer/auth/e;->j:Lcom/baidu/tts/answer/auth/e;

    .line 22
    new-instance v0, Lcom/baidu/tts/answer/auth/e;

    const-string v1, "UNKNOW"

    const/16 v2, 0xa

    const/16 v3, -0x63

    const-string v4, "not a valid code"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/baidu/tts/answer/auth/e;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/baidu/tts/answer/auth/e;->k:Lcom/baidu/tts/answer/auth/e;

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/baidu/tts/answer/auth/e;

    sget-object v1, Lcom/baidu/tts/answer/auth/e;->a:Lcom/baidu/tts/answer/auth/e;

    aput-object v1, v0, v5

    sget-object v1, Lcom/baidu/tts/answer/auth/e;->b:Lcom/baidu/tts/answer/auth/e;

    aput-object v1, v0, v6

    sget-object v1, Lcom/baidu/tts/answer/auth/e;->c:Lcom/baidu/tts/answer/auth/e;

    aput-object v1, v0, v7

    sget-object v1, Lcom/baidu/tts/answer/auth/e;->d:Lcom/baidu/tts/answer/auth/e;

    aput-object v1, v0, v8

    sget-object v1, Lcom/baidu/tts/answer/auth/e;->e:Lcom/baidu/tts/answer/auth/e;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/baidu/tts/answer/auth/e;->f:Lcom/baidu/tts/answer/auth/e;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/baidu/tts/answer/auth/e;->g:Lcom/baidu/tts/answer/auth/e;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/baidu/tts/answer/auth/e;->h:Lcom/baidu/tts/answer/auth/e;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/baidu/tts/answer/auth/e;->i:Lcom/baidu/tts/answer/auth/e;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/baidu/tts/answer/auth/e;->j:Lcom/baidu/tts/answer/auth/e;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/baidu/tts/answer/auth/e;->k:Lcom/baidu/tts/answer/auth/e;

    aput-object v2, v0, v1

    sput-object v0, Lcom/baidu/tts/answer/auth/e;->n:[Lcom/baidu/tts/answer/auth/e;

    .line 25
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput p3, p0, Lcom/baidu/tts/answer/auth/e;->l:I

    .line 36
    iput-object p4, p0, Lcom/baidu/tts/answer/auth/e;->m:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public static a(I)Lcom/baidu/tts/answer/auth/e;
    .locals 5

    .prologue
    .line 53
    invoke-static {}, Lcom/baidu/tts/answer/auth/e;->values()[Lcom/baidu/tts/answer/auth/e;

    move-result-object v2

    .line 54
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 59
    const/4 v0, 0x0

    :cond_0
    return-object v0

    .line 54
    :cond_1
    aget-object v0, v2, v1

    .line 55
    invoke-virtual {v0}, Lcom/baidu/tts/answer/auth/e;->a()I

    move-result v4

    if-eq p0, v4, :cond_0

    .line 54
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static b(I)Lcom/baidu/tts/answer/auth/e;
    .locals 1

    .prologue
    .line 63
    if-ltz p0, :cond_2

    .line 64
    const/16 v0, 0x3e8

    if-ge p0, v0, :cond_1

    .line 65
    sget-object v0, Lcom/baidu/tts/answer/auth/e;->a:Lcom/baidu/tts/answer/auth/e;

    .line 74
    :cond_0
    :goto_0
    return-object v0

    .line 67
    :cond_1
    sget-object v0, Lcom/baidu/tts/answer/auth/e;->b:Lcom/baidu/tts/answer/auth/e;

    goto :goto_0

    .line 70
    :cond_2
    invoke-static {p0}, Lcom/baidu/tts/answer/auth/e;->a(I)Lcom/baidu/tts/answer/auth/e;

    move-result-object v0

    .line 71
    if-nez v0, :cond_0

    .line 72
    sget-object v0, Lcom/baidu/tts/answer/auth/e;->k:Lcom/baidu/tts/answer/auth/e;

    goto :goto_0
.end method

.method public static c(I)I
    .locals 1

    .prologue
    .line 83
    add-int/lit16 v0, p0, -0x3e8

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/tts/answer/auth/e;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/baidu/tts/answer/auth/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/answer/auth/e;

    return-object v0
.end method

.method public static values()[Lcom/baidu/tts/answer/auth/e;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/baidu/tts/answer/auth/e;->n:[Lcom/baidu/tts/answer/auth/e;

    array-length v1, v0

    new-array v2, v1, [Lcom/baidu/tts/answer/auth/e;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/baidu/tts/answer/auth/e;->l:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/baidu/tts/answer/auth/e;->m:Ljava/lang/String;

    return-object v0
.end method
