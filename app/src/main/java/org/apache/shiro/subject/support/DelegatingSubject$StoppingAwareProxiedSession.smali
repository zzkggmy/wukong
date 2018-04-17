.class Lorg/apache/shiro/subject/support/DelegatingSubject$StoppingAwareProxiedSession;
.super Lorg/apache/shiro/session/ProxiedSession;
.source "DelegatingSubject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/shiro/subject/support/DelegatingSubject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StoppingAwareProxiedSession"
.end annotation


# instance fields
.field private final owner:Lorg/apache/shiro/subject/support/DelegatingSubject;

.field final synthetic this$0:Lorg/apache/shiro/subject/support/DelegatingSubject;


# direct methods
.method private constructor <init>(Lorg/apache/shiro/subject/support/DelegatingSubject;Lorg/apache/shiro/session/Session;Lorg/apache/shiro/subject/support/DelegatingSubject;)V
    .locals 0
    .param p2, "target"    # Lorg/apache/shiro/session/Session;
    .param p3, "owningSubject"    # Lorg/apache/shiro/subject/support/DelegatingSubject;

    .prologue
    .line 413
    iput-object p1, p0, Lorg/apache/shiro/subject/support/DelegatingSubject$StoppingAwareProxiedSession;->this$0:Lorg/apache/shiro/subject/support/DelegatingSubject;

    .line 414
    invoke-direct {p0, p2}, Lorg/apache/shiro/session/ProxiedSession;-><init>(Lorg/apache/shiro/session/Session;)V

    .line 415
    iput-object p3, p0, Lorg/apache/shiro/subject/support/DelegatingSubject$StoppingAwareProxiedSession;->owner:Lorg/apache/shiro/subject/support/DelegatingSubject;

    .line 416
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/shiro/subject/support/DelegatingSubject;Lorg/apache/shiro/session/Session;Lorg/apache/shiro/subject/support/DelegatingSubject;Lorg/apache/shiro/subject/support/DelegatingSubject$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/shiro/subject/support/DelegatingSubject;
    .param p2, "x1"    # Lorg/apache/shiro/session/Session;
    .param p3, "x2"    # Lorg/apache/shiro/subject/support/DelegatingSubject;
    .param p4, "x3"    # Lorg/apache/shiro/subject/support/DelegatingSubject$1;

    .prologue
    .line 409
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/shiro/subject/support/DelegatingSubject$StoppingAwareProxiedSession;-><init>(Lorg/apache/shiro/subject/support/DelegatingSubject;Lorg/apache/shiro/session/Session;Lorg/apache/shiro/subject/support/DelegatingSubject;)V

    return-void
.end method


# virtual methods
.method public stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/session/InvalidSessionException;
        }
    .end annotation

    .prologue
    .line 419
    invoke-super {p0}, Lorg/apache/shiro/session/ProxiedSession;->stop()V

    .line 420
    iget-object v0, p0, Lorg/apache/shiro/subject/support/DelegatingSubject$StoppingAwareProxiedSession;->owner:Lorg/apache/shiro/subject/support/DelegatingSubject;

    invoke-static {v0}, Lorg/apache/shiro/subject/support/DelegatingSubject;->access$100(Lorg/apache/shiro/subject/support/DelegatingSubject;)V

    .line 421
    return-void
.end method
