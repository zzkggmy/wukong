.class Lcom/umeng/socialize/handler/UMWXHandler$AuthListenerWrapper;
.super Ljava/lang/Object;
.source "UMWXHandler.java"

# interfaces
.implements Lcom/umeng/socialize/UMAuthListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/handler/UMWXHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AuthListenerWrapper"
.end annotation


# instance fields
.field private mAuthListener:Lcom/umeng/socialize/UMAuthListener;

.field final synthetic this$0:Lcom/umeng/socialize/handler/UMWXHandler;


# direct methods
.method public constructor <init>(Lcom/umeng/socialize/handler/UMWXHandler;Lcom/umeng/socialize/UMAuthListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/umeng/socialize/handler/UMWXHandler;
    .param p2, "listener"    # Lcom/umeng/socialize/UMAuthListener;

    .prologue
    .line 533
    iput-object p1, p0, Lcom/umeng/socialize/handler/UMWXHandler$AuthListenerWrapper;->this$0:Lcom/umeng/socialize/handler/UMWXHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 534
    iput-object p2, p0, Lcom/umeng/socialize/handler/UMWXHandler$AuthListenerWrapper;->mAuthListener:Lcom/umeng/socialize/UMAuthListener;

    .line 535
    return-void
.end method


# virtual methods
.method public onCancel(Lcom/umeng/socialize/bean/SHARE_MEDIA;I)V
    .locals 1
    .param p1, "platform"    # Lcom/umeng/socialize/bean/SHARE_MEDIA;
    .param p2, "action"    # I

    .prologue
    .line 555
    iget-object v0, p0, Lcom/umeng/socialize/handler/UMWXHandler$AuthListenerWrapper;->mAuthListener:Lcom/umeng/socialize/UMAuthListener;

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/umeng/socialize/handler/UMWXHandler$AuthListenerWrapper;->mAuthListener:Lcom/umeng/socialize/UMAuthListener;

    invoke-interface {v0, p1, p2}, Lcom/umeng/socialize/UMAuthListener;->onCancel(Lcom/umeng/socialize/bean/SHARE_MEDIA;I)V

    .line 558
    :cond_0
    return-void
.end method

.method public onComplete(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILjava/util/Map;)V
    .locals 1
    .param p1, "platform"    # Lcom/umeng/socialize/bean/SHARE_MEDIA;
    .param p2, "action"    # I
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
    .line 539
    .local p3, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p3, :cond_0

    .line 540
    iget-object v0, p0, Lcom/umeng/socialize/handler/UMWXHandler$AuthListenerWrapper;->this$0:Lcom/umeng/socialize/handler/UMWXHandler;

    invoke-static {v0}, Lcom/umeng/socialize/handler/UMWXHandler;->access$000(Lcom/umeng/socialize/handler/UMWXHandler;)Lcom/umeng/socialize/handler/WeixinPreferences;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/umeng/socialize/handler/WeixinPreferences;->setAuthData(Ljava/util/Map;)Lcom/umeng/socialize/handler/WeixinPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/socialize/handler/WeixinPreferences;->commit()V

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/handler/UMWXHandler$AuthListenerWrapper;->mAuthListener:Lcom/umeng/socialize/UMAuthListener;

    if-eqz v0, :cond_1

    .line 543
    iget-object v0, p0, Lcom/umeng/socialize/handler/UMWXHandler$AuthListenerWrapper;->mAuthListener:Lcom/umeng/socialize/UMAuthListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/umeng/socialize/UMAuthListener;->onComplete(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILjava/util/Map;)V

    .line 545
    :cond_1
    return-void
.end method

.method public onError(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILjava/lang/Throwable;)V
    .locals 1
    .param p1, "platform"    # Lcom/umeng/socialize/bean/SHARE_MEDIA;
    .param p2, "action"    # I
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 549
    iget-object v0, p0, Lcom/umeng/socialize/handler/UMWXHandler$AuthListenerWrapper;->mAuthListener:Lcom/umeng/socialize/UMAuthListener;

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/umeng/socialize/handler/UMWXHandler$AuthListenerWrapper;->mAuthListener:Lcom/umeng/socialize/UMAuthListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/umeng/socialize/UMAuthListener;->onError(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILjava/lang/Throwable;)V

    .line 552
    :cond_0
    return-void
.end method
