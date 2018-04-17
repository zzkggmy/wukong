.class public abstract Lcom/baidu/tts/b/a/a/a;
.super Lcom/baidu/tts/i/a;
.source "AEngineExecutor.java"

# interfaces
.implements Lcom/baidu/tts/b/a/a/d;


# instance fields
.field protected a:Lcom/baidu/tts/b/a/b/b;

.field protected b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/tts/b/a/b;",
            ">;"
        }
    .end annotation
.end field

.field protected volatile c:Lcom/baidu/tts/b/a/a/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/baidu/tts/i/a;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/b/a/a/a;->b:Ljava/util/List;

    .line 22
    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/tts/k/e;)I
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/a;->c:Lcom/baidu/tts/b/a/a/b;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/a/a/b;->a(Lcom/baidu/tts/k/e;)I

    move-result v0

    return v0
.end method

.method public a(Lcom/baidu/tts/k/f;)I
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/a;->c:Lcom/baidu/tts/b/a/a/b;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/a/a/b;->a(Lcom/baidu/tts/k/f;)I

    move-result v0

    return v0
.end method

.method public a(Lcom/baidu/tts/k/g;)I
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/a;->c:Lcom/baidu/tts/b/a/a/b;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/a/a/b;->a(Lcom/baidu/tts/k/g;)I

    move-result v0

    return v0
.end method

