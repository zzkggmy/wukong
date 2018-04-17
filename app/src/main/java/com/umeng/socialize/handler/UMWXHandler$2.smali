.class Lcom/umeng/socialize/handler/UMWXHandler$2;
.super Ljava/lang/Object;
.source "UMWXHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/socialize/handler/UMWXHandler;->getPlatformInfo(Landroid/app/Activity;Lcom/umeng/socialize/UMAuthListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/umeng/socialize/handler/UMWXHandler;

.field final synthetic val$listener:Lcom/umeng/socialize/UMAuthListener;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/handler/UMWXHandler;Lcom/umeng/socialize/UMAuthListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/umeng/socialize/handler/UMWXHandler;

    .prologue
    .line 288
    iput-object p1, p0, Lcom/umeng/socialize/handler/UMWXHandler$2;->this$0:Lcom/umeng/socialize/handler/UMWXHandler;

    iput-object p2, p0, Lcom/umeng/socialize/handler/UMWXHandler$2;->val$listener:Lcom/umeng/socialize/UMAuthListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 291
    iget-object v1, p0, Lcom/umeng/socialize/handler/UMWXHandler$2;->val$listener:Lcom/umeng/socialize/UMAuthListener;

    iget-object v0, p0, Lcom/umeng/socialize/handler/UMWXHandler$2;->this$0:Lcom/umeng/socialize/handler/UMWXHandler;

    invoke-static {v0}, Lcom/umeng/socialize/handler/UMWXHandler;->access$300(Lcom/umeng/socialize/handler/UMWXHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN_CIRCLE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    :goto_0
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {v1, v0, v2, v3}, Lcom/umeng/socialize/UMAuthListener;->onComplete(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILjava/util/Map;)V

    .line 292
    return-void

    .line 291
    :cond_0
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    goto :goto_0
.end method
