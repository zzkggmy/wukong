.class public Lcom/tencent/connect/common/UIListenerManager$ApiTask;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/connect/common/UIListenerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ApiTask"
.end annotation


# instance fields
.field public mListener:Lcom/tencent/tauth/IUiListener;

.field public mRequestCode:I

.field final synthetic this$0:Lcom/tencent/connect/common/UIListenerManager;


# direct methods
.method public constructor <init>(Lcom/tencent/connect/common/UIListenerManager;ILcom/tencent/tauth/IUiListener;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/tencent/connect/common/UIListenerManager$ApiTask;->this$0:Lcom/tencent/connect/common/UIListenerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    iput p2, p0, Lcom/tencent/connect/common/UIListenerManager$ApiTask;->mRequestCode:I

    .line 282
    iput-object p3, p0, Lcom/tencent/connect/common/UIListenerManager$ApiTask;->mListener:Lcom/tencent/tauth/IUiListener;

    .line 283
    return-void
.end method
