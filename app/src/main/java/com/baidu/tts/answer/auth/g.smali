.class public Lcom/baidu/tts/answer/auth/g;
.super Lcom/baidu/tts/answer/auth/c;
.source "OnlineAuthBean.java"


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/baidu/tts/answer/auth/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/baidu/tts/answer/auth/g;->c:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/baidu/tts/answer/auth/g;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/baidu/tts/answer/auth/g;->b:Ljava/lang/String;

    .line 39
    return-void
.end method
