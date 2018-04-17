.class public Lorg/apache/shiro/web/session/HttpServletSession;
.super Ljava/lang/Object;
.source "HttpServletSession.java"

# interfaces
.implements Lorg/apache/shiro/session/Session;


# static fields
.field private static final HOST_SESSION_KEY:Ljava/lang/String;

.field private static final TOUCH_OBJECT_SESSION_KEY:Ljava/lang/String;


# instance fields
.field private httpSession:Ljavax/servlet/http/HttpSession;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/apache/shiro/web/session/HttpServletSession;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".HOST_SESSION_KEY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/web/session/HttpServletSession;->HOST_SESSION_KEY:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/apache/shiro/web/session/HttpServletSession;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".TOUCH_OBJECT_SESSION_KEY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/web/session/HttpServletSession;->TOUCH_OBJECT_SESSION_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljavax/servlet/http/HttpSession;Ljava/lang/String;)V
    .locals 2
    .param p1, "httpSession"    # Ljavax/servlet/http/HttpSession;
    .param p2, "host"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/shiro/web/session/HttpServletSession;->httpSession:Ljavax/servlet/http/HttpSession;

    .line 49
    if-nez p1, :cond_0

    .line 50
    const-string v0, "HttpSession constructor argument cannot be null."

    .line 51
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 53
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    instance-of v1, p1, Lorg/apache/shiro/web/servlet/ShiroHttpSession;

    if-eqz v1, :cond_1

    .line 54
    const-string v0, "HttpSession constructor argument cannot be an instance of ShiroHttpSession.  This is enforced to prevent circular dependencies and infinite loops."

    .line 56
    .restart local v0    # "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 58
    .end local v0    # "msg":Ljava/lang/String;
    :cond_1
    iput-object p1, p0, Lorg/apache/shiro/web/session/HttpServletSession;->httpSession:Ljavax/servlet/http/HttpSession;

    .line 59
    invoke-static {p2}, Lorg/apache/shiro/util/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 60
    invoke-virtual {p0, p2}, Lorg/apache/shiro/web/session/HttpServletSession;->setHost(Ljava/lang/String;)V

    .line 62
    :cond_2
    return-void
.end method

.method private static assertString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/Object;

    .prologue
    .line 136
    instance-of v1, p0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 137
    const-string v0, "HttpSession based implementations of the Shiro Session interface requires attribute keys to be String objects.  The HttpSession class does not support anything other than String keys."

    .line 139
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 141
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    check-cast p0, Ljava/lang/String;

    .end local p0    # "key":Ljava/lang/Object;
    return-object p0
.end method


