.class Lcom/baidu/location/a/q;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/baidu/location/a/m;


# direct methods
.method constructor <init>(Lcom/baidu/location/a/m;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/a/q;->a:Lcom/baidu/location/a/m;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/a/q;->a:Lcom/baidu/location/a/m;

    invoke-static {v0}, Lcom/baidu/location/a/m;->b(Lcom/baidu/location/a/m;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/a/q;->a:Lcom/baidu/location/a/m;

    invoke-static {v0}, Lcom/baidu/location/a/m;->c(Lcom/baidu/location/a/m;)V

    :cond_0
    return-void
.end method
