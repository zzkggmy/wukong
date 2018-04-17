.class Lcom/umeng/socialize/editorpage/c;
.super Ljava/lang/Object;
.source "ShareActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/editorpage/ShareActivity;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/editorpage/ShareActivity;)V
    .locals 0

    .prologue
    .line 373
    iput-object p1, p0, Lcom/umeng/socialize/editorpage/c;->a:Lcom/umeng/socialize/editorpage/ShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/c;->a:Lcom/umeng/socialize/editorpage/ShareActivity;

    invoke-virtual {v0}, Lcom/umeng/socialize/editorpage/ShareActivity;->finish()V

    .line 377
    return-void
.end method
