.class public Lorg/apache/shiro/authz/aop/AuthenticatedAnnotationHandler;
.super Lorg/apache/shiro/authz/aop/AuthorizingAnnotationHandler;
.source "AuthenticatedAnnotationHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lorg/apache/shiro/authz/annotation/RequiresAuthentication;

    invoke-direct {p0, v0}, Lorg/apache/shiro/authz/aop/AuthorizingAnnotationHandler;-><init>(Ljava/lang/Class;)V

    .line 41
    return-void
.end method


# virtual methods
.method public assertAuthorized(Ljava/lang/annotation/Annotation;)V
    .locals 2
    .param p1, "a"    # Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/authz/UnauthenticatedException;
        }
    .end annotation

    .prologue
    .line 52
    instance-of v0, p1, Lorg/apache/shiro/authz/annotation/RequiresAuthentication;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/shiro/authz/aop/AuthenticatedAnnotationHandler;->getSubject()Lorg/apache/shiro/subject/Subject;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/shiro/subject/Subject;->isAuthenticated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lorg/apache/shiro/authz/UnauthenticatedException;

    const-string v1, "The current Subject is not authenticated.  Access denied."

    invoke-direct {v0, v1}, Lorg/apache/shiro/authz/UnauthenticatedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    return-void
.end method
