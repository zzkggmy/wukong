.class public Lorg/apache/shiro/authz/aop/RoleAnnotationHandler;
.super Lorg/apache/shiro/authz/aop/AuthorizingAnnotationHandler;
.source "RoleAnnotationHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lorg/apache/shiro/authz/annotation/RequiresRoles;

    invoke-direct {p0, v0}, Lorg/apache/shiro/authz/aop/AuthorizingAnnotationHandler;-><init>(Ljava/lang/Class;)V

    .line 42
    return-void
.end method


# virtual methods
.method public assertAuthorized(Ljava/lang/annotation/Annotation;)V
    .locals 10
    .param p1, "a"    # Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/authz/AuthorizationException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 54
    instance-of v7, p1, Lorg/apache/shiro/authz/annotation/RequiresRoles;

    if-nez v7, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v6, p1

    .line 56
    check-cast v6, Lorg/apache/shiro/authz/annotation/RequiresRoles;

    .line 57
    .local v6, "rrAnnotation":Lorg/apache/shiro/authz/annotation/RequiresRoles;
    invoke-interface {v6}, Lorg/apache/shiro/authz/annotation/RequiresRoles;->value()[Ljava/lang/String;

    move-result-object v5

    .line 59
    .local v5, "roles":[Ljava/lang/String;
    array-length v7, v5

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    .line 60
    invoke-virtual {p0}, Lorg/apache/shiro/authz/aop/RoleAnnotationHandler;->getSubject()Lorg/apache/shiro/subject/Subject;

    move-result-object v7

    aget-object v8, v5, v9

    invoke-interface {v7, v8}, Lorg/apache/shiro/subject/Subject;->checkRole(Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :cond_2
    sget-object v7, Lorg/apache/shiro/authz/annotation/Logical;->AND:Lorg/apache/shiro/authz/annotation/Logical;

    invoke-interface {v6}, Lorg/apache/shiro/authz/annotation/RequiresRoles;->logical()Lorg/apache/shiro/authz/annotation/Logical;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/shiro/authz/annotation/Logical;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 64
    invoke-virtual {p0}, Lorg/apache/shiro/authz/aop/RoleAnnotationHandler;->getSubject()Lorg/apache/shiro/subject/Subject;

    move-result-object v7

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/shiro/subject/Subject;->checkRoles(Ljava/util/Collection;)V

    goto :goto_0

    .line 67
    :cond_3
    sget-object v7, Lorg/apache/shiro/authz/annotation/Logical;->OR:Lorg/apache/shiro/authz/annotation/Logical;

    invoke-interface {v6}, Lorg/apache/shiro/authz/annotation/RequiresRoles;->logical()Lorg/apache/shiro/authz/annotation/Logical;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/shiro/authz/annotation/Logical;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 69
    const/4 v1, 0x0

    .line 70
    .local v1, "hasAtLeastOneRole":Z
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_5

    aget-object v4, v0, v2

    .local v4, "role":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/shiro/authz/aop/RoleAnnotationHandler;->getSubject()Lorg/apache/shiro/subject/Subject;

    move-result-object v7

    invoke-interface {v7, v4}, Lorg/apache/shiro/subject/Subject;->hasRole(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v1, 0x1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 72
    .end local v4    # "role":Ljava/lang/String;
    :cond_5
    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/shiro/authz/aop/RoleAnnotationHandler;->getSubject()Lorg/apache/shiro/subject/Subject;

    move-result-object v7

    aget-object v8, v5, v9

    invoke-interface {v7, v8}, Lorg/apache/shiro/subject/Subject;->checkRole(Ljava/lang/String;)V

    goto :goto_0
.end method
