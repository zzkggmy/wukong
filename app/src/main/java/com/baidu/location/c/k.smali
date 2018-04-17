.class Lcom/baidu/location/c/k;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/baidu/location/c/i;


# direct methods
.method constructor <init>(Lcom/baidu/location/c/i;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/c/k;->a:Lcom/baidu/location/c/i;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/c/k;->a:Lcom/baidu/location/c/i;

    invoke-static {v0}, Lcom/baidu/location/c/i;->m(Lcom/baidu/location/c/i;)V

    return-void
.end method
