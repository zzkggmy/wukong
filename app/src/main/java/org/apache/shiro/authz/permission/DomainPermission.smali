.class public Lorg/apache/shiro/authz/permission/DomainPermission;
.super Lorg/apache/shiro/authz/permission/WildcardPermission;
.source "DomainPermission.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private actions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private domain:Ljava/lang/String;

.field private targets:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/apache/shiro/authz/permission/WildcardPermission;-><init>()V

    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/shiro/authz/permission/DomainPermission;->getDomain(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/shiro/authz/permission/DomainPermission;->domain:Ljava/lang/String;

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/shiro/authz/permission/DomainPermission;->getDomain(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/shiro/authz/permission/DomainPermission;->setParts(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "actions"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/apache/shiro/authz/permission/WildcardPermission;-><init>()V

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/shiro/authz/permission/DomainPermission;->getDomain(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/shiro/authz/permission/DomainPermission;->domain:Ljava/lang/String;

    .line 51
    const-string v0, ","

    invoke-static {p1, v0}, Lorg/apache/shiro/util/StringUtils;->splitToSet(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/shiro/authz/permission/DomainPermission;->actions:Ljava/util/Set;

    .line 52
    iget-object v0, p0, Lorg/apache/shiro/authz/permission/DomainPermission;->domain:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/shiro/authz/permission/DomainPermission;->encodeParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "actions"    # Ljava/lang/String;
    .param p2, "targets"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0}, Lorg/apache/shiro/authz/permission/WildcardPermission;-><init>()V

    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/shiro/authz/permission/DomainPermission;->getDomain(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/shiro/authz/permission/DomainPermission;->domain:Ljava/lang/String;

    .line 57
    const-string v0, ","

    invoke-static {p1, v0}, Lorg/apache/shiro/util/StringUtils;->splitToSet(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/shiro/authz/permission/DomainPermission;->actions:Ljava/util/Set;

    .line 58
    const-string v0, ","

    invoke-static {p2, v0}, Lorg/apache/shiro/util/StringUtils;->splitToSet(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/shiro/authz/permission/DomainPermission;->targets:Ljava/util/Set;

    .line 59
    iget-object v0, p0, Lorg/apache/shiro/authz/permission/DomainPermission;->domain:Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/shiro/authz/permission/DomainPermission;->encodeParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method protected constructor <init>(Ljava/util/Set;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "actions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p2, "targets":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Lorg/apache/shiro/authz/permission/WildcardPermission;-><init>()V

    .line 63
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/shiro/authz/permission/DomainPermission;->getDomain(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/shiro/authz/permission/DomainPermission;->domain:Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lorg/apache/shiro/authz/permission/DomainPermission;->domain:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/shiro/authz/permission/DomainPermission;->setParts(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    .line 65
    return-void
.end method

.method private encodeParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "actions"    # Ljava/lang/String;
    .param p3, "targets"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-static {p1}, Lorg/apache/shiro/util/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 69
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "domain argument cannot be null or empty."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p2}, Lorg/apache/shiro/util/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 74
    invoke-static {p3}, Lorg/apache/shiro/util/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    :cond_1
    :goto_0
    invoke-static {p3}, Lorg/apache/shiro/util/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 81
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/shiro/authz/permission/DomainPermission;->setParts(Ljava/lang/String;)V

    .line 84
    return-void

    .line 78
    :cond_3
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public getActions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lorg/apache/shiro/authz/permission/DomainPermission;->actions:Ljava/util/Set;

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lorg/apache/shiro/authz/permission/DomainPermission;->domain:Ljava/lang/String;

    return-object v0
.end method

.method protected getDomain(Ljava/lang/Class;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/shiro/authz/permission/DomainPermission;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 96
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/shiro/authz/permission/DomainPermission;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "domain":Ljava/lang/String;
    const-string v2, "permission"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 99
    .local v1, "index":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 100
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 102
    :cond_0
    return-object v0
.end method

.method public getTargets()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lorg/apache/shiro/authz/permission/DomainPermission;->targets:Ljava/util/Set;

    return-object v0
.end method

.method protected setActions(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 122
    .local p1, "actions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/apache/shiro/authz/permission/DomainPermission;->actions:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/shiro/authz/permission/DomainPermission;->actions:Ljava/util/Set;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    :goto_0
    return-void

    .line 125
    :cond_0
    iput-object p1, p0, Lorg/apache/shiro/authz/permission/DomainPermission;->actions:Ljava/util/Set;

    .line 126
    iget-object v0, p0, Lorg/apache/shiro/authz/permission/DomainPermission;->domain:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/shiro/authz/permission/DomainPermission;->targets:Ljava/util/Set;

    invoke-virtual {p0, v0, p1, v1}, Lorg/apache/shiro/authz/permission/DomainPermission;->setParts(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    goto :goto_0
.end method

.method protected setDomain(Ljava/lang/String;)V
    .locals 2
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    .line 110
    iget-object v0, p0, Lorg/apache/shiro/authz/permission/DomainPermission;->domain:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/shiro/authz/permission/DomainPermission;->domain:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    :goto_0
    return-void

    .line 113
    :cond_0
    iput-object p1, p0, Lorg/apache/shiro/authz/permission/DomainPermission;->domain:Ljava/lang/String;

    .line 114
    iget-object v0, p0, Lorg/apache/shiro/authz/permission/DomainPermission;->actions:Ljava/util/Set;

    iget-object v1, p0, Lorg/apache/shiro/authz/permission/DomainPermission;->targets:Ljava/util/Set;

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/shiro/authz/permission/DomainPermission;->setParts(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    goto :goto_0
.end method

.method protected setParts(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V
    .locals 3
    .param p1, "domain"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p2, "actions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p3, "targets":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v2, ","

    invoke-static {p2, v2}, Lorg/apache/shiro/util/StringUtils;->toDelimitedString(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "actionsString":Ljava/lang/String;
    const-string v2, ","

    invoke-static {p3, v2}, Lorg/apache/shiro/util/StringUtils;->toDelimitedString(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, "targetsString":Ljava/lang/String;
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/shiro/authz/permission/DomainPermission;->encodeParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iput-object p1, p0, Lorg/apache/shiro/authz/permission/DomainPermission;->domain:Ljava/lang/String;

    .line 91
    iput-object p2, p0, Lorg/apache/shiro/authz/permission/DomainPermission;->actions:Ljava/util/Set;

    .line 92
    iput-object p3, p0, Lorg/apache/shiro/authz/permission/DomainPermission;->targets:Ljava/util/Set;

    .line 93
    return-void
.end method

.method protected setTargets(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    .local p1, "targets":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/apache/shiro/authz/permission/DomainPermission;->targets:Ljava/util/Set;

    .line 135
    iget-object v0, p0, Lorg/apache/shiro/authz/permission/DomainPermission;->targets:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/shiro/authz/permission/DomainPermission;->targets:Ljava/util/Set;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    :goto_0
    return-void

    .line 138
    :cond_0
    iput-object p1, p0, Lorg/apache/shiro/authz/permission/DomainPermission;->targets:Ljava/util/Set;

    .line 139
    iget-object v0, p0, Lorg/apache/shiro/authz/permission/DomainPermission;->domain:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/shiro/authz/permission/DomainPermission;->actions:Ljava/util/Set;

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/shiro/authz/permission/DomainPermission;->setParts(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    goto :goto_0
.end method
