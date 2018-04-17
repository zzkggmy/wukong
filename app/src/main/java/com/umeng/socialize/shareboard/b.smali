.class Lcom/umeng/socialize/shareboard/b;
.super Ljava/lang/Object;
.source "ShareBoard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/shareboard/a;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/shareboard/a;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/umeng/socialize/shareboard/b;->a:Lcom/umeng/socialize/shareboard/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/umeng/socialize/shareboard/b;->a:Lcom/umeng/socialize/shareboard/a;

    invoke-virtual {v0}, Lcom/umeng/socialize/shareboard/a;->dismiss()V

    .line 218
    return-void
.end method
