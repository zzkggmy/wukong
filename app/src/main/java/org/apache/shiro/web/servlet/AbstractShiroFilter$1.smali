.class Lorg/apache/shiro/web/servlet/AbstractShiroFilter$1;
.super Ljava/lang/Object;
.source "AbstractShiroFilter.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/shiro/web/servlet/AbstractShiroFilter;->doFilterInternal(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljavax/servlet/FilterChain;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/shiro/web/servlet/AbstractShiroFilter;

.field final synthetic val$chain:Ljavax/servlet/FilterChain;

.field final synthetic val$request:Ljavax/servlet/ServletRequest;

.field final synthetic val$response:Ljavax/servlet/ServletResponse;


# direct methods
.method constructor <init>(Lorg/apache/shiro/web/servlet/AbstractShiroFilter;Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljavax/servlet/FilterChain;)V
    .locals 0

    .prologue
    .line 362
    iput-object p1, p0, Lorg/apache/shiro/web/servlet/AbstractShiroFilter$1;->this$0:Lorg/apache/shiro/web/servlet/AbstractShiroFilter;

    iput-object p2, p0, Lorg/apache/shiro/web/servlet/AbstractShiroFilter$1;->val$request:Ljavax/servlet/ServletRequest;

    iput-object p3, p0, Lorg/apache/shiro/web/servlet/AbstractShiroFilter$1;->val$response:Ljavax/servlet/ServletResponse;

    iput-object p4, p0, Lorg/apache/shiro/web/servlet/AbstractShiroFilter$1;->val$chain:Ljavax/servlet/FilterChain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 364
    iget-object v0, p0, Lorg/apache/shiro/web/servlet/AbstractShiroFilter$1;->this$0:Lorg/apache/shiro/web/servlet/AbstractShiroFilter;

    iget-object v1, p0, Lorg/apache/shiro/web/servlet/AbstractShiroFilter$1;->val$request:Ljavax/servlet/ServletRequest;

    iget-object v2, p0, Lorg/apache/shiro/web/servlet/AbstractShiroFilter$1;->val$response:Ljavax/servlet/ServletResponse;

    invoke-virtual {v0, v1, v2}, Lorg/apache/shiro/web/servlet/AbstractShiroFilter;->updateSessionLastAccessTime(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    .line 365
    iget-object v0, p0, Lorg/apache/shiro/web/servlet/AbstractShiroFilter$1;->this$0:Lorg/apache/shiro/web/servlet/AbstractShiroFilter;

    iget-object v1, p0, Lorg/apache/shiro/web/servlet/AbstractShiroFilter$1;->val$request:Ljavax/servlet/ServletRequest;

    iget-object v2, p0, Lorg/apache/shiro/web/servlet/AbstractShiroFilter$1;->val$response:Ljavax/servlet/ServletResponse;

    iget-object v3, p0, Lorg/apache/shiro/web/servlet/AbstractShiroFilter$1;->val$chain:Ljavax/servlet/FilterChain;

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/shiro/web/servlet/AbstractShiroFilter;->executeChain(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljavax/servlet/FilterChain;)V

    .line 366
    const/4 v0, 0x0

    return-object v0
.end method
