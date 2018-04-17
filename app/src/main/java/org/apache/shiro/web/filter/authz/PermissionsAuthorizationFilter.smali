.class public Lorg/apache/shiro/web/filter/authz/PermissionsAuthorizationFilter;
.super Lorg/apache/shiro/web/filter/authz/AuthorizationFilter;
.source "PermissionsAuthorizationFilter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/apache/shiro/web/filter/authz/AuthorizationFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public isAccessAllowed(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;
    .param p3, "mappedValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lorg/apache/shiro/web/filter/authz/PermissionsAuthorizationFilter;->getSubject(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)Lorg/apache/shiro/subject/Subject;

    move-result-object v2

    .line 40
    .local v2, "subject":Lorg/apache/shiro/subject/Subject;
    check-cast p3, [Ljava/lang/String;

    .end local p3    # "mappedValue":Ljava/lang/Object;
    move-object v1, p3

    check-cast v1, [Ljava/lang/String;

    .line 42
    .local v1, "perms":[Ljava/lang/String;
    const/4 v0, 0x1

    .line 43
    .local v0, "isPermitted":Z
    if-eqz v1, :cond_0

    array-length v3, v1

    if-lez v3, :cond_0

    .line 44
    array-length v3, v1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 45
    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-interface {v2, v3}, Lorg/apache/shiro/subject/Subject;->isPermitted(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 46
    const/4 v0, 0x0

    .line 55
    :cond_0
    :goto_0
    return v0

    .line 49
    :cond_1
    invoke-interface {v2, v1}, Lorg/apache/shiro/subject/Subject;->isPermittedAll([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 50
    const/4 v0, 0x0

    goto :goto_0
.end method
