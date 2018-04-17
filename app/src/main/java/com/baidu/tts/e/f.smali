.class public final enum Lcom/baidu/tts/e/f;
.super Ljava/lang/Enum;
.source "EngineEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/tts/e/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/tts/e/f;

.field public static final enum b:Lcom/baidu/tts/e/f;

.field public static final enum c:Lcom/baidu/tts/e/f;

.field private static final synthetic f:[Lcom/baidu/tts/e/f;


# instance fields
.field private final d:I

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11
    new-instance v0, Lcom/baidu/tts/e/f;

    const-string v1, "ONLINE"

    const-string v2, "online engine"

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/baidu/tts/e/f;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/baidu/tts/e/f;->a:Lcom/baidu/tts/e/f;

    .line 12
    new-instance v0, Lcom/baidu/tts/e/f;

    const-string v1, "OFFLINE"

    const-string v2, "offline engine"

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/baidu/tts/e/f;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/baidu/tts/e/f;->b:Lcom/baidu/tts/e/f;

    .line 13
    new-instance v0, Lcom/baidu/tts/e/f;

    const-string v1, "MIX"

    const-string v2, "online and offline mix engine"

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/baidu/tts/e/f;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/baidu/tts/e/f;->c:Lcom/baidu/tts/e/f;

    .line 10
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/baidu/tts/e/f;

    sget-object v1, Lcom/baidu/tts/e/f;->a:Lcom/baidu/tts/e/f;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/tts/e/f;->b:Lcom/baidu/tts/e/f;

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/tts/e/f;->c:Lcom/baidu/tts/e/f;

    aput-object v1, v0, v5

    sput-object v0, Lcom/baidu/tts/e/f;->f:[Lcom/baidu/tts/e/f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput p3, p0, Lcom/baidu/tts/e/f;->d:I

    .line 23
    iput-object p4, p0, Lcom/baidu/tts/e/f;->e:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/tts/e/f;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/baidu/tts/e/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/e/f;

    return-object v0
.end method

.method public static values()[Lcom/baidu/tts/e/f;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/baidu/tts/e/f;->f:[Lcom/baidu/tts/e/f;

    array-length v1, v0

    new-array v2, v1, [Lcom/baidu/tts/e/f;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/baidu/tts/e/f;->d:I

    return v0
.end method
