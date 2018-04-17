.class final Lorg/apache/shiro/util/ClassUtils$3;
.super Lorg/apache/shiro/util/ClassUtils$ExceptionIgnoringAccessor;
.source "ClassUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/shiro/util/ClassUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/shiro/util/ClassUtils$ExceptionIgnoringAccessor;-><init>(Lorg/apache/shiro/util/ClassUtils$1;)V

    return-void
.end method


# virtual methods
.method protected doGetClassLoader()Ljava/lang/ClassLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 69
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method
