.class public final enum Lcom/baidu/tts/e/l;
.super Ljava/lang/Enum;
.source "SpeakerEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/tts/e/l;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/tts/e/l;

.field public static final enum b:Lcom/baidu/tts/e/l;

.field public static final enum c:Lcom/baidu/tts/e/l;

.field public static final enum d:Lcom/baidu/tts/e/l;

.field private static final synthetic h:[Lcom/baidu/tts/e/l;


# instance fields
.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/baidu/tts/e/l;

    const-string v1, "FEMALE"

    const-string v3, "0"

    const-string v4, "default female"

    const-string v5, "f17"

    invoke-direct/range {v0 .. v5}, Lcom/baidu/tts/e/l;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/tts/e/l;->a:Lcom/baidu/tts/e/l;

    .line 12
    new-instance v3, Lcom/baidu/tts/e/l;

    const-string v4, "MALE"

    const-string v6, "1"

    const-string v7, "default male"

    const-string v8, "macs"

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/baidu/tts/e/l;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/baidu/tts/e/l;->b:Lcom/baidu/tts/e/l;

    .line 13
    new-instance v3, Lcom/baidu/tts/e/l;

    const-string v4, "MALE_HIGH"

    const-string v6, "2"

    const-string v7, "high quality male"

    const-string v8, "m15"

    move v5, v10

    invoke-direct/range {v3 .. v8}, Lcom/baidu/tts/e/l;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/baidu/tts/e/l;->c:Lcom/baidu/tts/e/l;

    .line 14
    new-instance v3, Lcom/baidu/tts/e/l;

    const-string v4, "MALE_EMOTION"

    const-string v6, "3"

    const-string v7, "emotional male"

    const-string v8, "me"

    move v5, v11

    invoke-direct/range {v3 .. v8}, Lcom/baidu/tts/e/l;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/baidu/tts/e/l;->d:Lcom/baidu/tts/e/l;

    .line 10
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/baidu/tts/e/l;

    sget-object v1, Lcom/baidu/tts/e/l;->a:Lcom/baidu/tts/e/l;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/tts/e/l;->b:Lcom/baidu/tts/e/l;

    aput-object v1, v0, v9

    sget-object v1, Lcom/baidu/tts/e/l;->c:Lcom/baidu/tts/e/l;

    aput-object v1, v0, v10

    sget-object v1, Lcom/baidu/tts/e/l;->d:Lcom/baidu/tts/e/l;

    aput-object v1, v0, v11

    sput-object v0, Lcom/baidu/tts/e/l;->h:[Lcom/baidu/tts/e/l;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    iput-object p3, p0, Lcom/baidu/tts/e/l;->e:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcom/baidu/tts/e/l;->f:Ljava/lang/String;

    .line 27
    iput-object p5, p0, Lcom/baidu/tts/e/l;->g:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/baidu/tts/e/l;
    .locals 5

    .prologue
    .line 49
    invoke-static {}, Lcom/baidu/tts/e/l;->values()[Lcom/baidu/tts/e/l;

    move-result-object v2

    .line 50
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 55
    const/4 v0, 0x0

    :cond_0
    return-object v0

    .line 50
    :cond_1
    aget-object v0, v2, v1

    .line 51
    invoke-virtual {v0}, Lcom/baidu/tts/e/l;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 50
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/tts/e/l;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/baidu/tts/e/l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/e/l;

    return-object v0
.end method

.method public static values()[Lcom/baidu/tts/e/l;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/baidu/tts/e/l;->h:[Lcom/baidu/tts/e/l;

    array-length v1, v0

    new-array v2, v1, [Lcom/baidu/tts/e/l;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/baidu/tts/e/l;->e:Ljava/lang/String;

    return-object v0
.end method
