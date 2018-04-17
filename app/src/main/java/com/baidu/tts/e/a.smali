.class public final enum Lcom/baidu/tts/e/a;
.super Ljava/lang/Enum;
.source "AudioDataFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/tts/e/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/tts/e/a;

.field public static final enum b:Lcom/baidu/tts/e/a;

.field private static final synthetic d:[Lcom/baidu/tts/e/a;


# instance fields
.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 11
    new-instance v0, Lcom/baidu/tts/e/a;

    const-string v1, "PCM"

    invoke-direct {v0, v1, v4, v3}, Lcom/baidu/tts/e/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/tts/e/a;->a:Lcom/baidu/tts/e/a;

    .line 12
    new-instance v0, Lcom/baidu/tts/e/a;

    const-string v1, "MP3"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/baidu/tts/e/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/tts/e/a;->b:Lcom/baidu/tts/e/a;

    .line 10
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/baidu/tts/e/a;

    sget-object v1, Lcom/baidu/tts/e/a;->a:Lcom/baidu/tts/e/a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/tts/e/a;->b:Lcom/baidu/tts/e/a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/baidu/tts/e/a;->d:[Lcom/baidu/tts/e/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput p3, p0, Lcom/baidu/tts/e/a;->c:I

    .line 21
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/tts/e/a;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/baidu/tts/e/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/e/a;

    return-object v0
.end method

.method public static values()[Lcom/baidu/tts/e/a;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/baidu/tts/e/a;->d:[Lcom/baidu/tts/e/a;

    array-length v1, v0

    new-array v2, v1, [Lcom/baidu/tts/e/a;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
