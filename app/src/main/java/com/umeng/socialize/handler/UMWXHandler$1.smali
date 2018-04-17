.class Lcom/umeng/socialize/handler/UMWXHandler$1;
.super Ljava/lang/Object;
.source "UMWXHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/socialize/handler/UMWXHandler;->getAuthWithCode(Ljava/lang/String;Lcom/umeng/socialize/UMAuthListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/umeng/socialize/handler/UMWXHandler;

.field final synthetic val$authURL:Ljava/lang/StringBuilder;

.field final synthetic val$listener:Lcom/umeng/socialize/UMAuthListener;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/handler/UMWXHandler;Ljava/lang/StringBuilder;Lcom/umeng/socialize/UMAuthListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/umeng/socialize/handler/UMWXHandler;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/umeng/socialize/handler/UMWXHandler$1;->this$0:Lcom/umeng/socialize/handler/UMWXHandler;

    iput-object p2, p0, Lcom/umeng/socialize/handler/UMWXHandler$1;->val$authURL:Ljava/lang/StringBuilder;

    iput-object p3, p0, Lcom/umeng/socialize/handler/UMWXHandler$1;->val$listener:Lcom/umeng/socialize/UMAuthListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 209
    iget-object v4, p0, Lcom/umeng/socialize/handler/UMWXHandler$1;->val$authURL:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/umeng/socialize/weixin/net/WXAuthUtils;->request(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 210
    .local v3, "response":Ljava/lang/String;
    const/4 v2, 0x0

    .line 212
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-static {v3}, Lcom/umeng/socialize/utils/SocializeUtils;->jsonToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 213
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 214
    :cond_0
    iget-object v4, p0, Lcom/umeng/socialize/handler/UMWXHandler$1;->this$0:Lcom/umeng/socialize/handler/UMWXHandler;

    invoke-static {v4}, Lcom/umeng/socialize/handler/UMWXHandler;->access$000(Lcom/umeng/socialize/handler/UMWXHandler;)Lcom/umeng/socialize/handler/WeixinPreferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/umeng/socialize/handler/WeixinPreferences;->getmap()Ljava/util/Map;

    move-result-object v2

    .line 216
    :cond_1
    iget-object v4, p0, Lcom/umeng/socialize/handler/UMWXHandler$1;->this$0:Lcom/umeng/socialize/handler/UMWXHandler;

    invoke-static {v4, v3}, Lcom/umeng/socialize/handler/UMWXHandler;->access$100(Lcom/umeng/socialize/handler/UMWXHandler;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 217
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v4, p0, Lcom/umeng/socialize/handler/UMWXHandler$1;->this$0:Lcom/umeng/socialize/handler/UMWXHandler;

    invoke-static {v4}, Lcom/umeng/socialize/handler/UMWXHandler;->access$000(Lcom/umeng/socialize/handler/UMWXHandler;)Lcom/umeng/socialize/handler/WeixinPreferences;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/umeng/socialize/handler/WeixinPreferences;->setBundle(Landroid/os/Bundle;)Lcom/umeng/socialize/handler/WeixinPreferences;

    .line 218
    move-object v1, v2

    .line 219
    .local v1, "finalMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Lcom/umeng/socialize/handler/UMWXHandler$1$1;

    invoke-direct {v4, p0, v1}, Lcom/umeng/socialize/handler/UMWXHandler$1$1;-><init>(Lcom/umeng/socialize/handler/UMWXHandler$1;Ljava/util/Map;)V

    invoke-static {v4}, Lcom/umeng/socialize/common/QueuedWork;->runInMain(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "finalMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 227
    :catch_0
    move-exception v4

    goto :goto_0
.end method
