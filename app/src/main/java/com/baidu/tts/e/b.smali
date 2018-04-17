.class public abstract enum Lcom/baidu/tts/e/b;
.super Ljava/lang/Enum;
.source "AudioEncoderFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/tts/e/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/tts/e/b;

.field public static final enum b:Lcom/baidu/tts/e/b;

.field public static final enum c:Lcom/baidu/tts/e/b;

.field public static final enum d:Lcom/baidu/tts/e/b;

.field private static final synthetic f:[Lcom/baidu/tts/e/b;


# instance fields
.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 12
    new-instance v0, Lcom/baidu/tts/e/b$1;

    const-string v1, "BV"

    const-string v2, "0"

    invoke-direct {v0, v1, v3, v2}, Lcom/baidu/tts/e/b$1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/baidu/tts/e/b;->a:Lcom/baidu/tts/e/b;

    .line 20
    new-instance v0, Lcom/baidu/tts/e/b$2;

    const-string v1, "AMR"

    const-string v2, "1"

    invoke-direct {v0, v1, v4, v2}, Lcom/baidu/tts/e/b$2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/baidu/tts/e/b;->b:Lcom/baidu/tts/e/b;

    .line 28
    new-instance v0, Lcom/baidu/tts/e/b$3;

    const-string v1, "OPUS"

    const-string v2, "2"

    invoke-direct {v0, v1, v5, v2}, Lcom/baidu/tts/e/b$3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/baidu/tts/e/b;->c:Lcom/baidu/tts/e/b;

    .line 36
    new-instance v0, Lcom/baidu/tts/e/b$4;

    const-string v1, "MP3"

    const-string v2, "3"

    invoke-direct {v0, v1, v6, v2}, Lcom/baidu/tts/e/b$4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/baidu/tts/e/b;->d:Lcom/baidu/tts/e/b;

    .line 11
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/baidu/tts/e/b;

    sget-object v1, Lcom/baidu/tts/e/b;->a:Lcom/baidu/tts/e/b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/tts/e/b;->b:Lcom/baidu/tts/e/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/tts/e/b;->c:Lcom/baidu/tts/e/b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/baidu/tts/e/b;->d:Lcom/baidu/tts/e/b;

    aput-object v1, v0, v6

    sput-object v0, Lcom/baidu/tts/e/b;->f:[Lcom/baidu/tts/e/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    iput-object p3, p0, Lcom/baidu/tts/e/b;->e:Ljava/lang/String;

    .line 52
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/baidu/tts/e/b;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/tts/e/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/baidu/tts/e/b;
    .locals 5

    .prologue
    .line 62
    invoke-static {}, Lcom/baidu/tts/e/b;->values()[Lcom/baidu/tts/e/b;

    move-result-object v2

    .line 63
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 68
    const/4 v0, 0x0

    :cond_0
    return-object v0

    .line 63
    :cond_1
    aget-object v0, v2, v1

    .line 64
    invoke-virtual {v0}, Lcom/baidu/tts/e/b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 63
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/tts/e/b;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/baidu/tts/e/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/e/b;

    return-object v0
.end method

.method public static values()[Lcom/baidu/tts/e/b;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/baidu/tts/e/b;->f:[Lcom/baidu/tts/e/b;

    array-length v1, v0

    new-array v2, v1, [Lcom/baidu/tts/e/b;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/baidu/tts/e/b;->e:Ljava/lang/String;

    return-object v0
.end method
