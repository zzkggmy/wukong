.class public abstract Lorg/apache/shiro/aop/AnnotationHandler;
.super Ljava/lang/Object;
.source "AnnotationHandler.java"


# instance fields
.field protected annotationClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field


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
    .line 45
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p0, p1}, Lorg/apache/shiro/aop/AnnotationHandler;->setAnnotationClass(Ljava/lang/Class;)V

    .line 47
    return-void
.end method


# virtual methods
.method public getAnnotationClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lorg/apache/shiro/aop/AnnotationHandler;->annotationClass:Ljava/lang/Class;

    return-object v0
.end method

.method protected getSubject()Lorg/apache/shiro/subject/Subject;
    .locals 1

    .prologue
    .line 57
    invoke-static {}, Lorg/apache/shiro/SecurityUtils;->getSubject()Lorg/apache/shiro/subject/Subject;

    move-result-object v0

    return-object v0
.end method

.method protected setAnnotationClass(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 68
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    if-nez p1, :cond_0

    .line 69
    const-string v0, "annotationClass argument cannot be null"

    .line 70
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 72
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lorg/apache/shiro/aop/AnnotationHandler;->annotationClass:Ljava/lang/Class;

    .line 73
    return-void
.end method
