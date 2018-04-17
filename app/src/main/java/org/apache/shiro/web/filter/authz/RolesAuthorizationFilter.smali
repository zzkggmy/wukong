.class public Lorg/apache/shiro/web/filter/authz/RolesAuthorizationFilter;
.super Lorg/apache/shiro/web/filter/authz/AuthorizationFilter;
.source "RolesAuthorizationFilter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/apache/shiro/web/filter/authz/AuthorizationFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public isAccessAllowed(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;
    .param p3, "mappedValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-virtual {p0, p1, p2}, Lorg/apache/shiro/web/filter/authz/RolesAuthorizationFilter;->getSubject(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)Lorg/apache/shiro/subject/Subject;

    move-result-object v2

    .line 44
    .local v2, "subject":Lorg/apache/shiro/subject/Subject;
    check-cast p3, [Ljava/lang/String;

    .end local p3    # "mappedValue":Ljava/lang/Object;
    move-object v1, p3

    check-cast v1, [Ljava/lang/String;

    .line 46
    .local v1, "rolesArray":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v3, v1

    if-nez v3, :cond_1

    .line 48
    :cond_0
    const/4 v3, 0x1

    .line 52
    :goto_0
    return v3

    .line 51
    :cond_1
    invoke-static {v1}, Lorg/apache/shiro/util/CollectionUtils;->asSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 52
    .local v0, "roles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2, v0}, Lorg/apache/shiro/subject/Subject;->hasAllRoles(Ljava/util/Collection;)Z

    move-result v3

    goto :goto_0
.end method
