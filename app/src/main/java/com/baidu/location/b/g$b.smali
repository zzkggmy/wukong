.class Lcom/baidu/location/b/g$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/b/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/location/b/g;


# direct methods
.method private constructor <init>(Lcom/baidu/location/b/g;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/b/g$b;->a:Lcom/baidu/location/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/location/b/g;Lcom/baidu/location/b/h;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/b/g$b;-><init>(Lcom/baidu/location/b/g;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x1

    invoke-static {}, Lcom/baidu/location/a/g;->a()Lcom/baidu/location/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/a/g;->d()I

    move-result v0

    iget-object v1, p0, Lcom/baidu/location/b/g$b;->a:Lcom/baidu/location/b/g;

    invoke-static {v1}, Lcom/baidu/location/b/g;->a(Lcom/baidu/location/b/g;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/baidu/location/b/d;->a()Lcom/baidu/location/b/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/b/d;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/baidu/location/e/h;->a()Lcom/baidu/location/e/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/e/h;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eq v0, v4, :cond_0

    iget-object v0, p0, Lcom/baidu/location/b/g$b;->a:Lcom/baidu/location/b/g;

    invoke-static {v0}, Lcom/baidu/location/b/g;->b(Lcom/baidu/location/b/g;)V

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/b/g$b;->a:Lcom/baidu/location/b/g;

    invoke-static {v0}, Lcom/baidu/location/b/g;->a(Lcom/baidu/location/b/g;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/b/g$b;->a:Lcom/baidu/location/b/g;

    invoke-static {v0}, Lcom/baidu/location/b/g;->c(Lcom/baidu/location/b/g;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/b/g$b;->a:Lcom/baidu/location/b/g;

    iget-object v0, v0, Lcom/baidu/location/b/g;->a:Landroid/os/Handler;

    sget v1, Lcom/baidu/location/h/j;->O:I

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/baidu/location/b/g$b;->a:Lcom/baidu/location/b/g;

    invoke-static {v0, v4}, Lcom/baidu/location/b/g;->a(Lcom/baidu/location/b/g;Z)Z

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/b/g$b;->a:Lcom/baidu/location/b/g;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/location/b/g;->a(Lcom/baidu/location/b/g;Z)Z

    goto :goto_0
.end method
