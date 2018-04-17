.class Lcom/baidu/location/a/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/location/a/m;


# direct methods
.method constructor <init>(Lcom/baidu/location/a/m;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/a/n;->a:Lcom/baidu/location/a/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/baidu/location/f/h;->h()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/a/n;->a:Lcom/baidu/location/a/m;

    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/location/a/m;->a(Lcom/baidu/location/a/m;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/a/n;->a:Lcom/baidu/location/a/m;

    invoke-virtual {v0}, Lcom/baidu/location/a/m;->d()V

    :cond_1
    return-void
.end method
