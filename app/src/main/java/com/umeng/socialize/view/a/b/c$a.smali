.class Lcom/umeng/socialize/view/a/b/c$a;
.super Landroid/os/Handler;
.source "PieView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/view/a/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/umeng/socialize/view/a/b/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/umeng/socialize/view/a/b/c;)V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 85
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/umeng/socialize/view/a/b/c$a;->a:Ljava/lang/ref/WeakReference;

    .line 86
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/umeng/socialize/view/a/b/c$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/view/a/b/c;

    .line 91
    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0}, Lcom/umeng/socialize/view/a/b/c;->invalidate()V

    .line 94
    :cond_0
    return-void
.end method
