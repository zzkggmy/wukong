.class Lcom/umeng/socialize/handler/c;
.super Ljava/lang/Object;
.source "UMAPIShareHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/handler/b;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/handler/b;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/umeng/socialize/handler/c;->a:Lcom/umeng/socialize/handler/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 118
    iget-object v0, p0, Lcom/umeng/socialize/handler/c;->a:Lcom/umeng/socialize/handler/b;

    iget-object v0, v0, Lcom/umeng/socialize/handler/b;->d:Lcom/umeng/socialize/handler/UMAPIShareHandler;

    iget-object v1, p0, Lcom/umeng/socialize/handler/c;->a:Lcom/umeng/socialize/handler/b;

    iget-object v1, v1, Lcom/umeng/socialize/handler/b;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/umeng/socialize/handler/c;->a:Lcom/umeng/socialize/handler/b;

    iget-object v2, v2, Lcom/umeng/socialize/handler/b;->b:Lcom/umeng/socialize/ShareContent;

    iget-object v3, p0, Lcom/umeng/socialize/handler/c;->a:Lcom/umeng/socialize/handler/b;

    iget-object v3, v3, Lcom/umeng/socialize/handler/b;->c:Lcom/umeng/socialize/UMShareListener;

    invoke-static {v0, v1, v2, v3}, Lcom/umeng/socialize/handler/UMAPIShareHandler;->access$100(Lcom/umeng/socialize/handler/UMAPIShareHandler;Landroid/app/Activity;Lcom/umeng/socialize/ShareContent;Lcom/umeng/socialize/UMShareListener;)V

    .line 119
    return-void
.end method
