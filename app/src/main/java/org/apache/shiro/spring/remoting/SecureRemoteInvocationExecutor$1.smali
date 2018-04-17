.class Lorg/apache/shiro/spring/remoting/SecureRemoteInvocationExecutor$1;
.super Ljava/lang/Object;
.source "SecureRemoteInvocationExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/shiro/spring/remoting/SecureRemoteInvocationExecutor;->invoke(Lorg/springframework/remoting/support/RemoteInvocation;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/shiro/spring/remoting/SecureRemoteInvocationExecutor;

.field final synthetic val$invocation:Lorg/springframework/remoting/support/RemoteInvocation;

.field final synthetic val$targetObject:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/apache/shiro/spring/remoting/SecureRemoteInvocationExecutor;Lorg/springframework/remoting/support/RemoteInvocation;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lorg/apache/shiro/spring/remoting/SecureRemoteInvocationExecutor$1;->this$0:Lorg/apache/shiro/spring/remoting/SecureRemoteInvocationExecutor;

    iput-object p2, p0, Lorg/apache/shiro/spring/remoting/SecureRemoteInvocationExecutor$1;->val$invocation:Lorg/springframework/remoting/support/RemoteInvocation;

    iput-object p3, p0, Lorg/apache/shiro/spring/remoting/SecureRemoteInvocationExecutor$1;->val$targetObject:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lorg/apache/shiro/spring/remoting/SecureRemoteInvocationExecutor$1;->this$0:Lorg/apache/shiro/spring/remoting/SecureRemoteInvocationExecutor;

    iget-object v1, p0, Lorg/apache/shiro/spring/remoting/SecureRemoteInvocationExecutor$1;->val$invocation:Lorg/springframework/remoting/support/RemoteInvocation;

    iget-object v2, p0, Lorg/apache/shiro/spring/remoting/SecureRemoteInvocationExecutor$1;->val$targetObject:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/apache/shiro/spring/remoting/SecureRemoteInvocationExecutor;->access$001(Lorg/apache/shiro/spring/remoting/SecureRemoteInvocationExecutor;Lorg/springframework/remoting/support/RemoteInvocation;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
