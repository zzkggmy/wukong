.class public interface abstract annotation Lorg/apache/shiro/authz/annotation/RequiresRoles;
.super Ljava/lang/Object;
.source "RequiresRoles.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lorg/apache/shiro/authz/annotation/RequiresRoles;
        logical = .enum Lorg/apache/shiro/authz/annotation/Logical;->AND:Lorg/apache/shiro/authz/annotation/Logical;
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract logical()Lorg/apache/shiro/authz/annotation/Logical;
.end method

.method public abstract value()[Ljava/lang/String;
.end method