.method public a(Lcom/baidu/tts/b/a/a/b;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/baidu/tts/b/a/a/a;->c:Lcom/baidu/tts/b/a/a/b;

    .line 39
    return-void
.end method

.method public a(Lcom/baidu/tts/b/a/b/b;)V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/a;->c:Lcom/baidu/tts/b/a/a/b;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/a/a/b;->a(Lcom/baidu/tts/b/a/b/b;)V

    .line 95
    return-void
.end method

.method public a(Lcom/baidu/tts/b/a/b;)V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/a;->c:Lcom/baidu/tts/b/a/a/b;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/a/a/b;->a(Lcom/baidu/tts/b/a/b;)V

    .line 103
    return-void
.end method

.method a(Lcom/baidu/tts/k/h;)V
    .locals 2

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/baidu/tts/b/a/a/a;->A()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 173
    if-nez p1, :cond_0

    .line 174
    new-instance p1, Lcom/baidu/tts/k/h;

    invoke-direct {p1}, Lcom/baidu/tts/k/h;-><init>()V

    .line 176
    :cond_0
    sget-object v0, Lcom/baidu/tts/e/e;->a:Lcom/baidu/tts/e/e;

    invoke-virtual {p1, v0}, Lcom/baidu/tts/k/h;->a(Lcom/baidu/tts/e/e;)V

    .line 177
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/a;->b:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 178
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 185
    :cond_2
    return-void

    .line 178
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/b/a/b;

    .line 179
    if-eqz v0, :cond_1

    .line 180
    invoke-interface {v0, p1}, Lcom/baidu/tts/b/a/b;->a(Lcom/baidu/tts/k/h;)V

    goto :goto_0
.end method

.method public a(Lcom/baidu/tts/k/i;)V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/a;->c:Lcom/baidu/tts/b/a/a/b;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/a/a/b;->a(Lcom/baidu/tts/k/i;)V

    .line 129
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/a;->c:Lcom/baidu/tts/b/a/a/b;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/a/a/b;->a(Ljava/lang/Object;)V

    .line 119
    return-void
.end method

.method public b(Lcom/baidu/tts/k/e;)I
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/a;->c:Lcom/baidu/tts/b/a/a/b;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/a/a/b;->b(Lcom/baidu/tts/k/e;)I

    move-result v0

    return v0
.end method

.method b(Lcom/baidu/tts/k/h;)V
    .locals 2

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/baidu/tts/b/a/a/a;->A()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 189
    if-nez p1, :cond_0

    .line 190
    new-instance p1, Lcom/baidu/tts/k/h;

    invoke-direct {p1}, Lcom/baidu/tts/k/h;-><init>()V

    .line 192
    :cond_0
    sget-object v0, Lcom/baidu/tts/e/e;->c:Lcom/baidu/tts/e/e;

    invoke-virtual {p1, v0}, Lcom/baidu/tts/k/h;->a(Lcom/baidu/tts/e/e;)V

    .line 193
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/a;->b:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 194
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 201
    :cond_2
    return-void

    .line 194
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/b/a/b;

    .line 195
    if-eqz v0, :cond_1

    .line 196
    invoke-interface {v0, p1}, Lcom/baidu/tts/b/a/b;->c(Lcom/baidu/tts/k/h;)V

    goto :goto_0
.end method

.method c(Lcom/baidu/tts/k/h;)V
    .locals 2

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/baidu/tts/b/a/a/a;->A()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 205
    if-nez p1, :cond_0

    .line 206
    new-instance p1, Lcom/baidu/tts/k/h;

    invoke-direct {p1}, Lcom/baidu/tts/k/h;-><init>()V

    .line 208
    :cond_0
    sget-object v0, Lcom/baidu/tts/e/e;->b:Lcom/baidu/tts/e/e;

    invoke-virtual {p1, v0}, Lcom/baidu/tts/k/h;->a(Lcom/baidu/tts/e/e;)V

    .line 209
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/a;->b:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 210
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 217
    :cond_2
    return-void

    .line 210
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/b/a/b;

    .line 211
    if-eqz v0, :cond_1

    .line 212
    invoke-interface {v0, p1}, Lcom/baidu/tts/b/a/b;->b(Lcom/baidu/tts/k/h;)V

    goto :goto_0
.end method

.method d(Lcom/baidu/tts/k/h;)V
    .locals 2

    .prologue
    .line 220
    if-nez p1, :cond_0

    .line 221
    new-instance p1, Lcom/baidu/tts/k/h;

    invoke-direct {p1}, Lcom/baidu/tts/k/h;-><init>()V

    .line 223
    :cond_0
    sget-object v0, Lcom/baidu/tts/e/e;->d:Lcom/baidu/tts/e/e;

    invoke-virtual {p1, v0}, Lcom/baidu/tts/k/h;->a(Lcom/baidu/tts/e/e;)V

    .line 224
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/a;->b:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 225
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 231
    :cond_2
    return-void

    .line 225
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/b/a/b;

    .line 226
    if-eqz v0, :cond_1

    .line 227
    invoke-interface {v0, p1}, Lcom/baidu/tts/b/a/b;->e(Lcom/baidu/tts/k/h;)V

    goto :goto_0
.end method

.method e(Lcom/baidu/tts/k/h;)V
    .locals 2

    .prologue
    .line 248
    if-nez p1, :cond_0

    .line 249
    new-instance p1, Lcom/baidu/tts/k/h;

    invoke-direct {p1}, Lcom/baidu/tts/k/h;-><init>()V

    .line 251
    :cond_0
    sget-object v0, Lcom/baidu/tts/e/e;->g:Lcom/baidu/tts/e/e;

    invoke-virtual {p1, v0}, Lcom/baidu/tts/k/h;->a(Lcom/baidu/tts/e/e;)V

    .line 252
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/a;->b:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 253
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 259
    :cond_2
    return-void

    .line 253
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/b/a/b;

    .line 254
    if-eqz v0, :cond_1

    .line 255
    invoke-interface {v0, p1}, Lcom/baidu/tts/b/a/b;->d(Lcom/baidu/tts/k/h;)V

    goto :goto_0
.end method

.method public f()Lcom/baidu/tts/b/a/a/b;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/a;->c:Lcom/baidu/tts/b/a/a/b;

    return-object v0
.end method

.method protected g()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/a;->c:Lcom/baidu/tts/b/a/a/b;

    invoke-virtual {v0}, Lcom/baidu/tts/b/a/a/b;->a()V

    .line 47
    return-void
.end method

.method protected h()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/a;->c:Lcom/baidu/tts/b/a/a/b;

    invoke-virtual {v0}, Lcom/baidu/tts/b/a/a/b;->f()V

    .line 55
    return-void
.end method

.method protected i()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/a;->c:Lcom/baidu/tts/b/a/a/b;

    invoke-virtual {v0}, Lcom/baidu/tts/b/a/a/b;->b()V

    .line 63
    return-void
.end method

.method protected j()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/a;->c:Lcom/baidu/tts/b/a/a/b;

    invoke-virtual {v0}, Lcom/baidu/tts/b/a/a/b;->c()V

    .line 71
    return-void
.end method

.method protected k()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/a;->c:Lcom/baidu/tts/b/a/a/b;

    invoke-virtual {v0}, Lcom/baidu/tts/b/a/a/b;->d()V

    .line 79
    return-void
.end method

.method protected l()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/a;->c:Lcom/baidu/tts/b/a/a/b;

    invoke-virtual {v0}, Lcom/baidu/tts/b/a/a/b;->e()V

    .line 87
    return-void
.end method
