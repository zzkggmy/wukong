.class Lcom/baidu/location/c/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/location/c/a;


# direct methods
.method constructor <init>(Lcom/baidu/location/c/a;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/c/b;->a:Lcom/baidu/location/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/c/b;->a:Lcom/baidu/location/c/a;

    invoke-static {v0}, Lcom/baidu/location/c/a;->a(Lcom/baidu/location/c/a;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/c/b;->a:Lcom/baidu/location/c/a;

    iget-object v1, p0, Lcom/baidu/location/c/b;->a:Lcom/baidu/location/c/a;

    invoke-static {v1}, Lcom/baidu/location/c/a;->a(Lcom/baidu/location/c/a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/location/c/a;->a(Lcom/baidu/location/c/a;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/c/b;->a:Lcom/baidu/location/c/a;

    invoke-virtual {v0}, Lcom/baidu/location/c/a;->e()V

    :cond_0
    return-void
.end method
