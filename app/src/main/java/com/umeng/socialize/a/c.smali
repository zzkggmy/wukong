.class public Lcom/umeng/socialize/a/c;
.super Ljava/lang/Object;
.source "SocialAnalytics.java"


# static fields
.field private static a:Lcom/umeng/socialize/net/base/SocializeClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/umeng/socialize/net/base/SocializeClient;

    invoke-direct {v0}, Lcom/umeng/socialize/net/base/SocializeClient;-><init>()V

    sput-object v0, Lcom/umeng/socialize/a/c;->a:Lcom/umeng/socialize/net/base/SocializeClient;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/socialize/media/UMediaObject;)V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "xxxxxx log="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socialize/utils/Log;->v(Ljava/lang/String;)V

    .line 19
    new-instance v0, Lcom/umeng/socialize/a/a;

    invoke-direct {v0, p0, p1, p2}, Lcom/umeng/socialize/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    const-string v1, "normal"

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/a/a;->c(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0, p3}, Lcom/umeng/socialize/a/a;->a(Lcom/umeng/socialize/media/UMediaObject;)V

    .line 23
    sget-object v1, Lcom/umeng/socialize/a/c;->a:Lcom/umeng/socialize/net/base/SocializeClient;

    invoke-virtual {v1, v0}, Lcom/umeng/socialize/net/base/SocializeClient;->execute(Lcom/umeng/socialize/net/base/SocializeRequest;)Lcom/umeng/socialize/net/base/SocializeReseponse;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/a/b;

    .line 24
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/umeng/socialize/a/b;->isOk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    const-string v0, "xxxxxx send log succeed"

    invoke-static {v0}, Lcom/umeng/socialize/utils/Log;->d(Ljava/lang/String;)V

    .line 29
    :goto_0
    return-void

    .line 27
    :cond_0
    const-string v0, "xxxxxx fail to send log"

    invoke-static {v0}, Lcom/umeng/socialize/utils/Log;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/socialize/media/UMediaObject;)V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Lcom/umeng/socialize/a/a;

    invoke-direct {v0, p0, p1, p2}, Lcom/umeng/socialize/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string v1, "shake"

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/a/a;->c(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0, p3}, Lcom/umeng/socialize/a/a;->a(Lcom/umeng/socialize/media/UMediaObject;)V

    .line 36
    sget-object v1, Lcom/umeng/socialize/a/c;->a:Lcom/umeng/socialize/net/base/SocializeClient;

    invoke-virtual {v1, v0}, Lcom/umeng/socialize/net/base/SocializeClient;->execute(Lcom/umeng/socialize/net/base/SocializeRequest;)Lcom/umeng/socialize/net/base/SocializeReseponse;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/a/b;

    .line 37
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/umeng/socialize/a/b;->isOk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    const-string v0, "send log succeed"

    invoke-static {v0}, Lcom/umeng/socialize/utils/Log;->d(Ljava/lang/String;)V

    .line 42
    :goto_0
    return-void

    .line 40
    :cond_0
    const-string v0, "fail to send log"

    invoke-static {v0}, Lcom/umeng/socialize/utils/Log;->d(Ljava/lang/String;)V

    goto :goto_0
.end method
