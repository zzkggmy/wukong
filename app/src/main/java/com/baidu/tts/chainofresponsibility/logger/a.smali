.class public abstract Lcom/baidu/tts/chainofresponsibility/logger/a;
.super Ljava/lang/Object;
.source "ALoggerHandler.java"

# interfaces
.implements Lcom/baidu/tts/chainofresponsibility/logger/b;


# static fields
.field private static synthetic a:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()[I
    .locals 3

    .prologue
    .line 13
    sget-object v0, Lcom/baidu/tts/chainofresponsibility/logger/a;->a:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/baidu/tts/chainofresponsibility/logger/d$a;->values()[Lcom/baidu/tts/chainofresponsibility/logger/d$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/baidu/tts/chainofresponsibility/logger/d$a;->a:Lcom/baidu/tts/chainofresponsibility/logger/d$a;

    invoke-virtual {v1}, Lcom/baidu/tts/chainofresponsibility/logger/d$a;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sput-object v0, Lcom/baidu/tts/chainofresponsibility/logger/a;->a:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method protected a(ILcom/baidu/tts/chainofresponsibility/logger/d$a;)I
    .locals 2

    .prologue
    .line 16
    if-eqz p2, :cond_0

    .line 17
    invoke-static {}, Lcom/baidu/tts/chainofresponsibility/logger/a;->a()[I

    move-result-object v0

    invoke-virtual {p2}, Lcom/baidu/tts/chainofresponsibility/logger/d$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 26
    :cond_0
    :goto_0
    return p1

    .line 19
    :pswitch_0
    const/4 p1, 0x6

    .line 20
    goto :goto_0

    .line 17
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
