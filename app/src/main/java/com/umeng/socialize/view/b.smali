.class Lcom/umeng/socialize/view/b;
.super Ljava/lang/Object;
.source "OauthDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/OauthDialog;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/OauthDialog;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/umeng/socialize/view/b;->a:Lcom/umeng/socialize/view/OauthDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/umeng/socialize/view/b;->a:Lcom/umeng/socialize/view/OauthDialog;

    invoke-virtual {v0}, Lcom/umeng/socialize/view/OauthDialog;->dismiss()V

    .line 148
    return-void
.end method
