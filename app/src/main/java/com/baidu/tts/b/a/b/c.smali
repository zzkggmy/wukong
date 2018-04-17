.class public Lcom/baidu/tts/b/a/b/c;
.super Ljava/lang/Object;
.source "MixStrategy.java"


# static fields
.field private static synthetic b:[I


# instance fields
.field private a:Lcom/baidu/tts/k/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(I)Z
    .locals 2

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/baidu/tts/b/a/b/c;->b(I)I

    move-result v0

    .line 75
    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(I)I
    .locals 1

    .prologue
    .line 88
    packed-switch p1, :pswitch_data_0

    .line 108
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 94
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 104
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 106
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic b()[I
    .locals 3

    .prologue
    .line 19
    sget-object v0, Lcom/baidu/tts/b/a/b/c;->b:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/baidu/tts/e/j;->values()[Lcom/baidu/tts/e/j;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/baidu/tts/e/j;->a:Lcom/baidu/tts/e/j;

    invoke-virtual {v1}, Lcom/baidu/tts/e/j;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v1, Lcom/baidu/tts/e/j;->b:Lcom/baidu/tts/e/j;

    invoke-virtual {v1}, Lcom/baidu/tts/e/j;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sput-object v0, Lcom/baidu/tts/b/a/b/c;->b:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private c(I)Z
    .locals 1

    .prologue
    .line 113
    packed-switch p1, :pswitch_data_0

    .line 118
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 116
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(Lcom/baidu/tts/k/b;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/baidu/tts/b/a/b/c;->a:Lcom/baidu/tts/k/b;

    .line 29
    return-void
.end method

.method public a()Z
    .locals 6

    .prologue
    const/16 v5, 0x9

    const/4 v1, 0x1

    .line 33
    :try_start_0
    invoke-static {}, Lcom/baidu/tts/g/b/b;->f()Lcom/baidu/tts/g/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/tts/g/b/b;->h()Landroid/content/Context;

    move-result-object v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 36
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 37
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 38
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 39
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 40
    const/4 v4, 0x0

    .line 42
    :try_start_1
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/c;->a:Lcom/baidu/tts/k/b;

    invoke-virtual {v0}, Lcom/baidu/tts/k/b;->c()Lcom/baidu/tts/e/j;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 44
    if-nez v0, :cond_0

    .line 45
    :try_start_2
    sget-object v0, Lcom/baidu/tts/e/j;->a:Lcom/baidu/tts/e/j;

    .line 48
    :cond_0
    invoke-static {}, Lcom/baidu/tts/b/a/b/c;->b()[I

    move-result-object v4

    invoke-virtual {v0}, Lcom/baidu/tts/e/j;->ordinal()I

    move-result v0

    aget v0, v4, v0

    packed-switch v0, :pswitch_data_0

    .line 70
    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 43
    :catchall_0
    move-exception v0

    .line 44
    if-nez v4, :cond_2

    .line 45
    sget-object v1, Lcom/baidu/tts/e/j;->a:Lcom/baidu/tts/e/j;

    .line 47
    :cond_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    const-string v1, "MixStrategy"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :pswitch_0
    :try_start_3
    invoke-direct {p0, v2}, Lcom/baidu/tts/b/a/b/c;->c(I)Z

    move-result v0

    if-nez v0, :cond_3

    if-ne v2, v5, :cond_1

    :cond_3
    move v0, v1

    .line 51
    goto :goto_1

    .line 55
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/baidu/tts/b/a/b/c;->c(I)Z

    move-result v0

    if-nez v0, :cond_4

    if-eq v2, v5, :cond_4

    .line 56
    invoke-direct {p0, v3}, Lcom/baidu/tts/b/a/b/c;->a(I)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_4
    move v0, v1

    .line 57
    goto :goto_1

    .line 48
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
