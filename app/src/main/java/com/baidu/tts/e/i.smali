.class public final enum Lcom/baidu/tts/e/i;
.super Ljava/lang/Enum;
.source "MethodEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/tts/e/i;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/tts/e/i;

.field public static final enum b:Lcom/baidu/tts/e/i;

.field private static final synthetic c:[Lcom/baidu/tts/e/i;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/baidu/tts/e/i;

    const-string v1, "SYNTHESIZE"

    invoke-direct {v0, v1, v2}, Lcom/baidu/tts/e/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/tts/e/i;->a:Lcom/baidu/tts/e/i;

    .line 12
    new-instance v0, Lcom/baidu/tts/e/i;

    const-string v1, "SPEAK"

    invoke-direct {v0, v1, v3}, Lcom/baidu/tts/e/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/tts/e/i;->b:Lcom/baidu/tts/e/i;

    .line 10
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/baidu/tts/e/i;

    sget-object v1, Lcom/baidu/tts/e/i;->a:Lcom/baidu/tts/e/i;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/tts/e/i;->b:Lcom/baidu/tts/e/i;

    aput-object v1, v0, v3

    sput-object v0, Lcom/baidu/tts/e/i;->c:[Lcom/baidu/tts/e/i;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Lcom/baidu/tts/e/i;)Z
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/baidu/tts/e/i;->b:Lcom/baidu/tts/e/i;

    invoke-virtual {v0, p0}, Lcom/baidu/tts/e/i;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/tts/e/i;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/baidu/tts/e/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/e/i;

    return-object v0
.end method

.method public static values()[Lcom/baidu/tts/e/i;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/baidu/tts/e/i;->c:[Lcom/baidu/tts/e/i;

    array-length v1, v0

    new-array v2, v1, [Lcom/baidu/tts/e/i;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
