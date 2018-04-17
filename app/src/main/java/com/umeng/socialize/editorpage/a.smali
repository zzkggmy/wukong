.class Lcom/umeng/socialize/editorpage/a;
.super Ljava/lang/Object;
.source "ShareActivity.java"

# interfaces
.implements Lcom/umeng/socialize/editorpage/KeyboardListenRelativeLayout$IOnKeyboardStateChangedListener;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/editorpage/ShareActivity;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/editorpage/ShareActivity;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/umeng/socialize/editorpage/a;->a:Lcom/umeng/socialize/editorpage/ShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .prologue
    .line 135
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/a;->a:Lcom/umeng/socialize/editorpage/ShareActivity;

    invoke-static {v0, p1}, Lcom/umeng/socialize/editorpage/ShareActivity;->a(Lcom/umeng/socialize/editorpage/ShareActivity;I)I

    .line 136
    const-string v0, "ShareActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyboardStateChanged  now state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/socialize/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-void
.end method
