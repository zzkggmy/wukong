.class public final enum Lcom/baidu/tts/e/n;
.super Ljava/lang/Enum;
.source "TtsEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/tts/e/n;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/tts/e/n;

.field public static final enum b:Lcom/baidu/tts/e/n;

.field public static final enum c:Lcom/baidu/tts/e/n;

.field private static final synthetic f:[Lcom/baidu/tts/e/n;


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

    .line 10
    new-instance v0, Lcom/baidu/tts/e/n;

    const-string v1, "ONLINE"

    .line 13
    const-string v2, "just online"

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/baidu/tts/e/n;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/baidu/tts/e/n;->a:Lcom/baidu/tts/e/n;

    .line 14
    new-instance v0, Lcom/baidu/tts/e/n;

    const-string v1, "OFFLINE"

    .line 17
    const-string v2, "just offline"

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/baidu/tts/e/n;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/baidu/tts/e/n;->b:Lcom/baidu/tts/e/n;

    .line 18
    new-instance v0, Lcom/baidu/tts/e/n;

    const-string v1, "MIX"

    .line 21
    const-string v2, "if online cannot use switch from online to offline"

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/baidu/tts/e/n;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/baidu/tts/e/n;->c:Lcom/baidu/tts/e/n;

    .line 9
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/baidu/tts/e/n;

    sget-object v1, Lcom/baidu/tts/e/n;->a:Lcom/baidu/tts/e/n;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/tts/e/n;->b:Lcom/baidu/tts/e/n;

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/tts/e/n;->c:Lcom/baidu/tts/e/n;

    aput-object v1, v0, v5

    sput-object v0, Lcom/baidu/tts/e/n;->f:[Lcom/baidu/tts/e/n;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput p3, p0, Lcom/baidu/tts/e/n;->d:I

    .line 32
    iput-object p4, p0, Lcom/baidu/tts/e/n;->e:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/tts/e/n;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/baidu/tts/e/n;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/e/n;

    return-object v0
.end method

.method public static values()[Lcom/baidu/tts/e/n;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/baidu/tts/e/n;->f:[Lcom/baidu/tts/e/n;

    array-length v1, v0

    new-array v2, v1, [Lcom/baidu/tts/e/n;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/baidu/tts/e/n;->d:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/baidu/tts/e/n;->e:Ljava/lang/String;

    return-object v0
.end method
