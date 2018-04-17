.class public abstract Lorg/apache/shiro/authz/aop/AuthorizingAnnotationHandler;
.super Lorg/apache/shiro/aop/AnnotationHandler;
.source "AuthorizingAnnotationHandler.java"


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-direct {p0, p1}, Lorg/apache/shiro/aop/AnnotationHandler;-><init>(Ljava/lang/Class;)V

    .line 42
    return-void
.end method


# virtual methods
.method public abstract assertAuthorized(Ljava/lang/annotation/Annotation;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/authz/AuthorizationException;
        }
    .end annotation
.end method
