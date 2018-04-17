.class public Lorg/apache/shiro/web/tags/UserTag;
.super Lorg/apache/shiro/web/tags/SecureTag;
.source "UserTag.java"


# static fields
.field private static final log:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lorg/apache/shiro/web/tags/UserTag;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/web/tags/UserTag;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
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
    .line 48
    invoke-virtual {p0}, Lorg/apache/shiro/web/tags/UserTag;->getSubject()Lorg/apache/shiro/subject/Subject;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/shiro/web/tags/UserTag;->getSubject()Lorg/apache/shiro/subject/Subject;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/shiro/subject/Subject;->getPrincipal()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 49
    sget-object v0, Lorg/apache/shiro/web/tags/UserTag;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    sget-object v0, Lorg/apache/shiro/web/tags/UserTag;->log:Lorg/slf4j/Logger;

    const-string v1, "Subject has known identity (aka \'principal\').  Tag body will be evaluated."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 53
    :cond_0
    const/4 v0, 0x1

    .line 59
    :goto_0
    return v0

    .line 55
    :cond_1
    sget-object v0, Lorg/apache/shiro/web/tags/UserTag;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56
    sget-object v0, Lorg/apache/shiro/web/tags/UserTag;->log:Lorg/slf4j/Logger;

    const-string v1, "Subject does not exist or have a known identity (aka \'principal\').  Tag body will not be evaluated."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 59
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
