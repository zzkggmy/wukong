.class public abstract Lorg/apache/shiro/web/tags/SecureTag;
.super Ljavax/servlet/jsp/tagext/TagSupport;
.source "SecureTag.java"


# static fields
.field private static final log:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lorg/apache/shiro/web/tags/SecureTag;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/web/tags/SecureTag;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljavax/servlet/jsp/tagext/TagSupport;-><init>()V

    .line 40
    return-void
.end method


# virtual methods
.method public doStartTag()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/jsp/JspException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-virtual {p0}, Lorg/apache/shiro/web/tags/SecureTag;->verifyAttributes()V

    .line 53
    invoke-virtual {p0}, Lorg/apache/shiro/web/tags/SecureTag;->onDoStartTag()I

    move-result v0

    return v0
.end method

.method protected getSubject()Lorg/apache/shiro/subject/Subject;
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Lorg/apache/shiro/SecurityUtils;->getSubject()Lorg/apache/shiro/subject/Subject;

    move-result-object v0

    return-object v0
.end method

.method public abstract onDoStartTag()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/jsp/JspException;
        }
    .end annotation
.end method

.method protected verifyAttributes()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/jsp/JspException;
        }
    .end annotation

    .prologue
    .line 47
    return-void
.end method
