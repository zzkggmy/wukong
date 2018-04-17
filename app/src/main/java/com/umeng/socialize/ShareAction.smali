.class public Lcom/umeng/socialize/ShareAction;
.super Ljava/lang/Object;
.source "ShareAction.java"


# instance fields
.field private a:Lcom/umeng/socialize/ShareContent;

.field private b:Ljava/lang/String;

.field private c:Lcom/umeng/socialize/bean/SHARE_MEDIA;

.field private d:Lcom/umeng/socialize/UMShareListener;

.field private e:Lcom/umeng/socialize/utils/ShareBoardlistener;

.field private f:Landroid/app/Activity;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/bean/SHARE_MEDIA;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/shareboard/SnsPlatform;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/ShareContent;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/UMShareListener;",
            ">;"
        }
    .end annotation
.end field

.field private k:I

.field private l:Landroid/view/View;

.field private m:Lcom/umeng/socialize/utils/ShareBoardlistener;

.field private n:Lcom/umeng/socialize/utils/ShareBoardlistener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/umeng/socialize/ShareContent;

    invoke-direct {v0}, Lcom/umeng/socialize/ShareContent;-><init>()V

    iput-object v0, p0, Lcom/umeng/socialize/ShareAction;->a:Lcom/umeng/socialize/ShareContent;

    .line 30
    iput-object v1, p0, Lcom/umeng/socialize/ShareAction;->b:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lcom/umeng/socialize/ShareAction;->c:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 32
    iput-object v1, p0, Lcom/umeng/socialize/ShareAction;->d:Lcom/umeng/socialize/UMShareListener;

    .line 33
    iput-object v1, p0, Lcom/umeng/socialize/ShareAction;->e:Lcom/umeng/socialize/utils/ShareBoardlistener;

    .line 35
    iput-object v1, p0, Lcom/umeng/socialize/ShareAction;->g:Ljava/util/List;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/socialize/ShareAction;->h:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/socialize/ShareAction;->i:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/socialize/ShareAction;->j:Ljava/util/List;

    .line 39
    const/16 v0, 0x50

    iput v0, p0, Lcom/umeng/socialize/ShareAction;->k:I

    .line 40
    iput-object v1, p0, Lcom/umeng/socialize/ShareAction;->l:Landroid/view/View;

    .line 210
    new-instance v0, Lcom/umeng/socialize/b;

    invoke-direct {v0, p0}, Lcom/umeng/socialize/b;-><init>(Lcom/umeng/socialize/ShareAction;)V

    iput-object v0, p0, Lcom/umeng/socialize/ShareAction;->m:Lcom/umeng/socialize/utils/ShareBoardlistener;

    .line 218
    new-instance v0, Lcom/umeng/socialize/c;

    invoke-direct {v0, p0}, Lcom/umeng/socialize/c;-><init>(Lcom/umeng/socialize/ShareAction;)V

    iput-object v0, p0, Lcom/umeng/socialize/ShareAction;->n:Lcom/umeng/socialize/utils/ShareBoardlistener;

    .line 43
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/umeng/socialize/ShareAction;->f:Landroid/app/Activity;

    .line 44
    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/ShareAction;Lcom/umeng/socialize/ShareContent;)Lcom/umeng/socialize/ShareContent;
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/umeng/socialize/ShareAction;->a:Lcom/umeng/socialize/ShareContent;

    return-object p1
.end method

.method static synthetic a(Lcom/umeng/socialize/ShareAction;Lcom/umeng/socialize/UMShareListener;)Lcom/umeng/socialize/UMShareListener;
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/umeng/socialize/ShareAction;->d:Lcom/umeng/socialize/UMShareListener;

    return-object p1
.end method

