.class public Lorg/apache/shiro/web/tags/GuestTag;
.super Lorg/apache/shiro/web/tags/SecureTag;
.source "GuestTag.java"


# static fields
.field private static final log:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lorg/apache/shiro/web/tags/GuestTag;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/web/tags/GuestTag;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
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
    .line 44
    invoke-virtual {p0}, Lorg/apache/shiro/web/tags/GuestTag;->getSubject()Lorg/apache/shiro/subject/Subject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/shiro/web/tags/GuestTag;->getSubject()Lorg/apache/shiro/subject/Subject;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/shiro/subject/Subject;->getPrincipal()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 45
    :cond_0
    sget-object v0, Lorg/apache/shiro/web/tags/GuestTag;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    sget-object v0, Lorg/apache/shiro/web/tags/GuestTag;->log:Lorg/slf4j/Logger;

    const-string v1, "Subject does not exist or does not have a known identity (aka \'principal\').  Tag body will be evaluated."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 49
    :cond_1
    const/4 v0, 0x1

    .line 55
    :goto_0
    return v0

    .line 51
    :cond_2
    sget-object v0, Lorg/apache/shiro/web/tags/GuestTag;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 52
    sget-object v0, Lorg/apache/shiro/web/tags/GuestTag;->log:Lorg/slf4j/Logger;

    const-string v1, "Subject exists or has a known identity (aka \'principal\').  Tag body will not be evaluated."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 55
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
