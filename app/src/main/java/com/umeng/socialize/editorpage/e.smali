.class Lcom/umeng/socialize/editorpage/e;
.super Ljava/lang/Object;
.source "ShareActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/editorpage/ShareActivity;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/editorpage/ShareActivity;)V
    .locals 0

    .prologue
    .line 431
    iput-object p1, p0, Lcom/umeng/socialize/editorpage/e;->a:Lcom/umeng/socialize/editorpage/ShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 435
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/e;->a:Lcom/umeng/socialize/editorpage/ShareActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/socialize/editorpage/ShareActivity;->a(Lcom/umeng/socialize/editorpage/ShareActivity;Lcom/umeng/socialize/bean/UMLocation;)Lcom/umeng/socialize/bean/UMLocation;

    .line 436
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/e;->a:Lcom/umeng/socialize/editorpage/ShareActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/socialize/editorpage/ShareActivity;->b(Lcom/umeng/socialize/editorpage/ShareActivity;Z)V

    .line 437
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 438
    return-void
.end method
