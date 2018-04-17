.class Lcom/umeng/socialize/editorpage/g;
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
    .line 513
    iput-object p1, p0, Lcom/umeng/socialize/editorpage/g;->a:Lcom/umeng/socialize/editorpage/ShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/g;->a:Lcom/umeng/socialize/editorpage/ShareActivity;

    invoke-virtual {v0}, Lcom/umeng/socialize/editorpage/ShareActivity;->finish()V

    .line 517
    return-void
.end method
