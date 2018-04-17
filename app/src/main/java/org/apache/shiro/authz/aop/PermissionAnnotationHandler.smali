.class public Lorg/apache/shiro/authz/aop/PermissionAnnotationHandler;
.super Lorg/apache/shiro/authz/aop/AuthorizingAnnotationHandler;
.source "PermissionAnnotationHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lorg/apache/shiro/authz/annotation/RequiresPermissions;

    invoke-direct {p0, v0}, Lorg/apache/shiro/authz/aop/AuthorizingAnnotationHandler;-><init>(Ljava/lang/Class;)V

    .line 44
    return-void
.end method


# virtual methods
.method public assertAuthorized(Ljava/lang/annotation/Annotation;)V
    .locals 11
    .param p1, "a"    # Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/authz/AuthorizationException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 67
    instance-of v8, p1, Lorg/apache/shiro/authz/annotation/RequiresPermissions;

    if-nez v8, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v6, p1

    .line 69
    check-cast v6, Lorg/apache/shiro/authz/annotation/RequiresPermissions;

    .line 70
    .local v6, "rpAnnotation":Lorg/apache/shiro/authz/annotation/RequiresPermissions;
    invoke-virtual {p0, p1}, Lorg/apache/shiro/authz/aop/PermissionAnnotationHandler;->getAnnotationValue(Ljava/lang/annotation/Annotation;)[Ljava/lang/String;

    move-result-object v5

    .line 71
    .local v5, "perms":[Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/shiro/authz/aop/PermissionAnnotationHandler;->getSubject()Lorg/apache/shiro/subject/Subject;

    move-result-object v7

    .line 73
    .local v7, "subject":Lorg/apache/shiro/subject/Subject;
    array-length v8, v5

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 74
    aget-object v8, v5, v10

    invoke-interface {v7, v8}, Lorg/apache/shiro/subject/Subject;->checkPermission(Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :cond_2
    sget-object v8, Lorg/apache/shiro/authz/annotation/Logical;->AND:Lorg/apache/shiro/authz/annotation/Logical;

    invoke-interface {v6}, Lorg/apache/shiro/authz/annotation/RequiresPermissions;->logical()Lorg/apache/shiro/authz/annotation/Logical;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/apache/shiro/authz/annotation/Logical;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 78
    invoke-virtual {p0}, Lorg/apache/shiro/authz/aop/PermissionAnnotationHandler;->getSubject()Lorg/apache/shiro/subject/Subject;

    move-result-object v8

    invoke-interface {v8, v5}, Lorg/apache/shiro/subject/Subject;->checkPermissions([Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_3
    sget-object v8, Lorg/apache/shiro/authz/annotation/Logical;->OR:Lorg/apache/shiro/authz/annotation/Logical;

    invoke-interface {v6}, Lorg/apache/shiro/authz/annotation/RequiresPermissions;->logical()Lorg/apache/shiro/authz/annotation/Logical;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/apache/shiro/authz/annotation/Logical;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 83
    const/4 v1, 0x0

    .line 84
    .local v1, "hasAtLeastOnePermission":Z
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_5

    aget-object v4, v0, v2

    .local v4, "permission":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/shiro/authz/aop/PermissionAnnotationHandler;->getSubject()Lorg/apache/shiro/subject/Subject;

    move-result-object v8

    invoke-interface {v8, v4}, Lorg/apache/shiro/subject/Subject;->isPermitted(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v1, 0x1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 86
    .end local v4    # "permission":Ljava/lang/String;
    :cond_5
    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/shiro/authz/aop/PermissionAnnotationHandler;->getSubject()Lorg/apache/shiro/subject/Subject;

    move-result-object v8

    aget-object v9, v5, v10

    invoke-interface {v8, v9}, Lorg/apache/shiro/subject/Subject;->checkPermission(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected getAnnotationValue(Ljava/lang/annotation/Annotation;)[Ljava/lang/String;
    .locals 2
    .param p1, "a"    # Ljava/lang/annotation/Annotation;

    .prologue
    .line 53
    move-object v0, p1

    check-cast v0, Lorg/apache/shiro/authz/annotation/RequiresPermissions;

    .line 54
    .local v0, "rpAnnotation":Lorg/apache/shiro/authz/annotation/RequiresPermissions;
    invoke-interface {v0}, Lorg/apache/shiro/authz/annotation/RequiresPermissions;->value()[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
