.class final Lcom/tencent/map/b/f$c;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/map/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field private synthetic a:Lcom/tencent/map/b/f;


# direct methods
.method public constructor <init>(Lcom/tencent/map/b/f;)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/map/b/f$c;->a:Lcom/tencent/map/b/f;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v1, p0, Lcom/tencent/map/b/f$c;->a:Lcom/tencent/map/b/f;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/map/b/e$b;

    invoke-static {v1, v0}, Lcom/tencent/map/b/f;->a(Lcom/tencent/map/b/f;Lcom/tencent/map/b/e$b;)V

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/tencent/map/b/f$c;->a:Lcom/tencent/map/b/f;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/map/b/d$b;

    invoke-static {v1, v0}, Lcom/tencent/map/b/f;->a(Lcom/tencent/map/b/f;Lcom/tencent/map/b/d$b;)V

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/tencent/map/b/f$c;->a:Lcom/tencent/map/b/f;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/map/b/g$b;

    invoke-static {v1, v0}, Lcom/tencent/map/b/f;->a(Lcom/tencent/map/b/f;Lcom/tencent/map/b/g$b;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/tencent/map/b/f$c;->a:Lcom/tencent/map/b/f;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/tencent/map/b/f;->a(Lcom/tencent/map/b/f;I)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/tencent/map/b/f$c;->a:Lcom/tencent/map/b/f;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/tencent/map/b/f;->b(Lcom/tencent/map/b/f;I)V

    goto :goto_0

    :sswitch_5
    iget-object v1, p0, Lcom/tencent/map/b/f$c;->a:Lcom/tencent/map/b/f;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    invoke-static {v1, v0}, Lcom/tencent/map/b/f;->a(Lcom/tencent/map/b/f;Landroid/location/Location;)V

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/tencent/map/b/f$c;->a:Lcom/tencent/map/b/f;

    invoke-static {v0}, Lcom/tencent/map/b/f;->e(Lcom/tencent/map/b/f;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/map/b/f$c;->a:Lcom/tencent/map/b/f;

    invoke-static {v0}, Lcom/tencent/map/b/f;->c(Lcom/tencent/map/b/f;)V

    goto :goto_0

    :sswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/map/b/f$c;->a:Lcom/tencent/map/b/f;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/tencent/map/b/f;->a(Lcom/tencent/map/b/f;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/map/b/f$c;->a:Lcom/tencent/map/b/f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/map/b/f;->a(Lcom/tencent/map/b/f;Lcom/tencent/map/b/f$a;)Lcom/tencent/map/b/f$a;

    goto :goto_0

    :sswitch_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/tencent/map/b/f$c;->a:Lcom/tencent/map/b/f;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/tencent/map/b/f;->b(Lcom/tencent/map/b/f;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/map/b/f$c;->a:Lcom/tencent/map/b/f;

    invoke-static {v0}, Lcom/tencent/map/b/f;->f(Lcom/tencent/map/b/f;)Lcom/tencent/map/b/e$b;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/map/b/f$c;->a:Lcom/tencent/map/b/f;

    invoke-static {v0}, Lcom/tencent/map/b/f;->f(Lcom/tencent/map/b/f;)Lcom/tencent/map/b/e$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/map/b/e$b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/map/b/f$c;->a:Lcom/tencent/map/b/f;

    invoke-static {v0}, Lcom/tencent/map/b/f;->g(Lcom/tencent/map/b/f;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x8 -> :sswitch_8
        0x10 -> :sswitch_7
        0x100 -> :sswitch_6
    .end sparse-switch
.end method
