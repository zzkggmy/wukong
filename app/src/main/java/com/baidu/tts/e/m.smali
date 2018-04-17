.class public final enum Lcom/baidu/tts/e/m;
.super Ljava/lang/Enum;
.source "TimeOutEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/tts/e/m;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/tts/e/m;

.field public static final enum b:Lcom/baidu/tts/e/m;

.field public static final enum c:Lcom/baidu/tts/e/m;

.field private static final synthetic f:[Lcom/baidu/tts/e/m;


# instance fields
.field private final d:J

.field private final e:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 11
    new-instance v1, Lcom/baidu/tts/e/m;

    const-string v2, "DEFAULT"

    const/4 v3, 0x0

    const-wide/16 v4, 0x6

    const-wide/16 v6, 0x1770

    invoke-direct/range {v1 .. v7}, Lcom/baidu/tts/e/m;-><init>(Ljava/lang/String;IJJ)V

    sput-object v1, Lcom/baidu/tts/e/m;->a:Lcom/baidu/tts/e/m;

    .line 12
    new-instance v1, Lcom/baidu/tts/e/m;

    const-string v2, "MIX_ONLINE_REQUEST_TIMEOUT"

    const/4 v3, 0x1

    const-wide/16 v4, 0x6

    const-wide/16 v6, 0x1770

    invoke-direct/range {v1 .. v7}, Lcom/baidu/tts/e/m;-><init>(Ljava/lang/String;IJJ)V

    sput-object v1, Lcom/baidu/tts/e/m;->b:Lcom/baidu/tts/e/m;

    .line 13
    new-instance v1, Lcom/baidu/tts/e/m;

    const-string v2, "MIX_AUTH"

    const/4 v3, 0x2

    const-wide/16 v4, 0xc

    const-wide/16 v6, 0x2ee0

    invoke-direct/range {v1 .. v7}, Lcom/baidu/tts/e/m;-><init>(Ljava/lang/String;IJJ)V

    sput-object v1, Lcom/baidu/tts/e/m;->c:Lcom/baidu/tts/e/m;

    .line 10
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/baidu/tts/e/m;

    const/4 v1, 0x0

    sget-object v2, Lcom/baidu/tts/e/m;->a:Lcom/baidu/tts/e/m;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/baidu/tts/e/m;->b:Lcom/baidu/tts/e/m;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/baidu/tts/e/m;->c:Lcom/baidu/tts/e/m;

    aput-object v2, v0, v1

    sput-object v0, Lcom/baidu/tts/e/m;->f:[Lcom/baidu/tts/e/m;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJJ)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput-wide p3, p0, Lcom/baidu/tts/e/m;->d:J

    .line 23
    iput-wide p5, p0, Lcom/baidu/tts/e/m;->e:J

    .line 24
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/tts/e/m;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/baidu/tts/e/m;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/e/m;

    return-object v0
.end method

.method public static values()[Lcom/baidu/tts/e/m;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/baidu/tts/e/m;->f:[Lcom/baidu/tts/e/m;

    array-length v1, v0

    new-array v2, v1, [Lcom/baidu/tts/e/m;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/baidu/tts/e/m;->e:J

    return-wide v0
.end method

.method public b()I
    .locals 2

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/baidu/tts/e/m;->a()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method
