.class Lcom/baidu/location/c/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/location/c/a/a;


# direct methods
.method constructor <init>(Lcom/baidu/location/c/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/c/a/b;->a:Lcom/baidu/location/c/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/c/a/b;->a:Lcom/baidu/location/c/a/a;

    invoke-virtual {v0}, Lcom/baidu/location/c/a/a;->e()V

    return-void
.end method
