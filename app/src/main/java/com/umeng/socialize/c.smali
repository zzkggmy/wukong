.class Lcom/umeng/socialize/c;
.super Ljava/lang/Object;
.source "ShareAction.java"

# interfaces
.implements Lcom/umeng/socialize/utils/ShareBoardlistener;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/ShareAction;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/ShareAction;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/umeng/socialize/c;->a:Lcom/umeng/socialize/ShareAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onclick(Lcom/umeng/socialize/shareboard/SnsPlatform;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 3

    .prologue
    .line 222
    iget-object v0, p0, Lcom/umeng/socialize/c;->a:Lcom/umeng/socialize/ShareAction;

    invoke-static {v0}, Lcom/umeng/socialize/ShareAction;->a(Lcom/umeng/socialize/ShareAction;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 223
    iget-object v0, p0, Lcom/umeng/socialize/c;->a:Lcom/umeng/socialize/ShareAction;

    invoke-static {v0}, Lcom/umeng/socialize/ShareAction;->b(Lcom/umeng/socialize/ShareAction;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 225
    if-eqz v0, :cond_0

    .line 226
    if-ge v1, v0, :cond_2

    .line 228
    iget-object v0, p0, Lcom/umeng/socialize/c;->a:Lcom/umeng/socialize/ShareAction;

    invoke-static {v0}, Lcom/umeng/socialize/ShareAction;->b(Lcom/umeng/socialize/ShareAction;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/ShareContent;

    .line 233
    :goto_0
    iget-object v2, p0, Lcom/umeng/socialize/c;->a:Lcom/umeng/socialize/ShareAction;

    invoke-static {v2, v0}, Lcom/umeng/socialize/ShareAction;->a(Lcom/umeng/socialize/ShareAction;Lcom/umeng/socialize/ShareContent;)Lcom/umeng/socialize/ShareContent;

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/c;->a:Lcom/umeng/socialize/ShareAction;

    invoke-static {v0}, Lcom/umeng/socialize/ShareAction;->c(Lcom/umeng/socialize/ShareAction;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 236
    if-eqz v0, :cond_1

    .line 237
    if-ge v1, v0, :cond_3

    .line 238
    iget-object v2, p0, Lcom/umeng/socialize/c;->a:Lcom/umeng/socialize/ShareAction;

    iget-object v0, p0, Lcom/umeng/socialize/c;->a:Lcom/umeng/socialize/ShareAction;

    invoke-static {v0}, Lcom/umeng/socialize/ShareAction;->c(Lcom/umeng/socialize/ShareAction;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/UMShareListener;

    invoke-static {v2, v0}, Lcom/umeng/socialize/ShareAction;->a(Lcom/umeng/socialize/ShareAction;Lcom/umeng/socialize/UMShareListener;)Lcom/umeng/socialize/UMShareListener;

    .line 243
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/umeng/socialize/c;->a:Lcom/umeng/socialize/ShareAction;

    invoke-virtual {v0, p2}, Lcom/umeng/socialize/ShareAction;->setPlatform(Lcom/umeng/socialize/bean/SHARE_MEDIA;)Lcom/umeng/socialize/ShareAction;

    .line 244
    iget-object v0, p0, Lcom/umeng/socialize/c;->a:Lcom/umeng/socialize/ShareAction;

    invoke-virtual {v0}, Lcom/umeng/socialize/ShareAction;->share()V

    .line 245
    return-void

    .line 230
    :cond_2
    iget-object v2, p0, Lcom/umeng/socialize/c;->a:Lcom/umeng/socialize/ShareAction;

    invoke-static {v2}, Lcom/umeng/socialize/ShareAction;->b(Lcom/umeng/socialize/ShareAction;)Ljava/util/List;

    move-result-object v2

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/ShareContent;

    goto :goto_0

    .line 240
    :cond_3
    iget-object v1, p0, Lcom/umeng/socialize/c;->a:Lcom/umeng/socialize/ShareAction;

    iget-object v2, p0, Lcom/umeng/socialize/c;->a:Lcom/umeng/socialize/ShareAction;

    invoke-static {v2}, Lcom/umeng/socialize/ShareAction;->c(Lcom/umeng/socialize/ShareAction;)Ljava/util/List;

    move-result-object v2

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/UMShareListener;

    invoke-static {v1, v0}, Lcom/umeng/socialize/ShareAction;->a(Lcom/umeng/socialize/ShareAction;Lcom/umeng/socialize/UMShareListener;)Lcom/umeng/socialize/UMShareListener;

    goto :goto_1
.end method
