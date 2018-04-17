.class public Lcom/baidu/tts/chainofresponsibility/logger/e;
.super Lcom/baidu/tts/chainofresponsibility/logger/a;
.source "PrintLoggerHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/baidu/tts/chainofresponsibility/logger/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/tts/chainofresponsibility/logger/c;Ljava/lang/Void;Lcom/baidu/tts/chainofresponsibility/logger/d;)V
    .locals 4

    .prologue
    .line 25
    invoke-virtual {p1}, Lcom/baidu/tts/chainofresponsibility/logger/c;->a()I

    move-result v0

    .line 26
    invoke-virtual {p1}, Lcom/baidu/tts/chainofresponsibility/logger/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-virtual {p1}, Lcom/baidu/tts/chainofresponsibility/logger/c;->c()Ljava/lang/String;

    move-result-object v2

    .line 28
    invoke-virtual {p1}, Lcom/baidu/tts/chainofresponsibility/logger/c;->d()Lcom/baidu/tts/chainofresponsibility/logger/d$a;

    move-result-object v3

    .line 29
    invoke-virtual {p0, v0, v3}, Lcom/baidu/tts/chainofresponsibility/logger/e;->a(ILcom/baidu/tts/chainofresponsibility/logger/d$a;)I

    move-result v0

    .line 30
    invoke-static {v0, v1, v2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 31
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/baidu/tts/chainofresponsibility/logger/c;

    check-cast p2, Ljava/lang/Void;

    check-cast p3, Lcom/baidu/tts/chainofresponsibility/logger/d;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/tts/chainofresponsibility/logger/e;->a(Lcom/baidu/tts/chainofresponsibility/logger/c;Ljava/lang/Void;Lcom/baidu/tts/chainofresponsibility/logger/d;)V

    return-void
.end method