# virtual methods
.method public getAttribute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/session/InvalidSessionException;
        }
    .end annotation

    .prologue
    .line 146
    :try_start_0
    iget-object v1, p0, Lorg/apache/shiro/web/session/HttpServletSession;->httpSession:Ljavax/servlet/http/HttpSession;

    invoke-static {p1}, Lorg/apache/shiro/web/session/HttpServletSession;->assertString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljavax/servlet/http/HttpSession;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/apache/shiro/session/InvalidSessionException;

    invoke-direct {v1, v0}, Lorg/apache/shiro/session/InvalidSessionException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getAttributeKeys()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/session/InvalidSessionException;
        }
    .end annotation

    .prologue
    .line 121
    :try_start_0
    iget-object v3, p0, Lorg/apache/shiro/web/session/HttpServletSession;->httpSession:Ljavax/servlet/http/HttpSession;

    invoke-interface {v3}, Ljavax/servlet/http/HttpSession;->getAttributeNames()Ljava/util/Enumeration;

    move-result-object v2

    .line 122
    .local v2, "namesEnum":Ljava/util/Enumeration;
    const/4 v1, 0x0

    .line 123
    .local v1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    if-eqz v2, :cond_0

    .line 124
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "keys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .restart local v1    # "keys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 126
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 130
    .end local v1    # "keys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .end local v2    # "namesEnum":Ljava/util/Enumeration;
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Lorg/apache/shiro/session/InvalidSessionException;

    invoke-direct {v3, v0}, Lorg/apache/shiro/session/InvalidSessionException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 129
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "keys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .restart local v2    # "namesEnum":Ljava/util/Enumeration;
    :cond_0
    return-object v1
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lorg/apache/shiro/web/session/HttpServletSession;->HOST_SESSION_KEY:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/shiro/web/session/HttpServletSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/io/Serializable;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/apache/shiro/web/session/HttpServletSession;->httpSession:Ljavax/servlet/http/HttpSession;

    invoke-interface {v0}, Ljavax/servlet/http/HttpSession;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastAccessTime()Ljava/util/Date;
    .locals 4

    .prologue
    .line 73
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lorg/apache/shiro/web/session/HttpServletSession;->httpSession:Ljavax/servlet/http/HttpSession;

    invoke-interface {v1}, Ljavax/servlet/http/HttpSession;->getLastAccessedTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getStartTimestamp()Ljava/util/Date;
    .locals 4

    .prologue
    .line 69
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lorg/apache/shiro/web/session/HttpServletSession;->httpSession:Ljavax/servlet/http/HttpSession;

    invoke-interface {v1}, Ljavax/servlet/http/HttpSession;->getCreationTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getTimeout()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/session/InvalidSessionException;
        }
    .end annotation

    .prologue
    .line 78
    :try_start_0
    iget-object v1, p0, Lorg/apache/shiro/web/session/HttpServletSession;->httpSession:Ljavax/servlet/http/HttpSession;

    invoke-interface {v1}, Ljavax/servlet/http/HttpSession;->getMaxInactiveInterval()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    return-wide v2

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/apache/shiro/session/InvalidSessionException;

    invoke-direct {v1, v0}, Lorg/apache/shiro/session/InvalidSessionException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/session/InvalidSessionException;
        }
    .end annotation

    .prologue
    .line 162
    :try_start_0
    invoke-static {p1}, Lorg/apache/shiro/web/session/HttpServletSession;->assertString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 163
    .local v2, "sKey":Ljava/lang/String;
    iget-object v3, p0, Lorg/apache/shiro/web/session/HttpServletSession;->httpSession:Ljavax/servlet/http/HttpSession;

    invoke-interface {v3, v2}, Ljavax/servlet/http/HttpSession;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 164
    .local v1, "removed":Ljava/lang/Object;
    iget-object v3, p0, Lorg/apache/shiro/web/session/HttpServletSession;->httpSession:Ljavax/servlet/http/HttpSession;

    invoke-interface {v3, v2}, Ljavax/servlet/http/HttpSession;->removeAttribute(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    return-object v1

    .line 166
    .end local v1    # "removed":Ljava/lang/Object;
    .end local v2    # "sKey":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Lorg/apache/shiro/session/InvalidSessionException;

    invoke-direct {v3, v0}, Lorg/apache/shiro/session/InvalidSessionException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public setAttribute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/session/InvalidSessionException;
        }
    .end annotation

    .prologue
    .line 154
    :try_start_0
    iget-object v1, p0, Lorg/apache/shiro/web/session/HttpServletSession;->httpSession:Ljavax/servlet/http/HttpSession;

    invoke-static {p1}, Lorg/apache/shiro/web/session/HttpServletSession;->assertString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Ljavax/servlet/http/HttpSession;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    return-void

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/apache/shiro/session/InvalidSessionException;

    invoke-direct {v1, v0}, Lorg/apache/shiro/session/InvalidSessionException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected setHost(Ljava/lang/String;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 94
    sget-object v0, Lorg/apache/shiro/web/session/HttpServletSession;->HOST_SESSION_KEY:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lorg/apache/shiro/web/session/HttpServletSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 95
    return-void
.end method

.method public setTimeout(J)V
    .locals 5
    .param p1, "maxIdleTimeInMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/session/InvalidSessionException;
        }
    .end annotation

    .prologue
    .line 86
    const-wide/16 v2, 0x3e8

    :try_start_0
    div-long v2, p1, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v1

    .line 87
    .local v1, "timeout":I
    iget-object v2, p0, Lorg/apache/shiro/web/session/HttpServletSession;->httpSession:Ljavax/servlet/http/HttpSession;

    invoke-interface {v2, v1}, Ljavax/servlet/http/HttpSession;->setMaxInactiveInterval(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    return-void

    .line 88
    .end local v1    # "timeout":I
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/apache/shiro/session/InvalidSessionException;

    invoke-direct {v2, v0}, Lorg/apache/shiro/session/InvalidSessionException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public stop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/session/InvalidSessionException;
        }
    .end annotation

    .prologue
    .line 113
    :try_start_0
    iget-object v1, p0, Lorg/apache/shiro/web/session/HttpServletSession;->httpSession:Ljavax/servlet/http/HttpSession;

    invoke-interface {v1}, Ljavax/servlet/http/HttpSession;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/apache/shiro/session/InvalidSessionException;

    invoke-direct {v1, v0}, Lorg/apache/shiro/session/InvalidSessionException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public touch()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/session/InvalidSessionException;
        }
    .end annotation

    .prologue
    .line 104
    :try_start_0
    iget-object v1, p0, Lorg/apache/shiro/web/session/HttpServletSession;->httpSession:Ljavax/servlet/http/HttpSession;

    sget-object v2, Lorg/apache/shiro/web/session/HttpServletSession;->TOUCH_OBJECT_SESSION_KEY:Ljava/lang/String;

    sget-object v3, Lorg/apache/shiro/web/session/HttpServletSession;->TOUCH_OBJECT_SESSION_KEY:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljavax/servlet/http/HttpSession;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 105
    iget-object v1, p0, Lorg/apache/shiro/web/session/HttpServletSession;->httpSession:Ljavax/servlet/http/HttpSession;

    sget-object v2, Lorg/apache/shiro/web/session/HttpServletSession;->TOUCH_OBJECT_SESSION_KEY:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljavax/servlet/http/HttpSession;->removeAttribute(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/apache/shiro/session/InvalidSessionException;

    invoke-direct {v1, v0}, Lorg/apache/shiro/session/InvalidSessionException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
