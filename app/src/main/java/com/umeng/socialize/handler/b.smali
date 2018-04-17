.class Lcom/umeng/socialize/handler/b;
.super Ljava/lang/Object;
.source "UMAPIShareHandler.java"

# interfaces
.implements Lcom/umeng/socialize/UMAuthListener;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/umeng/socialize/ShareContent;

.field final synthetic c:Lcom/umeng/socialize/UMShareListener;

.field final synthetic d:Lcom/umeng/socialize/handler/UMAPIShareHandler;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/handler/UMAPIShareHandler;Landroid/app/Activity;Lcom/umeng/socialize/ShareContent;Lcom/umeng/socialize/UMShareListener;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/umeng/socialize/handler/b;->d:Lcom/umeng/socialize/handler/UMAPIShareHandler;

    iput-object p2, p0, Lcom/umeng/socialize/handler/b;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/umeng/socialize/handler/b;->b:Lcom/umeng/socialize/ShareContent;

    iput-object p4, p0, Lcom/umeng/socialize/handler/b;->c:Lcom/umeng/socialize/UMShareListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/umeng/socialize/bean/SHARE_MEDIA;I)V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/umeng/socialize/handler/b;->c:Lcom/umeng/socialize/UMShareListener;

    invoke-interface {v0, p1}, Lcom/umeng/socialize/UMShareListener;->onCancel(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 132
    return-void
.end method

.method public onComplete(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/umeng/socialize/bean/SHARE_MEDIA;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 115
    new-instance v0, Lcom/umeng/socialize/handler/c;

    invoke-direct {v0, p0}, Lcom/umeng/socialize/handler/c;-><init>(Lcom/umeng/socialize/handler/b;)V

    invoke-static {v0}, Lcom/umeng/socialize/common/QueuedWork;->runInBack(Ljava/lang/Runnable;)V

    .line 122
    return-void
.end method

.method public onError(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILjava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/umeng/socialize/handler/b;->c:Lcom/umeng/socialize/UMShareListener;

    invoke-interface {v0, p1, p3}, Lcom/umeng/socialize/UMShareListener;->onError(Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/Throwable;)V

    .line 127
    return-void
.end method
