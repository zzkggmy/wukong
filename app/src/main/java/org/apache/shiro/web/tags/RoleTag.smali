.class public abstract Lorg/apache/shiro/web/tags/RoleTag;
.super Lorg/apache/shiro/web/tags/SecureTag;
.source "RoleTag.java"


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

    iput-object v0, p0, Lorg/apache/shiro/web/tags/RoleTag;->name:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lorg/apache/shiro/web/tags/RoleTag;->name:Ljava/lang/String;

    return-object v0
.end method

.method public onDoStartTag()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/jsp/JspException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-virtual {p0}, Lorg/apache/shiro/web/tags/RoleTag;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/shiro/web/tags/RoleTag;->showTagBody(Ljava/lang/String;)Z

    move-result v0

    .line 46
    .local v0, "show":Z
    if-eqz v0, :cond_0

    .line 47
    const/4 v1, 0x1

    .line 49
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lorg/apache/shiro/web/tags/RoleTag;->name:Ljava/lang/String;

    .line 42
    return-void
.end method

.method protected abstract showTagBody(Ljava/lang/String;)Z
.end method
