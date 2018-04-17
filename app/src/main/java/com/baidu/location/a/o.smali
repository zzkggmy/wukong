.class Lcom/baidu/location/a/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/location/a/m;


# direct methods
.method constructor <init>(Lcom/baidu/location/a/m;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/a/o;->a:Lcom/baidu/location/a/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/baidu/location/f/h;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/baidu/location/e/h;->a()Lcom/baidu/location/e/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/e/h;->m()V

    :cond_0
    return-void
.end method
