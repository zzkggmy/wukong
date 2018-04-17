.class public final enum Lcom/baidu/tts/e/p;
.super Ljava/lang/Enum;
.source "UrlEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/tts/e/p;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/tts/e/p;

.field public static final enum b:Lcom/baidu/tts/e/p;

.field private static final synthetic d:[Lcom/baidu/tts/e/p;


# instance fields
.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11
    new-instance v0, Lcom/baidu/tts/e/p;

    const-string v1, "TTS_SERVER"

    const-string v2, "http://tts.baidu.com/text2audio"

    invoke-direct {v0, v1, v3, v2}, Lcom/baidu/tts/e/p;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/baidu/tts/e/p;->a:Lcom/baidu/tts/e/p;

    .line 12
    new-instance v0, Lcom/baidu/tts/e/p;

    const-string v1, "MODEL_SERVER"

    .line 13
    const-string v2, "http://cp01-rdqa04-dev154.cp01.baidu.com:8181/bos/story.php?"

    invoke-direct {v0, v1, v4, v2}, Lcom/baidu/tts/e/p;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/baidu/tts/e/p;->b:Lcom/baidu/tts/e/p;

    .line 10
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/baidu/tts/e/p;

    sget-object v1, Lcom/baidu/tts/e/p;->a:Lcom/baidu/tts/e/p;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/tts/e/p;->b:Lcom/baidu/tts/e/p;

    aput-object v1, v0, v4

    sput-object v0, Lcom/baidu/tts/e/p;->d:[Lcom/baidu/tts/e/p;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput-object p3, p0, Lcom/baidu/tts/e/p;->c:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/tts/e/p;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/baidu/tts/e/p;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/e/p;

    return-object v0
.end method

.method public static values()[Lcom/baidu/tts/e/p;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/baidu/tts/e/p;->d:[Lcom/baidu/tts/e/p;

    array-length v1, v0

    new-array v2, v1, [Lcom/baidu/tts/e/p;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/baidu/tts/e/p;->c:Ljava/lang/String;

    return-object v0
.end method
