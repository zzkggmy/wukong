.class Lcom/baidu/location/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/location/Location;

.field final synthetic b:Lcom/baidu/location/a/c;


# direct methods
.method constructor <init>(Lcom/baidu/location/a/c;Landroid/location/Location;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/a/d;->b:Lcom/baidu/location/a/c;

    iput-object p2, p0, Lcom/baidu/location/a/d;->a:Landroid/location/Location;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/a/d;->b:Lcom/baidu/location/a/c;

    iget-object v1, p0, Lcom/baidu/location/a/d;->a:Landroid/location/Location;

    invoke-static {v0, v1}, Lcom/baidu/location/a/c;->a(Lcom/baidu/location/a/c;Landroid/location/Location;)V

    return-void
.end method
