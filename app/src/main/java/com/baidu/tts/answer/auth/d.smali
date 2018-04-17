.class public Lcom/baidu/tts/answer/auth/d;
.super Lcom/baidu/tts/answer/auth/c;
.source "OfflineAuthBean.java"


# instance fields
.field private b:I

.field private c:Ljava/lang/String;

.field private d:Lcom/baidu/tts/answer/auth/e;

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/baidu/tts/answer/auth/c;-><init>()V

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/tts/answer/auth/d;->f:I

    .line 11
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 29
    iput p1, p0, Lcom/baidu/tts/answer/auth/d;->f:I

    .line 30
    return-void
.end method

.method public a(Lcom/baidu/tts/answer/auth/e;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/baidu/tts/answer/auth/d;->d:Lcom/baidu/tts/answer/auth/e;

    .line 66
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/baidu/tts/answer/auth/d;->c:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public b()Lcom/baidu/tts/answer/auth/e;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/baidu/tts/answer/auth/d;->d:Lcom/baidu/tts/answer/auth/e;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 41
    iput p1, p0, Lcom/baidu/tts/answer/auth/d;->b:I

    .line 42
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/baidu/tts/answer/auth/d;->d:Lcom/baidu/tts/answer/auth/e;

    invoke-virtual {v0}, Lcom/baidu/tts/answer/auth/e;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 81
    iput p1, p0, Lcom/baidu/tts/answer/auth/d;->e:I

    .line 82
    return-void
.end method

.method public d()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/baidu/tts/answer/auth/d;->e:I

    return v0
.end method
