.class public Lorg/apache/shiro/web/tags/NotAuthenticatedTag;
.super Lorg/apache/shiro/web/tags/SecureTag;
.source "NotAuthenticatedTag.java"


# static fields
.field private static final log:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lorg/apache/shiro/web/tags/NotAuthenticatedTag;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/web/tags/NotAuthenticatedTag;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/apache/shiro/web/tags/SecureTag;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoStartTag()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/jsp/JspException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-virtual {p0}, Lorg/apache/shiro/web/tags/NotAuthenticatedTag;->getSubject()Lorg/apache/shiro/subject/Subject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/shiro/web/tags/NotAuthenticatedTag;->getSubject()Lorg/apache/shiro/subject/Subject;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/shiro/subject/Subject;->isAuthenticated()Z

    move-result v0

    if-nez v0, :cond_2

    .line 44
    :cond_0
    sget-object v0, Lorg/apache/shiro/web/tags/NotAuthenticatedTag;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    sget-object v0, Lorg/apache/shiro/web/tags/NotAuthenticatedTag;->log:Lorg/slf4j/Logger;

    const-string v1, "Subject does not exist or is not authenticated.  Tag body will be evaluated."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 47
    :cond_1
    const/4 v0, 0x1

    .line 52
    :goto_0
    return v0

    .line 49
    :cond_2
    sget-object v0, Lorg/apache/shiro/web/tags/NotAuthenticatedTag;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 50
    sget-object v0, Lorg/apache/shiro/web/tags/NotAuthenticatedTag;->log:Lorg/slf4j/Logger;

    const-string v1, "Subject exists and is authenticated.  Tag body will not be evaluated."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 52
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
