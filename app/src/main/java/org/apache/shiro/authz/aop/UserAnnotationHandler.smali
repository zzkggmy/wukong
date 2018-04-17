.class public Lorg/apache/shiro/authz/aop/UserAnnotationHandler;
.super Lorg/apache/shiro/authz/aop/AuthorizingAnnotationHandler;
.source "UserAnnotationHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lorg/apache/shiro/authz/annotation/RequiresUser;

    invoke-direct {p0, v0}, Lorg/apache/shiro/authz/aop/AuthorizingAnnotationHandler;-><init>(Ljava/lang/Class;)V

    .line 47
    return-void
.end method


# virtual methods
.method public assertAuthorized(Ljava/lang/annotation/Annotation;)V
    .locals 2
    .param p1, "a"    # Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/authz/AuthorizationException;
        }
    .end annotation

    .prologue
    .line 60
    instance-of v0, p1, Lorg/apache/shiro/authz/annotation/RequiresUser;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/shiro/authz/aop/UserAnnotationHandler;->getSubject()Lorg/apache/shiro/subject/Subject;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/shiro/subject/Subject;->getPrincipal()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lorg/apache/shiro/authz/UnauthenticatedException;

    const-string v1, "Attempting to perform a user-only operation.  The current Subject is not a user (they haven\'t been authenticated or remembered from a previous login).  Access denied."

    invoke-direct {v0, v1}, Lorg/apache/shiro/authz/UnauthenticatedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    return-void
.end method