.method static synthetic a(Lcom/umeng/socialize/ShareAction;)Ljava/util/List;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/umeng/socialize/ShareAction;->g:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/umeng/socialize/ShareAction;)Ljava/util/List;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/umeng/socialize/ShareAction;->i:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/umeng/socialize/ShareAction;)Ljava/util/List;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/umeng/socialize/ShareAction;->j:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public addButton(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/socialize/ShareAction;
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/umeng/socialize/ShareAction;->h:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {p1, p2, p3, p4, v1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->createSnsPlatform(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/umeng/socialize/shareboard/SnsPlatform;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    return-object p0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/umeng/socialize/ShareAction;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatform()Lcom/umeng/socialize/bean/SHARE_MEDIA;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/umeng/socialize/ShareAction;->c:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    return-object v0
.end method

.method public getShareContent()Lcom/umeng/socialize/ShareContent;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/umeng/socialize/ShareAction;->a:Lcom/umeng/socialize/ShareContent;

    return-object v0
.end method

.method public open()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 150
    iget-object v0, p0, Lcom/umeng/socialize/ShareAction;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 151
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 152
    const-string v1, "listener"

    iget-object v2, p0, Lcom/umeng/socialize/ShareAction;->d:Lcom/umeng/socialize/UMShareListener;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string v1, "content"

    iget-object v2, p0, Lcom/umeng/socialize/ShareAction;->a:Lcom/umeng/socialize/ShareContent;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    new-instance v0, Lcom/umeng/socialize/shareboard/a;

    iget-object v1, p0, Lcom/umeng/socialize/ShareAction;->f:Landroid/app/Activity;

    iget-object v2, p0, Lcom/umeng/socialize/ShareAction;->h:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/umeng/socialize/shareboard/a;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 162
    iget-object v1, p0, Lcom/umeng/socialize/ShareAction;->e:Lcom/umeng/socialize/utils/ShareBoardlistener;

    if-nez v1, :cond_1

    .line 163
    iget-object v1, p0, Lcom/umeng/socialize/ShareAction;->n:Lcom/umeng/socialize/utils/ShareBoardlistener;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/shareboard/a;->a(Lcom/umeng/socialize/utils/ShareBoardlistener;)V

    .line 168
    :goto_0
    invoke-virtual {v0, v4}, Lcom/umeng/socialize/shareboard/a;->setFocusable(Z)V

    .line 169
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/shareboard/a;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 170
    iget-object v1, p0, Lcom/umeng/socialize/ShareAction;->l:Landroid/view/View;

    if-nez v1, :cond_0

    .line 171
    iget-object v1, p0, Lcom/umeng/socialize/ShareAction;->f:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/socialize/ShareAction;->l:Landroid/view/View;

    .line 173
    :cond_0
    iget-object v1, p0, Lcom/umeng/socialize/ShareAction;->l:Landroid/view/View;

    iget v2, p0, Lcom/umeng/socialize/ShareAction;->k:I

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/umeng/socialize/shareboard/a;->showAtLocation(Landroid/view/View;III)V

    .line 209
    :goto_1
    return-void

    .line 165
    :cond_1
    iget-object v1, p0, Lcom/umeng/socialize/ShareAction;->e:Lcom/umeng/socialize/utils/ShareBoardlistener;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/shareboard/a;->a(Lcom/umeng/socialize/utils/ShareBoardlistener;)V

    goto :goto_0

    .line 179
    :cond_2
    iget-object v0, p0, Lcom/umeng/socialize/ShareAction;->h:Ljava/util/List;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toSnsPlatform()Lcom/umeng/socialize/shareboard/SnsPlatform;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    iget-object v0, p0, Lcom/umeng/socialize/ShareAction;->h:Ljava/util/List;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN_CIRCLE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toSnsPlatform()Lcom/umeng/socialize/shareboard/SnsPlatform;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    iget-object v0, p0, Lcom/umeng/socialize/ShareAction;->h:Ljava/util/List;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->SINA:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toSnsPlatform()Lcom/umeng/socialize/shareboard/SnsPlatform;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    iget-object v0, p0, Lcom/umeng/socialize/ShareAction;->h:Ljava/util/List;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QQ:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toSnsPlatform()Lcom/umeng/socialize/shareboard/SnsPlatform;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 184
    const-string v1, "listener"

    iget-object v2, p0, Lcom/umeng/socialize/ShareAction;->d:Lcom/umeng/socialize/UMShareListener;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const-string v1, "content"

    iget-object v2, p0, Lcom/umeng/socialize/ShareAction;->a:Lcom/umeng/socialize/ShareContent;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    new-instance v0, Lcom/umeng/socialize/shareboard/a;

    iget-object v1, p0, Lcom/umeng/socialize/ShareAction;->f:Landroid/app/Activity;

    iget-object v2, p0, Lcom/umeng/socialize/ShareAction;->h:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/umeng/socialize/shareboard/a;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 187
    iget-object v1, p0, Lcom/umeng/socialize/ShareAction;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_4

    .line 188
    iget-object v1, p0, Lcom/umeng/socialize/ShareAction;->e:Lcom/umeng/socialize/utils/ShareBoardlistener;

    if-nez v1, :cond_3

    .line 189
    iget-object v1, p0, Lcom/umeng/socialize/ShareAction;->m:Lcom/umeng/socialize/utils/ShareBoardlistener;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/shareboard/a;->a(Lcom/umeng/socialize/utils/ShareBoardlistener;)V

    .line 200
    :goto_2
    invoke-virtual {v0, v4}, Lcom/umeng/socialize/shareboard/a;->setFocusable(Z)V

    .line 201
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/shareboard/a;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 203
    iget-object v1, p0, Lcom/umeng/socialize/ShareAction;->f:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x50

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/umeng/socialize/shareboard/a;->showAtLocation(Landroid/view/View;III)V

    goto :goto_1

    .line 191
    :cond_3
    iget-object v1, p0, Lcom/umeng/socialize/ShareAction;->e:Lcom/umeng/socialize/utils/ShareBoardlistener;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/shareboard/a;->a(Lcom/umeng/socialize/utils/ShareBoardlistener;)V

    goto :goto_2

    .line 194
    :cond_4
    iget-object v1, p0, Lcom/umeng/socialize/ShareAction;->e:Lcom/umeng/socialize/utils/ShareBoardlistener;

    if-nez v1, :cond_5

    .line 195
    iget-object v1, p0, Lcom/umeng/socialize/ShareAction;->n:Lcom/umeng/socialize/utils/ShareBoardlistener;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/shareboard/a;->a(Lcom/umeng/socialize/utils/ShareBoardlistener;)V

    goto :goto_2

    .line 197
    :cond_5
    iget-object v1, p0, Lcom/umeng/socialize/ShareAction;->e:Lcom/umeng/socialize/utils/ShareBoardlistener;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/shareboard/a;->a(Lcom/umeng/socialize/utils/ShareBoardlistener;)V

    goto :goto_2
.end method

.method public openBoard()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method public setCallback(Lcom/umeng/socialize/UMShareListener;)Lcom/umeng/socialize/ShareAction;
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/umeng/socialize/ShareAction;->d:Lcom/umeng/socialize/UMShareListener;

    .line 67
    return-object p0
.end method

.method public varargs setContentList([Lcom/umeng/socialize/ShareContent;)Lcom/umeng/socialize/ShareAction;
    .locals 2

    .prologue
    .line 92
    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 93
    :cond_0
    new-instance v0, Lcom/umeng/socialize/ShareContent;

    invoke-direct {v0}, Lcom/umeng/socialize/ShareContent;-><init>()V

    .line 94
    const-string v1, "\u53cb\u76df\u5206\u4eab"

    iput-object v1, v0, Lcom/umeng/socialize/ShareContent;->mText:Ljava/lang/String;

    .line 95
    iget-object v1, p0, Lcom/umeng/socialize/ShareAction;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    :goto_0
    return-object p0

    .line 97
    :cond_1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/ShareAction;->i:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs setDisplayList([Lcom/umeng/socialize/bean/SHARE_MEDIA;)Lcom/umeng/socialize/ShareAction;
    .locals 3

    .prologue
    .line 79
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/ShareAction;->g:Ljava/util/List;

    .line 80
    iget-object v0, p0, Lcom/umeng/socialize/ShareAction;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 81
    iget-object v0, p0, Lcom/umeng/socialize/ShareAction;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 82
    iget-object v2, p0, Lcom/umeng/socialize/ShareAction;->h:Ljava/util/List;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toSnsPlatform()Lcom/umeng/socialize/shareboard/SnsPlatform;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 84
    :cond_0
    return-object p0
.end method

.method public varargs setListenerList([Lcom/umeng/socialize/UMShareListener;)Lcom/umeng/socialize/ShareAction;
    .locals 1

    .prologue
    .line 88
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/ShareAction;->j:Ljava/util/List;

    .line 89
    return-object p0
.end method

.method public setPlatform(Lcom/umeng/socialize/bean/SHARE_MEDIA;)Lcom/umeng/socialize/ShareAction;
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/umeng/socialize/ShareAction;->c:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 62
    return-object p0
.end method

.method public setShareContent(Lcom/umeng/socialize/ShareContent;)Lcom/umeng/socialize/ShareAction;
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/umeng/socialize/ShareAction;->a:Lcom/umeng/socialize/ShareContent;

    .line 75
    return-object p0
.end method

.method public setShareboardclickCallback(Lcom/umeng/socialize/utils/ShareBoardlistener;)Lcom/umeng/socialize/ShareAction;
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/umeng/socialize/ShareAction;->e:Lcom/umeng/socialize/utils/ShareBoardlistener;

    .line 71
    return-object p0
.end method

.method public share()V
    .locals 3

    .prologue
    .line 145
    iget-object v0, p0, Lcom/umeng/socialize/ShareAction;->f:Landroid/app/Activity;

    invoke-static {v0}, Lcom/umeng/socialize/UMShareAPI;->get(Landroid/content/Context;)Lcom/umeng/socialize/UMShareAPI;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/ShareAction;->f:Landroid/app/Activity;

    iget-object v2, p0, Lcom/umeng/socialize/ShareAction;->d:Lcom/umeng/socialize/UMShareListener;

    invoke-virtual {v0, v1, p0, v2}, Lcom/umeng/socialize/UMShareAPI;->doShare(Landroid/app/Activity;Lcom/umeng/socialize/ShareAction;Lcom/umeng/socialize/UMShareListener;)V

    .line 146
    return-void
.end method

.method public withFollow(Ljava/lang/String;)Lcom/umeng/socialize/ShareAction;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/umeng/socialize/ShareAction;->a:Lcom/umeng/socialize/ShareContent;

    iput-object p1, v0, Lcom/umeng/socialize/ShareContent;->mFollow:Ljava/lang/String;

    .line 127
    return-object p0
.end method

.method public withMedia(Lcom/umeng/socialize/media/UMEmoji;)Lcom/umeng/socialize/ShareAction;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/umeng/socialize/ShareAction;->a:Lcom/umeng/socialize/ShareContent;

    iput-object p1, v0, Lcom/umeng/socialize/ShareContent;->mMedia:Lcom/umeng/socialize/media/UMediaObject;

    .line 123
    return-object p0
.end method

.method public withMedia(Lcom/umeng/socialize/media/UMImage;)Lcom/umeng/socialize/ShareAction;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/umeng/socialize/ShareAction;->a:Lcom/umeng/socialize/ShareContent;

    iput-object p1, v0, Lcom/umeng/socialize/ShareContent;->mMedia:Lcom/umeng/socialize/media/UMediaObject;

    .line 119
    return-object p0
.end method

.method public withMedia(Lcom/umeng/socialize/media/UMVideo;)Lcom/umeng/socialize/ShareAction;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/umeng/socialize/ShareAction;->a:Lcom/umeng/socialize/ShareContent;

    iput-object p1, v0, Lcom/umeng/socialize/ShareContent;->mMedia:Lcom/umeng/socialize/media/UMediaObject;

    .line 137
    return-object p0
.end method

.method public withMedia(Lcom/umeng/socialize/media/UMusic;)Lcom/umeng/socialize/ShareAction;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/umeng/socialize/ShareAction;->a:Lcom/umeng/socialize/ShareContent;

    iput-object p1, v0, Lcom/umeng/socialize/ShareContent;->mMedia:Lcom/umeng/socialize/media/UMediaObject;

    .line 132
    return-object p0
.end method

.method public withShareBoardDirection(Landroid/view/View;I)Lcom/umeng/socialize/ShareAction;
    .locals 0

    .prologue
    .line 140
    iput p2, p0, Lcom/umeng/socialize/ShareAction;->k:I

    .line 141
    iput-object p1, p0, Lcom/umeng/socialize/ShareAction;->l:Landroid/view/View;

    .line 142
    return-object p0
.end method

.method public withTargetUrl(Ljava/lang/String;)Lcom/umeng/socialize/ShareAction;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/umeng/socialize/ShareAction;->a:Lcom/umeng/socialize/ShareContent;

    iput-object p1, v0, Lcom/umeng/socialize/ShareContent;->mTargetUrl:Ljava/lang/String;

    .line 115
    return-object p0
.end method

.method public withText(Ljava/lang/String;)Lcom/umeng/socialize/ShareAction;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/umeng/socialize/ShareAction;->a:Lcom/umeng/socialize/ShareContent;

    iput-object p1, v0, Lcom/umeng/socialize/ShareContent;->mText:Ljava/lang/String;

    .line 107
    return-object p0
.end method

.method public withTitle(Ljava/lang/String;)Lcom/umeng/socialize/ShareAction;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/umeng/socialize/ShareAction;->a:Lcom/umeng/socialize/ShareContent;

    iput-object p1, v0, Lcom/umeng/socialize/ShareContent;->mTitle:Ljava/lang/String;

    .line 111
    return-object p0
.end method
