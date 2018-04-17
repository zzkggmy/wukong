.class final Lorg/apache/shiro/web/servlet/ShiroHttpSession$2;
.super Ljava/lang/Object;
.source "ShiroHttpSession.java"

# interfaces
.implements Ljavax/servlet/http/HttpSessionContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/shiro/web/servlet/ShiroHttpSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIds()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 65
    invoke-static {}, Lorg/apache/shiro/web/servlet/ShiroHttpSession;->access$000()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getSession(Ljava/lang/String;)Ljavax/servlet/http/HttpSession;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 61
    const/4 v0, 0x0

    return-object v0
.end method
