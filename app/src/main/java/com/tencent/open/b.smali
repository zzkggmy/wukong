.class public abstract Lcom/tencent/open/b;
.super Landroid/app/Dialog;
.source "ProGuard"


# static fields
.field private static final TAG:Ljava/lang/String; = "openSDK_LOG.JsDialog"


# instance fields
.field protected jsBridge:Lcom/tencent/open/a;

.field protected final mChromeClient:Landroid/webkit/WebChromeClient;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 34
    new-instance v0, Lcom/tencent/open/b$1;

    invoke-direct {v0, p0}, Lcom/tencent/open/b$1;-><init>(Lcom/tencent/open/b;)V

    iput-object v0, p0, Lcom/tencent/open/b;->mChromeClient:Landroid/webkit/WebChromeClient;

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 34
    new-instance v0, Lcom/tencent/open/b$1;

    invoke-direct {v0, p0}, Lcom/tencent/open/b$1;-><init>(Lcom/tencent/open/b;)V

    iput-object v0, p0, Lcom/tencent/open/b;->mChromeClient:Landroid/webkit/WebChromeClient;

    .line 24
    return-void
.end method


# virtual methods
.method protected abstract onConsoleMessage(Ljava/lang/String;)V
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 29
    new-instance v0, Lcom/tencent/open/a;

    invoke-direct {v0}, Lcom/tencent/open/a;-><init>()V

    iput-object v0, p0, Lcom/tencent/open/b;->jsBridge:Lcom/tencent/open/a;

    .line 30
    return-void
.end method
