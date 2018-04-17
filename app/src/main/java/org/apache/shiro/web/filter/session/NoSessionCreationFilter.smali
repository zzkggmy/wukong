.class public Lorg/apache/shiro/web/filter/session/NoSessionCreationFilter;
.super Lorg/apache/shiro/web/filter/PathMatchingFilter;
.source "NoSessionCreationFilter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/apache/shiro/web/filter/PathMatchingFilter;-><init>()V

    return-void
.end method


# virtual methods
.method protected onPreHandle(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;
    .param p3, "mappedValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 53
    sget-object v0, Lorg/apache/shiro/subject/support/DefaultSubjectContext;->SESSION_CREATION_ENABLED:Ljava/lang/String;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v0, v1}, Ljavax/servlet/ServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    const/4 v0, 0x1

    return v0
.end method
