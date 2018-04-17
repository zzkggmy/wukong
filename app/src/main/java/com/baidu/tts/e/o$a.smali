.class public final enum Lcom/baidu/tts/e/o$a;
.super Ljava/lang/Enum;
.source "TtsErrorEnum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/tts/e/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/tts/e/o$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/tts/e/o$a;

.field public static final enum b:Lcom/baidu/tts/e/o$a;

.field public static final enum c:Lcom/baidu/tts/e/o$a;

.field public static final enum d:Lcom/baidu/tts/e/o$a;

.field public static final enum e:Lcom/baidu/tts/e/o$a;

.field public static final enum f:Lcom/baidu/tts/e/o$a;

.field public static final enum g:Lcom/baidu/tts/e/o$a;

.field public static final enum h:Lcom/baidu/tts/e/o$a;

.field public static final enum i:Lcom/baidu/tts/e/o$a;

.field private static final synthetic j:[Lcom/baidu/tts/e/o$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 101
    new-instance v0, Lcom/baidu/tts/e/o$a;

    const-string v1, "MIX_ERROR"

    invoke-direct {v0, v1, v3}, Lcom/baidu/tts/e/o$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/tts/e/o$a;->a:Lcom/baidu/tts/e/o$a;

    .line 102
    new-instance v0, Lcom/baidu/tts/e/o$a;

    const-string v1, "ONLINE_ENGINE_ERROR"

    invoke-direct {v0, v1, v4}, Lcom/baidu/tts/e/o$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/tts/e/o$a;->b:Lcom/baidu/tts/e/o$a;

    .line 103
    new-instance v0, Lcom/baidu/tts/e/o$a;

    const-string v1, "OFFLINE_ENGINE_ERROR"

    invoke-direct {v0, v1, v5}, Lcom/baidu/tts/e/o$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/tts/e/o$a;->c:Lcom/baidu/tts/e/o$a;

    .line 104
    new-instance v0, Lcom/baidu/tts/e/o$a;

    const-string v1, "TEXT"

    invoke-direct {v0, v1, v6}, Lcom/baidu/tts/e/o$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/tts/e/o$a;->d:Lcom/baidu/tts/e/o$a;

    .line 105
    new-instance v0, Lcom/baidu/tts/e/o$a;

    const-string v1, "TTS"

    invoke-direct {v0, v1, v7}, Lcom/baidu/tts/e/o$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/tts/e/o$a;->e:Lcom/baidu/tts/e/o$a;

    .line 106
    new-instance v0, Lcom/baidu/tts/e/o$a;

    const-string v1, "APP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/baidu/tts/e/o$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/tts/e/o$a;->f:Lcom/baidu/tts/e/o$a;

    .line 107
    new-instance v0, Lcom/baidu/tts/e/o$a;

    const-string v1, "PLAYER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/baidu/tts/e/o$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/tts/e/o$a;->g:Lcom/baidu/tts/e/o$a;

    .line 108
    new-instance v0, Lcom/baidu/tts/e/o$a;

    const-string v1, "MODEL"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/baidu/tts/e/o$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/tts/e/o$a;->h:Lcom/baidu/tts/e/o$a;

    .line 109
    new-instance v0, Lcom/baidu/tts/e/o$a;

    const-string v1, "UNKNOW"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/baidu/tts/e/o$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/tts/e/o$a;->i:Lcom/baidu/tts/e/o$a;

    .line 100
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/baidu/tts/e/o$a;

    sget-object v1, Lcom/baidu/tts/e/o$a;->a:Lcom/baidu/tts/e/o$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/tts/e/o$a;->b:Lcom/baidu/tts/e/o$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/tts/e/o$a;->c:Lcom/baidu/tts/e/o$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/baidu/tts/e/o$a;->d:Lcom/baidu/tts/e/o$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/baidu/tts/e/o$a;->e:Lcom/baidu/tts/e/o$a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/baidu/tts/e/o$a;->f:Lcom/baidu/tts/e/o$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/baidu/tts/e/o$a;->g:Lcom/baidu/tts/e/o$a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/baidu/tts/e/o$a;->h:Lcom/baidu/tts/e/o$a;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/baidu/tts/e/o$a;->i:Lcom/baidu/tts/e/o$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/baidu/tts/e/o$a;->j:[Lcom/baidu/tts/e/o$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/tts/e/o$a;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/baidu/tts/e/o$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/e/o$a;

    return-object v0
.end method

.method public static values()[Lcom/baidu/tts/e/o$a;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/baidu/tts/e/o$a;->j:[Lcom/baidu/tts/e/o$a;

    array-length v1, v0

    new-array v2, v1, [Lcom/baidu/tts/e/o$a;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
