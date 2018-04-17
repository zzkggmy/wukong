.class Lcom/umeng/socialize/editorpage/b;
.super Ljava/lang/Object;
.source "ShareActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/editorpage/ShareActivity;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/editorpage/ShareActivity;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/umeng/socialize/editorpage/b;->a:Lcom/umeng/socialize/editorpage/ShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 257
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 262
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/b;->a:Lcom/umeng/socialize/editorpage/ShareActivity;

    iget-object v1, p0, Lcom/umeng/socialize/editorpage/b;->a:Lcom/umeng/socialize/editorpage/ShareActivity;

    invoke-static {v1}, Lcom/umeng/socialize/editorpage/ShareActivity;->a(Lcom/umeng/socialize/editorpage/ShareActivity;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/umeng/socialize/editorpage/ShareActivity;->a(Lcom/umeng/socialize/editorpage/ShareActivity;Z)Z

    .line 268
    return-void
.end method
