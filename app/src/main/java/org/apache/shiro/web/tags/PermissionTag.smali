.class public abstract Lorg/apache/shiro/web/tags/PermissionTag;
.super Lorg/apache/shiro/web/tags/SecureTag;
.source "PermissionTag.java"


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/apache/shiro/web/tags/SecureTag;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/shiro/web/tags/PermissionTag;->name:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lorg/apache/shiro/web/tags/PermissionTag;->name:Ljava/lang/String;

    return-object v0
.end method

.method protected isPermitted(Ljava/lang/String;)Z
    .locals 1
    .param p1, "p"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-virtual {p0}, Lorg/apache/shiro/web/tags/PermissionTag;->getSubject()Lorg/apache/shiro/subject/Subject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/shiro/web/tags/PermissionTag;->getSubject()Lorg/apache/shiro/subject/Subject;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/shiro/subject/Subject;->isPermitted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDoStartTag()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/jsp/JspException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-virtual {p0}, Lorg/apache/shiro/web/tags/PermissionTag;->getName()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "p":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/apache/shiro/web/tags/PermissionTag;->showTagBody(Ljava/lang/String;)Z

    move-result v1

    .line 58
    .local v1, "show":Z
    if-eqz v1, :cond_0

    .line 59
    const/4 v2, 0x1

    .line 61
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lorg/apache/shiro/web/tags/PermissionTag;->name:Ljava/lang/String;

    .line 42
    return-void
.end method

.method protected abstract showTagBody(Ljava/lang/String;)Z
.end method

.method protected verifyAttributes()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/jsp/JspException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-virtual {p0}, Lorg/apache/shiro/web/tags/PermissionTag;->getName()Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, "permission":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 48
    :cond_0
    const-string v0, "The \'name\' tag attribute must be set."

    .line 49
    .local v0, "msg":Ljava/lang/String;
    new-instance v2, Ljavax/servlet/jsp/JspException;

    invoke-direct {v2, v0}, Ljavax/servlet/jsp/JspException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 51
    .end local v0    # "msg":Ljava/lang/String;
    :cond_1
    return-void
.end method
