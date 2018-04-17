.class Lu/aly/at$a;
.super Lu/aly/di;
.source "ControlPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/at;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/di",
        "<",
        "Lu/aly/at;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 227
    invoke-direct {p0}, Lu/aly/di;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/at$1;)V
    .locals 0

    .prologue
    .line 227
    invoke-direct {p0}, Lu/aly/at$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/cy;Lu/aly/at;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .prologue
    .line 232
    invoke-virtual {p1}, Lu/aly/cy;->j()Lu/aly/dd;

    .line 234
    :goto_0
    invoke-virtual {p1}, Lu/aly/cy;->l()Lu/aly/ct;

    move-result-object v0

    .line 235
    iget-byte v1, v0, Lu/aly/ct;->b:B

    if-nez v1, :cond_0

    .line 253
    invoke-virtual {p1}, Lu/aly/cy;->k()V

    .line 257
    invoke-virtual {p2}, Lu/aly/at;->f()V

    .line 258
    return-void

    .line 238
    :cond_0
    iget-short v1, v0, Lu/aly/ct;->c:S

    packed-switch v1, :pswitch_data_0

    .line 249
    iget-byte v0, v0, Lu/aly/ct;->b:B

    invoke-static {p1, v0}, Lu/aly/db;->a(Lu/aly/cy;B)V

    .line 251
    :goto_1
    invoke-virtual {p1}, Lu/aly/cy;->m()V

    goto :goto_0

    .line 240
    :pswitch_0
    iget-byte v1, v0, Lu/aly/ct;->b:B

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    .line 241
    new-instance v0, Lu/aly/bf;

    invoke-direct {v0}, Lu/aly/bf;-><init>()V

    iput-object v0, p2, Lu/aly/at;->a:Lu/aly/bf;

    .line 242
    iget-object v0, p2, Lu/aly/at;->a:Lu/aly/bf;

    invoke-virtual {v0, p1}, Lu/aly/bf;->a(Lu/aly/cy;)V

    .line 243
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lu/aly/at;->a(Z)V

    goto :goto_1

    .line 245
    :cond_1
    iget-byte v0, v0, Lu/aly/ct;->b:B

    invoke-static {p1, v0}, Lu/aly/db;->a(Lu/aly/cy;B)V

    goto :goto_1

    .line 238
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic a(Lu/aly/cy;Lu/aly/bz;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .prologue
    .line 227
    check-cast p2, Lu/aly/at;

    invoke-virtual {p0, p1, p2}, Lu/aly/at$a;->b(Lu/aly/cy;Lu/aly/at;)V

    return-void
.end method

.method public b(Lu/aly/cy;Lu/aly/at;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .prologue
    .line 262
    invoke-virtual {p2}, Lu/aly/at;->f()V

    .line 264
    invoke-static {}, Lu/aly/at;->h()Lu/aly/dd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/cy;->a(Lu/aly/dd;)V

    .line 265
    iget-object v0, p2, Lu/aly/at;->a:Lu/aly/bf;

    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {p2}, Lu/aly/at;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    invoke-static {}, Lu/aly/at;->i()Lu/aly/ct;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/cy;->a(Lu/aly/ct;)V

    .line 268
    iget-object v0, p2, Lu/aly/at;->a:Lu/aly/bf;

    invoke-virtual {v0, p1}, Lu/aly/bf;->b(Lu/aly/cy;)V

    .line 269
    invoke-virtual {p1}, Lu/aly/cy;->c()V

    .line 272
    :cond_0
    invoke-virtual {p1}, Lu/aly/cy;->d()V

    .line 273
    invoke-virtual {p1}, Lu/aly/cy;->b()V

    .line 274
    return-void
.end method

.method public synthetic b(Lu/aly/cy;Lu/aly/bz;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .prologue
    .line 227
    check-cast p2, Lu/aly/at;

    invoke-virtual {p0, p1, p2}, Lu/aly/at$a;->a(Lu/aly/cy;Lu/aly/at;)V

    return-void
.end method
