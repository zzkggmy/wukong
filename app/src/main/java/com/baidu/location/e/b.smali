.class Lcom/baidu/location/e/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/location/e/a;


# direct methods
.method constructor <init>(Lcom/baidu/location/e/a;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/e/b;->a:Lcom/baidu/location/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    sget-boolean v0, Lcom/baidu/location/f;->isServing:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/e/b;->a:Lcom/baidu/location/e/a;

    iget-boolean v0, v0, Lcom/baidu/location/e/a;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/e/b;->a:Lcom/baidu/location/e/a;

    invoke-static {v0}, Lcom/baidu/location/e/a;->a(Lcom/baidu/location/e/a;)V

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/e/b;->a:Lcom/baidu/location/e/a;

    invoke-static {v0}, Lcom/baidu/location/e/a;->b(Lcom/baidu/location/e/a;)V

    :cond_1
    return-void
.end method
