.class public abstract Lcom/umeng/socialize/handler/UMAPIShareHandler;
.super Lcom/umeng/socialize/handler/UMSSOHandler;
.source "UMAPIShareHandler.java"

# interfaces
.implements Lcom/umeng/socialize/editorpage/IEditor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/socialize/handler/UMAPIShareHandler$a;
    }
.end annotation


# instance fields
.field private mStatStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/umeng/socialize/handler/UMAPIShareHandler$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/umeng/socialize/handler/UMSSOHandler;-><init>()V

    .line 45
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/umeng/socialize/handler/UMAPIShareHandler;->mStatStack:Ljava/util/Stack;

    return-void
.end method

.method static synthetic access$000(Lcom/umeng/socialize/handler/UMAPIShareHandler;Lcom/umeng/socialize/ShareContent;Lcom/umeng/socialize/UMShareListener;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/umeng/socialize/handler/UMAPIShareHandler;->sendShareRequest(Lcom/umeng/socialize/ShareContent;Lcom/umeng/socialize/UMShareListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/umeng/socialize/handler/UMAPIShareHandler;Landroid/app/Activity;Lcom/umeng/socialize/ShareContent;Lcom/umeng/socialize/UMShareListener;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/umeng/socialize/handler/UMAPIShareHandler;->doShare(Landroid/app/Activity;Lcom/umeng/socialize/ShareContent;Lcom/umeng/socialize/UMShareListener;)V

    return-void
.end method

.method private doShare(Landroid/app/Activity;Lcom/umeng/socialize/ShareContent;Lcom/umeng/socialize/UMShareListener;)V
    .locals 2

    .prologue
    .line 141
    sget-boolean v0, Lcom/umeng/socialize/Config;->OpenEditor:Z

    if-eqz v0, :cond_0

    .line 143
    new-instance v0, Lcom/umeng/socialize/handler/UMAPIShareHandler$a;

    invoke-direct {v0}, Lcom/umeng/socialize/handler/UMAPIShareHandler$a;-><init>()V

    .line 145
    iput-object p2, v0, Lcom/umeng/socialize/handler/UMAPIShareHandler$a;->a:Lcom/umeng/socialize/ShareContent;

    .line 146
    iput-object p3, v0, Lcom/umeng/socialize/handler/UMAPIShareHandler$a;->b:Lcom/umeng/socialize/UMShareListener;

    .line 148
    iget-object v1, p0, Lcom/umeng/socialize/handler/UMAPIShareHandler;->mStatStack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/umeng/socialize/editorpage/ShareActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 150
    invoke-virtual {p0, p2}, Lcom/umeng/socialize/handler/UMAPIShareHandler;->getEditable(Lcom/umeng/socialize/ShareContent;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 151
    invoke-virtual {p0}, Lcom/umeng/socialize/handler/UMAPIShareHandler;->getRequestCode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 155
    :goto_0
    return-void

    .line 153
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/umeng/socialize/handler/UMAPIShareHandler;->sendShareRequest(Lcom/umeng/socialize/ShareContent;Lcom/umeng/socialize/UMShareListener;)V

    goto :goto_0
.end method

.method private sendShareRequest(Lcom/umeng/socialize/ShareContent;Lcom/umeng/socialize/UMShareListener;)V
    .locals 7

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/umeng/socialize/handler/UMAPIShareHandler;->getPlatform()Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 160
    invoke-virtual {p0}, Lcom/umeng/socialize/handler/UMAPIShareHandler;->getUID()Ljava/lang/String;

    move-result-object v2

    .line 162
    new-instance v3, Lcom/umeng/socialize/net/SharePostRequest;

    invoke-virtual {p0}, Lcom/umeng/socialize/handler/UMAPIShareHandler;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v1, v2, p1}, Lcom/umeng/socialize/net/SharePostRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/socialize/ShareContent;)V

    .line 163
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/umeng/socialize/net/SharePostRequest;->setReqType(I)V

    .line 164
    invoke-static {v3}, Lcom/umeng/socialize/net/RestAPI;->doShare(Lcom/umeng/socialize/net/SharePostRequest;)Lcom/umeng/socialize/net/base/SocializeReseponse;

    move-result-object v3

    .line 165
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "xxxx  platform= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "   share="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/umeng/socialize/utils/Log;->e(Ljava/lang/String;)V

    .line 166
    if-nez v3, :cond_0

    .line 167
    new-instance v3, Lcom/umeng/socialize/SocializeException;

    const-string v4, "response is null"

    invoke-direct {v3, v4}, Lcom/umeng/socialize/SocializeException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0, v3}, Lcom/umeng/socialize/UMShareListener;->onError(Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/Throwable;)V

    .line 168
    const-string v0, "xxxx error!!! = response is null"

    invoke-static {v0}, Lcom/umeng/socialize/utils/Log;->e(Ljava/lang/String;)V

    .line 178
    :goto_0
    iget-object v0, p1, Lcom/umeng/socialize/ShareContent;->mFollow:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 191
    :goto_1
    return-void

    .line 170
    :cond_0
    invoke-virtual {v3}, Lcom/umeng/socialize/net/base/SocializeReseponse;->isOk()Z

    move-result v4

    if-nez v4, :cond_1

    .line 171
    new-instance v4, Lcom/umeng/socialize/SocializeException;

    iget v5, v3, Lcom/umeng/socialize/net/base/SocializeReseponse;->mStCode:I

    iget-object v6, v3, Lcom/umeng/socialize/net/base/SocializeReseponse;->mMsg:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcom/umeng/socialize/SocializeException;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, v0, v4}, Lcom/umeng/socialize/UMShareListener;->onError(Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/Throwable;)V

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "xxxx error!!! = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v3, Lcom/umeng/socialize/net/base/SocializeReseponse;->mMsg:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "   "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v3, Lcom/umeng/socialize/net/base/SocializeReseponse;->mStCode:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socialize/utils/Log;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 174
    :cond_1
    invoke-interface {p2, v0}, Lcom/umeng/socialize/UMShareListener;->onResult(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 175
    const-string v0, "xxxx error!!! = noerror"

    invoke-static {v0}, Lcom/umeng/socialize/utils/Log;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 182
    :cond_2
    new-instance v0, Lcom/umeng/socialize/net/ShareMultiFollowRequest;

    invoke-virtual {p0}, Lcom/umeng/socialize/handler/UMAPIShareHandler;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p1, Lcom/umeng/socialize/ShareContent;->mFollow:Ljava/lang/String;

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/umeng/socialize/net/ShareMultiFollowRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-static {v0}, Lcom/umeng/socialize/net/RestAPI;->doFollow(Lcom/umeng/socialize/net/ShareMultiFollowRequest;)Lcom/umeng/socialize/net/ShareMultiFollowResponse;

    move-result-object v0

    .line 184
    if-nez v0, :cond_3

    .line 185
    const-string v0, "follow"

    const-string v1, "resp = null"

    invoke-static {v0, v1}, Lcom/umeng/socialize/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 186
    :cond_3
    invoke-virtual {v0}, Lcom/umeng/socialize/net/base/SocializeReseponse;->isOk()Z

    move-result v1

    if-nez v1, :cond_4

    .line 187
    const-string v1, "follow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "follow fail e ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/umeng/socialize/net/base/SocializeReseponse;->mMsg:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/umeng/socialize/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 189
    :cond_4
    invoke-virtual {p0}, Lcom/umeng/socialize/handler/UMAPIShareHandler;->saveFollow()V

    goto :goto_1
.end method


# virtual methods
.method public abstract authorizeCallBack(IILandroid/content/Intent;)V
.end method

.method public abstract getPlatform()Lcom/umeng/socialize/bean/SHARE_MEDIA;
.end method

.method public abstract getUID()Ljava/lang/String;
.end method

.method public isAuthorized()Z
    .locals 1

    .prologue
    .line 54
    const-string v0, "\u8be5\u5e73\u53f0\u4e0d\u652f\u6301\u6388\u6743\u67e5\u8be2"

    invoke-static {v0}, Lcom/umeng/socialize/utils/Log;->e(Ljava/lang/String;)V

    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/umeng/socialize/handler/UMAPIShareHandler;->getRequestCode()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    const/16 v0, 0x3e8

    if-ne p2, v0, :cond_2

    .line 74
    iget-object v0, p0, Lcom/umeng/socialize/handler/UMAPIShareHandler;->mStatStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/handler/UMAPIShareHandler$a;

    .line 75
    if-eqz v0, :cond_2

    .line 76
    iget-object v0, v0, Lcom/umeng/socialize/handler/UMAPIShareHandler$a;->b:Lcom/umeng/socialize/UMShareListener;

    invoke-virtual {p0}, Lcom/umeng/socialize/handler/UMAPIShareHandler;->getPlatform()Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/umeng/socialize/UMShareListener;->onCancel(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 79
    :cond_2
    if-eqz p3, :cond_5

    const-string v0, "txt"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 80
    iget-object v0, p0, Lcom/umeng/socialize/handler/UMAPIShareHandler;->mStatStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/umeng/socialize/handler/UMAPIShareHandler;->mStatStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/handler/UMAPIShareHandler$a;

    .line 83
    if-nez p3, :cond_3

    const/4 v1, 0x0

    .line 84
    :goto_1
    const/4 v2, -0x1

    if-ne p2, v2, :cond_4

    .line 85
    new-instance v2, Lcom/umeng/socialize/handler/a;

    invoke-direct {v2, p0, v0, v1}, Lcom/umeng/socialize/handler/a;-><init>(Lcom/umeng/socialize/handler/UMAPIShareHandler;Lcom/umeng/socialize/handler/UMAPIShareHandler$a;Landroid/os/Bundle;)V

    invoke-static {v2}, Lcom/umeng/socialize/common/QueuedWork;->runInBack(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 83
    :cond_3
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    goto :goto_1

    .line 94
    :cond_4
    iget-object v1, v0, Lcom/umeng/socialize/handler/UMAPIShareHandler$a;->b:Lcom/umeng/socialize/UMShareListener;

    if-eqz v1, :cond_0

    .line 95
    iget-object v0, v0, Lcom/umeng/socialize/handler/UMAPIShareHandler$a;->b:Lcom/umeng/socialize/UMShareListener;

    invoke-virtual {p0}, Lcom/umeng/socialize/handler/UMAPIShareHandler;->getPlatform()Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/umeng/socialize/UMShareListener;->onCancel(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    goto :goto_0

    .line 100
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/umeng/socialize/handler/UMAPIShareHandler;->authorizeCallBack(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/content/Context;Lcom/umeng/socialize/PlatformConfig$Platform;)V
    .locals 0

    .prologue
    .line 49
    invoke-super {p0, p1, p2}, Lcom/umeng/socialize/handler/UMSSOHandler;->onCreate(Landroid/content/Context;Lcom/umeng/socialize/PlatformConfig$Platform;)V

    .line 51
    return-void
.end method

.method protected saveFollow()V
    .locals 0

    .prologue
    .line 105
    return-void
.end method

.method public share(Landroid/app/Activity;Lcom/umeng/socialize/ShareContent;Lcom/umeng/socialize/UMShareListener;)Z
    .locals 2

    .prologue
    .line 108
    const-class v0, Lcom/umeng/socialize/UMShareListener;

    invoke-static {v0, p3}, Lcom/umeng/socialize/utils/Dummy;->get(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/UMShareListener;

    .line 109
    invoke-virtual {p0}, Lcom/umeng/socialize/handler/UMAPIShareHandler;->isAuthorized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    invoke-direct {p0, p1, p2, v0}, Lcom/umeng/socialize/handler/UMAPIShareHandler;->doShare(Landroid/app/Activity;Lcom/umeng/socialize/ShareContent;Lcom/umeng/socialize/UMShareListener;)V

    .line 136
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 112
    :cond_0
    new-instance v1, Lcom/umeng/socialize/handler/b;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/umeng/socialize/handler/b;-><init>(Lcom/umeng/socialize/handler/UMAPIShareHandler;Landroid/app/Activity;Lcom/umeng/socialize/ShareContent;Lcom/umeng/socialize/UMShareListener;)V

    invoke-virtual {p0, p1, v1}, Lcom/umeng/socialize/handler/UMAPIShareHandler;->authorize(Landroid/app/Activity;Lcom/umeng/socialize/UMAuthListener;)V

    goto :goto_0
.end method
