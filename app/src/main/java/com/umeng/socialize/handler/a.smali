.class Lcom/umeng/socialize/handler/a;
.super Ljava/lang/Object;
.source "UMAPIShareHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/handler/UMAPIShareHandler$a;

.field final synthetic b:Landroid/os/Bundle;

.field final synthetic c:Lcom/umeng/socialize/handler/UMAPIShareHandler;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/handler/UMAPIShareHandler;Lcom/umeng/socialize/handler/UMAPIShareHandler$a;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/umeng/socialize/handler/a;->c:Lcom/umeng/socialize/handler/UMAPIShareHandler;

    iput-object p2, p0, Lcom/umeng/socialize/handler/a;->a:Lcom/umeng/socialize/handler/UMAPIShareHandler$a;

    iput-object p3, p0, Lcom/umeng/socialize/handler/a;->b:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 88
    iget-object v0, p0, Lcom/umeng/socialize/handler/a;->c:Lcom/umeng/socialize/handler/UMAPIShareHandler;

    iget-object v1, p0, Lcom/umeng/socialize/handler/a;->a:Lcom/umeng/socialize/handler/UMAPIShareHandler$a;

    iget-object v1, v1, Lcom/umeng/socialize/handler/UMAPIShareHandler$a;->a:Lcom/umeng/socialize/ShareContent;

    iget-object v2, p0, Lcom/umeng/socialize/handler/a;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lcom/umeng/socialize/handler/UMAPIShareHandler;->getResult(Lcom/umeng/socialize/ShareContent;Landroid/os/Bundle;)Lcom/umeng/socialize/ShareContent;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/umeng/socialize/handler/a;->c:Lcom/umeng/socialize/handler/UMAPIShareHandler;

    iget-object v2, p0, Lcom/umeng/socialize/handler/a;->a:Lcom/umeng/socialize/handler/UMAPIShareHandler$a;

    iget-object v2, v2, Lcom/umeng/socialize/handler/UMAPIShareHandler$a;->b:Lcom/umeng/socialize/UMShareListener;

    invoke-static {v1, v0, v2}, Lcom/umeng/socialize/handler/UMAPIShareHandler;->access$000(Lcom/umeng/socialize/handler/UMAPIShareHandler;Lcom/umeng/socialize/ShareContent;Lcom/umeng/socialize/UMShareListener;)V

    .line 90
    const-string v0, "act"

    const-string v1, "sent share request"

    invoke-static {v0, v1}, Lcom/umeng/socialize/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void
.end method
