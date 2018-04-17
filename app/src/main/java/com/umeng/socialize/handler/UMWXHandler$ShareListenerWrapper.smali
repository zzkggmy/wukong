.class Lcom/umeng/socialize/handler/UMWXHandler$ShareListenerWrapper;
.super Ljava/lang/Object;
.source "UMWXHandler.java"

# interfaces
.implements Lcom/umeng/socialize/UMShareListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/handler/UMWXHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ShareListenerWrapper"
.end annotation


# instance fields
.field private mShareListener:Lcom/umeng/socialize/UMShareListener;

.field final synthetic this$0:Lcom/umeng/socialize/handler/UMWXHandler;


# direct methods
.method public constructor <init>(Lcom/umeng/socialize/handler/UMWXHandler;Lcom/umeng/socialize/UMShareListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/umeng/socialize/handler/UMWXHandler;
    .param p2, "listener"    # Lcom/umeng/socialize/UMShareListener;

    .prologue
    .line 564
    iput-object p1, p0, Lcom/umeng/socialize/handler/UMWXHandler$ShareListenerWrapper;->this$0:Lcom/umeng/socialize/handler/UMWXHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 565
    iput-object p2, p0, Lcom/umeng/socialize/handler/UMWXHandler$ShareListenerWrapper;->mShareListener:Lcom/umeng/socialize/UMShareListener;

    .line 566
    return-void
.end method


# virtual methods
.method public onCancel(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 1
    .param p1, "platform"    # Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .prologue
    .line 584
    iget-object v0, p0, Lcom/umeng/socialize/handler/UMWXHandler$ShareListenerWrapper;->mShareListener:Lcom/umeng/socialize/UMShareListener;

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/umeng/socialize/handler/UMWXHandler$ShareListenerWrapper;->mShareListener:Lcom/umeng/socialize/UMShareListener;

    invoke-interface {v0, p1}, Lcom/umeng/socialize/UMShareListener;->onCancel(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 587
    :cond_0
    return-void
.end method

.method public onError(Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "platform"    # Lcom/umeng/socialize/bean/SHARE_MEDIA;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 577
    iget-object v0, p0, Lcom/umeng/socialize/handler/UMWXHandler$ShareListenerWrapper;->mShareListener:Lcom/umeng/socialize/UMShareListener;

    if-eqz v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/umeng/socialize/handler/UMWXHandler$ShareListenerWrapper;->mShareListener:Lcom/umeng/socialize/UMShareListener;

    invoke-interface {v0, p1, p2}, Lcom/umeng/socialize/UMShareListener;->onError(Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/Throwable;)V

    .line 580
    :cond_0
    return-void
.end method

.method public onResult(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 1
    .param p1, "platform"    # Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .prologue
    .line 570
    iget-object v0, p0, Lcom/umeng/socialize/handler/UMWXHandler$ShareListenerWrapper;->mShareListener:Lcom/umeng/socialize/UMShareListener;

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/umeng/socialize/handler/UMWXHandler$ShareListenerWrapper;->mShareListener:Lcom/umeng/socialize/UMShareListener;

    invoke-interface {v0, p1}, Lcom/umeng/socialize/UMShareListener;->onResult(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 573
    :cond_0
    return-void
.end method
