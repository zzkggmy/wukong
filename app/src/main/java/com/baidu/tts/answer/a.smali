.class public abstract Lcom/baidu/tts/answer/a;
.super Ljava/lang/Object;
.source "AJury.java"


# instance fields
.field private a:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/tts/answer/d",
            "<*>;>;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/tts/answer/e",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/answer/a;->a:Ljava/util/Hashtable;

    .line 15
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/answer/a;->b:Ljava/util/Hashtable;

    .line 13
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/baidu/tts/answer/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/baidu/tts/answer/e",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/baidu/tts/answer/a;->b:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/baidu/tts/answer/a;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/answer/e;

    .line 93
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/baidu/tts/answer/d;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/tts/answer/d",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-interface {p1}, Lcom/baidu/tts/answer/d;->a()Ljava/lang/String;

    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/baidu/tts/answer/a;->a:Ljava/util/Hashtable;

    invoke-virtual {v1, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v1}, Lcom/baidu/tts/answer/d;->a([Ljava/lang/Object;)Lcom/baidu/tts/answer/e;

    move-result-object v1

    .line 27
    invoke-interface {v1, v0}, Lcom/baidu/tts/answer/e;->a(Ljava/lang/String;)V

    .line 28
    iget-object v2, p0, Lcom/baidu/tts/answer/a;->b:Ljava/util/Hashtable;

    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    return-void
.end method

.method public f()V
    .locals 4

    .prologue
    .line 51
    iget-object v0, p0, Lcom/baidu/tts/answer/a;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v2

    .line 52
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    return-void

    .line 53
    :cond_0
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/answer/d;

    .line 54
    invoke-interface {v0}, Lcom/baidu/tts/answer/d;->a()Ljava/lang/String;

    move-result-object v1

    .line 55
    iget-object v3, p0, Lcom/baidu/tts/answer/a;->b:Ljava/util/Hashtable;

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/tts/answer/e;

    .line 56
    invoke-interface {v0}, Lcom/baidu/tts/answer/d;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/baidu/tts/answer/e;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method
