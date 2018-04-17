.class Lcom/umeng/socialize/b;
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
    .line 210
    iput-object p1, p0, Lcom/umeng/socialize/b;->a:Lcom/umeng/socialize/ShareAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onclick(Lcom/umeng/socialize/shareboard/SnsPlatform;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/umeng/socialize/b;->a:Lcom/umeng/socialize/ShareAction;

    invoke-virtual {v0, p2}, Lcom/umeng/socialize/ShareAction;->setPlatform(Lcom/umeng/socialize/bean/SHARE_MEDIA;)Lcom/umeng/socialize/ShareAction;

    .line 215
    iget-object v0, p0, Lcom/umeng/socialize/b;->a:Lcom/umeng/socialize/ShareAction;

    invoke-virtual {v0}, Lcom/umeng/socialize/ShareAction;->share()V

    .line 216
    return-void
.end method
