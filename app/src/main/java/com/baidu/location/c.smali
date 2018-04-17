.class Lcom/baidu/location/c;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/baidu/location/LocationClient;


# direct methods
.method constructor <init>(Lcom/baidu/location/LocationClient;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/c;->a:Lcom/baidu/location/LocationClient;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/baidu/location/c;->a:Lcom/baidu/location/LocationClient;

    invoke-static {v0}, Lcom/baidu/location/LocationClient;->access$800(Lcom/baidu/location/LocationClient;)Lcom/baidu/location/a/b;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/c;->a:Lcom/baidu/location/LocationClient;

    new-instance v1, Lcom/baidu/location/a/b;

    iget-object v2, p0, Lcom/baidu/location/c;->a:Lcom/baidu/location/LocationClient;

    invoke-static {v2}, Lcom/baidu/location/LocationClient;->access$900(Lcom/baidu/location/LocationClient;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/location/c;->a:Lcom/baidu/location/LocationClient;

    invoke-static {v3}, Lcom/baidu/location/LocationClient;->access$600(Lcom/baidu/location/LocationClient;)Lcom/baidu/location/LocationClientOption;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/location/c;->a:Lcom/baidu/location/LocationClient;

    invoke-direct {v1, v2, v3, v4}, Lcom/baidu/location/a/b;-><init>(Landroid/content/Context;Lcom/baidu/location/LocationClientOption;Lcom/baidu/location/a/b$b;)V

    invoke-static {v0, v1}, Lcom/baidu/location/LocationClient;->access$802(Lcom/baidu/location/LocationClient;Lcom/baidu/location/a/b;)Lcom/baidu/location/a/b;

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/c;->a:Lcom/baidu/location/LocationClient;

    invoke-static {v0}, Lcom/baidu/location/LocationClient;->access$800(Lcom/baidu/location/LocationClient;)Lcom/baidu/location/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/a/b;->c()V

    return-void
.end method
