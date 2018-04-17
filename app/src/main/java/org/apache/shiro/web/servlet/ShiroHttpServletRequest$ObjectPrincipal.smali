.class Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest$ObjectPrincipal;
.super Ljava/lang/Object;
.source "ShiroHttpServletRequest.java"

# interfaces
.implements Ljava/security/Principal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ObjectPrincipal"
.end annotation


# instance fields
.field private object:Ljava/lang/Object;

.field final synthetic this$0:Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;


# direct methods
.method public constructor <init>(Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;Ljava/lang/Object;)V
    .locals 1
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 225
    iput-object p1, p0, Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest$ObjectPrincipal;->this$0:Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest$ObjectPrincipal;->object:Ljava/lang/Object;

    .line 226
    iput-object p2, p0, Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest$ObjectPrincipal;->object:Ljava/lang/Object;

    .line 227
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 242
    instance-of v1, p1, Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest$ObjectPrincipal;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 243
    check-cast v0, Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest$ObjectPrincipal;

    .line 244
    .local v0, "op":Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest$ObjectPrincipal;
    invoke-virtual {p0}, Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest$ObjectPrincipal;->getObject()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest$ObjectPrincipal;->getObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 246
    .end local v0    # "op":Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest$ObjectPrincipal;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    invoke-virtual {p0}, Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest$ObjectPrincipal;->getObject()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest$ObjectPrincipal;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest$ObjectPrincipal;->object:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest$ObjectPrincipal;->object:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
