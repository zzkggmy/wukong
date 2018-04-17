.class public Lcom/baidu/tts/chainofresponsibility/logger/f;
.super Lcom/baidu/tts/chainofresponsibility/logger/a;
.source "SpecifyLoggerHandler.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/baidu/tts/chainofresponsibility/logger/a;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/f;->a:Ljava/util/List;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/f;->b:Ljava/util/List;

    .line 17
    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/tts/chainofresponsibility/logger/c;Ljava/lang/Void;Lcom/baidu/tts/chainofresponsibility/logger/d;)V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/baidu/tts/chainofresponsibility/logger/c;->b()Ljava/lang/String;

    move-result-object v5

    .line 69
    invoke-virtual {p1}, Lcom/baidu/tts/chainofresponsibility/logger/c;->c()Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-virtual {p1}, Lcom/baidu/tts/chainofresponsibility/logger/c;->e()Ljava/lang/String;

    move-result-object v1

    .line 71
    if-eqz v1, :cond_8

    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 74
    :goto_0
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/f;->a:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 75
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 76
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/f;->a:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 90
    :goto_1
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/f;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/f;->b:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v4, v3

    .line 107
    :cond_0
    if-eqz v4, :cond_1

    .line 108
    invoke-virtual {p1}, Lcom/baidu/tts/chainofresponsibility/logger/c;->a()I

    move-result v0

    .line 109
    invoke-virtual {p1}, Lcom/baidu/tts/chainofresponsibility/logger/c;->d()Lcom/baidu/tts/chainofresponsibility/logger/d$a;

    move-result-object v2

    .line 110
    invoke-virtual {p0, v0, v2}, Lcom/baidu/tts/chainofresponsibility/logger/f;->a(ILcom/baidu/tts/chainofresponsibility/logger/d$a;)I

    move-result v0

    .line 111
    invoke-static {v0, v5, v1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_1
    return-void

    .line 79
    :cond_2
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v3

    .line 80
    :cond_3
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    move v4, v2

    goto :goto_1

    .line 81
    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 82
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 83
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v2, v4

    .line 84
    goto :goto_2

    .line 95
    :cond_5
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 96
    :cond_6
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 98
    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    .line 99
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v4, v3

    .line 100
    goto :goto_3

    :cond_7
    move v4, v3

    goto :goto_1

    :cond_8
    move-object v1, v0

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/baidu/tts/chainofresponsibility/logger/c;

    check-cast p2, Ljava/lang/Void;

    check-cast p3, Lcom/baidu/tts/chainofresponsibility/logger/d;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/tts/chainofresponsibility/logger/f;->a(Lcom/baidu/tts/chainofresponsibility/logger/c;Ljava/lang/Void;Lcom/baidu/tts/chainofresponsibility/logger/d;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/f;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/f;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/f;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/f;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/f;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 42
    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/f;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/f;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 26
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 28
    :cond_1
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/f;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/f;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/f;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_0
    return-void
.end method
