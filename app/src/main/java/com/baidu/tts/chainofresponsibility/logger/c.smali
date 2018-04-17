.class public Lcom/baidu/tts/chainofresponsibility/logger/c;
.super Lcom/baidu/tts/l/a;
.source "LoggerBean.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/baidu/tts/l/a",
        "<",
        "Lcom/baidu/tts/chainofresponsibility/logger/c;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/baidu/tts/chainofresponsibility/logger/d$a;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/baidu/tts/l/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/c;->a:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 34
    iput p1, p0, Lcom/baidu/tts/chainofresponsibility/logger/c;->a:I

    .line 35
    return-void
.end method

.method public a(Lcom/baidu/tts/chainofresponsibility/logger/d$a;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/baidu/tts/chainofresponsibility/logger/c;->d:Lcom/baidu/tts/chainofresponsibility/logger/d$a;

    .line 77
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/baidu/tts/chainofresponsibility/logger/c;->b:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/baidu/tts/chainofresponsibility/logger/c;->c:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/baidu/tts/chainofresponsibility/logger/c;->e:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public d()Lcom/baidu/tts/chainofresponsibility/logger/d$a;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/c;->d:Lcom/baidu/tts/chainofresponsibility/logger/d$a;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/c;->e:Ljava/lang/String;

    return-object v0
.end method
