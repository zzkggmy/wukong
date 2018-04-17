.class Lcom/umeng/socialize/UMShareAPI$a;
.super Lcom/umeng/socialize/common/QueuedWork$UMAsyncTask;
.source "UMShareAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/UMShareAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/socialize/common/QueuedWork$UMAsyncTask",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/umeng/socialize/common/QueuedWork$UMAsyncTask;-><init>()V

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/socialize/UMShareAPI$a;->a:Ljava/lang/ref/WeakReference;

    .line 175
    iput-object p1, p0, Lcom/umeng/socialize/UMShareAPI$a;->b:Landroid/content/Context;

    .line 176
    return-void
.end method

.method private c()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 199
    iget-object v0, p0, Lcom/umeng/socialize/UMShareAPI$a;->b:Landroid/content/Context;

    const-string v1, "umeng_socialize"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 201
    const-string v1, "newinstall"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected a()Ljava/lang/Void;
    .locals 3

    .prologue
    .line 180
    new-instance v0, Lcom/umeng/socialize/net/ActionBarRequest;

    iget-object v1, p0, Lcom/umeng/socialize/UMShareAPI$a;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/umeng/socialize/UMShareAPI$a;->c()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/umeng/socialize/net/ActionBarRequest;-><init>(Landroid/content/Context;Z)V

    .line 181
    invoke-static {v0}, Lcom/umeng/socialize/net/RestAPI;->queryShareId(Lcom/umeng/socialize/net/ActionBarRequest;)Lcom/umeng/socialize/net/ActionBarResponse;

    move-result-object v0

    .line 183
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/umeng/socialize/net/ActionBarResponse;->isOk()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/umeng/socialize/UMShareAPI$a;->b()V

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/umeng/socialize/net/ActionBarResponse;->mMsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/socialize/utils/Log;->i(Ljava/lang/String;)V

    .line 188
    iget-object v1, v0, Lcom/umeng/socialize/net/ActionBarResponse;->mEntityKey:Ljava/lang/String;

    sput-object v1, Lcom/umeng/socialize/Config;->EntityKey:Ljava/lang/String;

    .line 189
    iget-object v1, v0, Lcom/umeng/socialize/net/ActionBarResponse;->mSid:Ljava/lang/String;

    sput-object v1, Lcom/umeng/socialize/Config;->SessionId:Ljava/lang/String;

    .line 190
    iget-object v1, v0, Lcom/umeng/socialize/net/ActionBarResponse;->mUid:Ljava/lang/String;

    sput-object v1, Lcom/umeng/socialize/Config;->UID:Ljava/lang/String;

    .line 193
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "response has error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v0, :cond_1

    const-string v0, "null"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socialize/utils/Log;->i(Ljava/lang/String;)V

    .line 195
    const/4 v0, 0x0

    return-object v0

    .line 193
    :cond_1
    iget-object v0, v0, Lcom/umeng/socialize/net/ActionBarResponse;->mMsg:Ljava/lang/String;

    goto :goto_0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 205
    iget-object v0, p0, Lcom/umeng/socialize/UMShareAPI$a;->b:Landroid/content/Context;

    const-string v1, "umeng_socialize"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 207
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 208
    const-string v1, "newinstall"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 209
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 210
    return-void
.end method

.method protected synthetic doInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/umeng/socialize/UMShareAPI$a;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
