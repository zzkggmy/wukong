.class Lcom/baidu/location/b/e$a;
.super Lcom/baidu/location/h/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Z

.field c:Z

.field final synthetic d:Lcom/baidu/location/b/e;


# direct methods
.method public constructor <init>(Lcom/baidu/location/b/e;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/baidu/location/b/e$a;->d:Lcom/baidu/location/b/e;

    invoke-direct {p0}, Lcom/baidu/location/h/e;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/b/e$a;->a:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/baidu/location/b/e$a;->b:Z

    iput-boolean v1, p0, Lcom/baidu/location/b/e$a;->c:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/b/e$a;->k:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    invoke-static {}, Lcom/baidu/location/h/j;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/b/e$a;->h:Ljava/lang/String;

    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/location/b/e$a;->i:I

    iget-object v0, p0, Lcom/baidu/location/b/e$a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/location/Jni;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/location/b/e$a;->a:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/baidu/location/b/e$a;->b:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/location/b/e$a;->k:Ljava/util/Map;

    const-string v2, "qt"

    const-string v3, "grid"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object v1, p0, Lcom/baidu/location/b/e$a;->k:Ljava/util/Map;

    const-string v2, "req"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    iget-object v1, p0, Lcom/baidu/location/b/e$a;->k:Ljava/util/Map;

    const-string v2, "qt"

    const-string v3, "conf"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/baidu/location/b/e$a;->c:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/baidu/location/b/e$a;->c:Z

    iput-object p1, p0, Lcom/baidu/location/b/e$a;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/baidu/location/b/e$a;->b:Z

    if-eqz p2, :cond_1

    const-string v0, "loc.map.baidu.com"

    invoke-virtual {p0, v1, v0}, Lcom/baidu/location/b/e$a;->a(ZLjava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/baidu/location/b/e$a;->e()V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/baidu/location/b/e$a;->j:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/baidu/location/b/e$a;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/b/e$a;->d:Lcom/baidu/location/b/e;

    iget-object v1, p0, Lcom/baidu/location/b/e$a;->m:[B

    invoke-static {v0, v1}, Lcom/baidu/location/b/e;->a(Lcom/baidu/location/b/e;[B)V

    :goto_0
    iget-object v0, p0, Lcom/baidu/location/b/e$a;->k:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/b/e$a;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/b/e$a;->c:Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/b/e$a;->d:Lcom/baidu/location/b/e;

    iget-object v1, p0, Lcom/baidu/location/b/e$a;->j:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/baidu/location/b/e;->a(Lcom/baidu/location/b/e;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/baidu/location/b/e$a;->d:Lcom/baidu/location/b/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/location/b/e;->a(Lcom/baidu/location/b/e;Ljava/lang/String;)V

    goto :goto_0
.end method
