.class Lcom/baidu/tts/d/c$a;
.super Ljava/lang/Object;
.source "Downloader.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/tts/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/baidu/tts/d/b/f;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/tts/d/c;

.field private b:Lcom/baidu/tts/d/b;


# direct methods
.method public constructor <init>(Lcom/baidu/tts/d/c;Lcom/baidu/tts/d/b;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/baidu/tts/d/c$a;->a:Lcom/baidu/tts/d/c;

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput-object p2, p0, Lcom/baidu/tts/d/c$a;->b:Lcom/baidu/tts/d/b;

    .line 166
    return-void
.end method


# virtual methods
.method public a()Lcom/baidu/tts/d/b/f;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lcom/baidu/tts/d/c$a;->a:Lcom/baidu/tts/d/c;

    invoke-static {v0}, Lcom/baidu/tts/d/c;->a(Lcom/baidu/tts/d/c;)Lcom/baidu/tts/d/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/tts/d/c$a;->b:Lcom/baidu/tts/d/b;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/d/b/a;->a(Lcom/baidu/tts/d/b;)Lcom/baidu/tts/d/b/f;

    move-result-object v1

    .line 176
    invoke-virtual {v1}, Lcom/baidu/tts/d/b/f;->c()Ljava/util/Set;

    move-result-object v0

    .line 177
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 180
    new-instance v2, Lcom/baidu/tts/client/model/Conditions;

    invoke-direct {v2}, Lcom/baidu/tts/client/model/Conditions;-><init>()V

    .line 181
    invoke-virtual {v2, v0}, Lcom/baidu/tts/client/model/Conditions;->setModelIds(Ljava/util/Set;)V

    .line 182
    iget-object v0, p0, Lcom/baidu/tts/d/c$a;->a:Lcom/baidu/tts/d/c;

    invoke-static {v0}, Lcom/baidu/tts/d/c;->b(Lcom/baidu/tts/d/c;)Lcom/baidu/tts/j/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/baidu/tts/j/a;->a(Lcom/baidu/tts/client/model/Conditions;)Lcom/baidu/tts/client/model/BasicHandler;

    move-result-object v0

    .line 183
    invoke-virtual {v0}, Lcom/baidu/tts/client/model/BasicHandler;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/client/model/ModelBags;

    .line 184
    iget-object v2, p0, Lcom/baidu/tts/d/c$a;->a:Lcom/baidu/tts/d/c;

    invoke-static {v2}, Lcom/baidu/tts/d/c;->b(Lcom/baidu/tts/d/c;)Lcom/baidu/tts/j/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/baidu/tts/j/a;->a(Lcom/baidu/tts/client/model/ModelBags;)V

    .line 185
    iget-object v0, p0, Lcom/baidu/tts/d/c$a;->a:Lcom/baidu/tts/d/c;

    invoke-static {v0}, Lcom/baidu/tts/d/c;->a(Lcom/baidu/tts/d/c;)Lcom/baidu/tts/d/b/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/baidu/tts/d/b/a;->a(Lcom/baidu/tts/d/b/f;)V

    .line 187
    :cond_0
    invoke-virtual {v1}, Lcom/baidu/tts/d/b/f;->b()Ljava/util/Set;

    move-result-object v0

    .line 188
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 191
    iget-object v2, p0, Lcom/baidu/tts/d/c$a;->a:Lcom/baidu/tts/d/c;

    invoke-static {v2}, Lcom/baidu/tts/d/c;->b(Lcom/baidu/tts/d/c;)Lcom/baidu/tts/j/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/baidu/tts/j/a;->a(Ljava/util/Set;)Lcom/baidu/tts/client/model/BasicHandler;

    move-result-object v0

    .line 192
    invoke-virtual {v0}, Lcom/baidu/tts/client/model/BasicHandler;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/client/model/ModelFileBags;

    .line 193
    iget-object v2, p0, Lcom/baidu/tts/d/c$a;->a:Lcom/baidu/tts/d/c;

    invoke-static {v2}, Lcom/baidu/tts/d/c;->b(Lcom/baidu/tts/d/c;)Lcom/baidu/tts/j/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/tts/j/a;->f()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/tts/client/model/ModelFileBags;->generateAbsPath(Landroid/content/Context;)V

    .line 194
    iget-object v2, p0, Lcom/baidu/tts/d/c$a;->a:Lcom/baidu/tts/d/c;

    invoke-static {v2}, Lcom/baidu/tts/d/c;->b(Lcom/baidu/tts/d/c;)Lcom/baidu/tts/j/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/baidu/tts/j/a;->a(Lcom/baidu/tts/client/model/ModelFileBags;)V

    .line 195
    iget-object v0, p0, Lcom/baidu/tts/d/c$a;->a:Lcom/baidu/tts/d/c;

    invoke-static {v0}, Lcom/baidu/tts/d/c;->a(Lcom/baidu/tts/d/c;)Lcom/baidu/tts/d/b/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/baidu/tts/d/b/a;->b(Lcom/baidu/tts/d/b/f;)V

    .line 198
    :cond_1
    invoke-virtual {v1}, Lcom/baidu/tts/d/b/f;->a()Ljava/util/Set;

    move-result-object v0

    .line 199
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 202
    iget-object v2, p0, Lcom/baidu/tts/d/c$a;->a:Lcom/baidu/tts/d/c;

    invoke-static {v2}, Lcom/baidu/tts/d/c;->a(Lcom/baidu/tts/d/c;)Lcom/baidu/tts/d/b/a;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v0, v3}, Lcom/baidu/tts/d/b/a;->a(Ljava/util/Set;I)V

    .line 203
    iget-object v2, p0, Lcom/baidu/tts/d/c$a;->a:Lcom/baidu/tts/d/c;

    invoke-static {v2}, Lcom/baidu/tts/d/c;->a(Lcom/baidu/tts/d/c;)Lcom/baidu/tts/d/b/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/baidu/tts/d/b/a;->a(Ljava/util/Set;)V

    .line 204
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 205
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    move-object v0, v1

    .line 219
    :goto_1
    return-object v0

    .line 206
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 207
    iget-object v3, p0, Lcom/baidu/tts/d/c$a;->a:Lcom/baidu/tts/d/c;

    invoke-static {v3}, Lcom/baidu/tts/d/c;->a(Lcom/baidu/tts/d/c;)Lcom/baidu/tts/d/b/a;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/baidu/tts/d/b/a;->a(Ljava/lang/String;)Lcom/baidu/tts/d/b/b;

    move-result-object v3

    .line 208
    new-instance v4, Lcom/baidu/tts/d/a/c;

    invoke-direct {v4}, Lcom/baidu/tts/d/a/c;-><init>()V

    .line 209
    iget-object v5, p0, Lcom/baidu/tts/d/c$a;->a:Lcom/baidu/tts/d/c;

    invoke-static {v5}, Lcom/baidu/tts/d/c;->c(Lcom/baidu/tts/d/c;)Lcom/baidu/tts/d/a;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/baidu/tts/d/a/c;->a(Lcom/baidu/tts/d/a;)V

    .line 210
    invoke-virtual {v4, v0}, Lcom/baidu/tts/d/a/c;->a(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v4, v3}, Lcom/baidu/tts/d/a/c;->a(Lcom/baidu/tts/d/b/b;)V

    .line 212
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 213
    const/4 v0, 0x0

    goto :goto_1

    .line 215
    :cond_4
    iget-object v0, p0, Lcom/baidu/tts/d/c$a;->a:Lcom/baidu/tts/d/c;

    invoke-static {v0}, Lcom/baidu/tts/d/c;->d(Lcom/baidu/tts/d/c;)Lcom/baidu/tts/d/a/b;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/baidu/tts/d/a/b;->a(Lcom/baidu/tts/d/a/c;)V

    goto :goto_0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/baidu/tts/d/c$a;->a()Lcom/baidu/tts/d/b/f;

    move-result-object v0

    return-object v0
.end method
