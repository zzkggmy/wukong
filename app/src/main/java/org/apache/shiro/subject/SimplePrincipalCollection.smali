.class public Lorg/apache/shiro/subject/SimplePrincipalCollection;
.super Ljava/lang/Object;
.source "SimplePrincipalCollection.java"

# interfaces
.implements Lorg/apache/shiro/subject/MutablePrincipalCollection;


# static fields
.field private static final serialVersionUID:J = -0x5780a7da395cf7b6L


# instance fields
.field private transient cachedToString:Ljava/lang/String;

.field private realmPrincipals:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "principal"    # Ljava/lang/Object;
    .param p2, "realmName"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 57
    check-cast p1, Ljava/util/Collection;

    .end local p1    # "principal":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/shiro/subject/SimplePrincipalCollection;->addAll(Ljava/util/Collection;Ljava/lang/String;)V

    .line 61
    :goto_0
    return-void

    .line 59
    .restart local p1    # "principal":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/shiro/subject/SimplePrincipalCollection;->add(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/Collection;Ljava/lang/String;)V
    .locals 0
    .param p1, "principals"    # Ljava/util/Collection;
    .param p2, "realmName"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-virtual {p0, p1, p2}, Lorg/apache/shiro/subject/SimplePrincipalCollection;->addAll(Ljava/util/Collection;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Lorg/apache/shiro/subject/PrincipalCollection;)V
    .locals 0
    .param p1, "principals"    # Lorg/apache/shiro/subject/PrincipalCollection;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-virtual {p0, p1}, Lorg/apache/shiro/subject/SimplePrincipalCollection;->addAll(Lorg/apache/shiro/subject/PrincipalCollection;)V

    .line 69
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 295
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 296
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v0

    .line 297
    .local v0, "principalsExist":Z
    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iput-object v1, p0, Lorg/apache/shiro/subject/SimplePrincipalCollection;->realmPrincipals:Ljava/util/Map;

    .line 300
    :cond_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 274
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 275
    iget-object v1, p0, Lorg/apache/shiro/subject/SimplePrincipalCollection;->realmPrincipals:Ljava/util/Map;

    invoke-static {v1}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 276
    .local v0, "principalsExist":Z
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 277
    if-eqz v0, :cond_0

    .line 278
    iget-object v1, p0, Lorg/apache/shiro/subject/SimplePrincipalCollection;->realmPrincipals:Ljava/util/Map;

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 280
    :cond_0
    return-void

    .line 275
    .end local v0    # "principalsExist":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .param p1, "principal"    # Ljava/lang/Object;
    .param p2, "realmName"    # Ljava/lang/String;

    .prologue
    .line 100
    if-nez p2, :cond_0

    .line 101
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "realmName argument cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_0
    if-nez p1, :cond_1

    .line 104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "principal argument cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/shiro/subject/SimplePrincipalCollection;->cachedToString:Ljava/lang/String;

    .line 107
    invoke-virtual {p0, p2}, Lorg/apache/shiro/subject/SimplePrincipalCollection;->getPrincipalsLazy(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 108
    return-void
.end method

.method public addAll(Ljava/util/Collection;Ljava/lang/String;)V
    .locals 2
    .param p1, "principals"    # Ljava/util/Collection;
    .param p2, "realmName"    # Ljava/lang/String;

    .prologue
    .line 111
    if-nez p2, :cond_0

    .line 112
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "realmName argument cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_0
    if-nez p1, :cond_1

    .line 115
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "principals argument cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 118
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "principals argument cannot be an empty collection."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/shiro/subject/SimplePrincipalCollection;->cachedToString:Ljava/lang/String;

    .line 121
    invoke-virtual {p0, p2}, Lorg/apache/shiro/subject/SimplePrincipalCollection;->getPrincipalsLazy(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 122
    return-void
.end method

.method public addAll(Lorg/apache/shiro/subject/PrincipalCollection;)V
    .locals 5
    .param p1, "principals"    # Lorg/apache/shiro/subject/PrincipalCollection;

    .prologue
    .line 125
    invoke-interface {p1}, Lorg/apache/shiro/subject/PrincipalCollection;->getRealmNames()Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 126
    invoke-interface {p1}, Lorg/apache/shiro/subject/PrincipalCollection;->getRealmNames()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 127
    .local v3, "realmName":Ljava/lang/String;
    invoke-interface {p1, v3}, Lorg/apache/shiro/subject/PrincipalCollection;->fromRealm(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 128
    .local v2, "principal":Ljava/lang/Object;
    invoke-virtual {p0, v2, v3}, Lorg/apache/shiro/subject/SimplePrincipalCollection;->add(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 132
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "principal":Ljava/lang/Object;
    .end local v3    # "realmName":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public asList()Ljava/util/List;
    .locals 2

    .prologue
    .line 169
    invoke-virtual {p0}, Lorg/apache/shiro/subject/SimplePrincipalCollection;->asSet()Ljava/util/Set;

    move-result-object v0

    .line 170
    .local v0, "all":Ljava/util/Set;
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 173
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public asSet()Ljava/util/Set;
    .locals 5

    .prologue
    .line 177
    iget-object v4, p0, Lorg/apache/shiro/subject/SimplePrincipalCollection;->realmPrincipals:Ljava/util/Map;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/apache/shiro/subject/SimplePrincipalCollection;->realmPrincipals:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 178
    :cond_0
    sget-object v4, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 188
    :goto_0
    return-object v4

    .line 180
    :cond_1
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 181
    .local v0, "aggregated":Ljava/util/Set;
    iget-object v4, p0, Lorg/apache/shiro/subject/SimplePrincipalCollection;->realmPrincipals:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    .line 182
    .local v3, "values":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Set;>;"
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 183
    .local v2, "set":Ljava/util/Set;
    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 185
    .end local v2    # "set":Ljava/util/Set;
    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 186
    sget-object v4, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    goto :goto_0

    .line 188
    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    goto :goto_0
.end method

.method public byType(Ljava/lang/Class;)Ljava/util/Collection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 150
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v6, p0, Lorg/apache/shiro/subject/SimplePrincipalCollection;->realmPrincipals:Ljava/util/Map;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lorg/apache/shiro/subject/SimplePrincipalCollection;->realmPrincipals:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 151
    :cond_0
    sget-object v6, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 165
    :goto_0
    return-object v6

    .line 153
    :cond_1
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 154
    .local v4, "typed":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    iget-object v6, p0, Lorg/apache/shiro/subject/SimplePrincipalCollection;->realmPrincipals:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    .line 155
    .local v5, "values":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Set;>;"
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 156
    .local v3, "set":Ljava/util/Set;
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 157
    .local v2, "o":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 158
    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 162
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "o":Ljava/lang/Object;
    .end local v3    # "set":Ljava/util/Set;
    :cond_4
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 163
    sget-object v6, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    goto :goto_0

    .line 165
    :cond_5
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v6

    goto :goto_0
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 215
    iput-object v1, p0, Lorg/apache/shiro/subject/SimplePrincipalCollection;->cachedToString:Ljava/lang/String;

    .line 216
    iget-object v0, p0, Lorg/apache/shiro/subject/SimplePrincipalCollection;->realmPrincipals:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lorg/apache/shiro/subject/SimplePrincipalCollection;->realmPrincipals:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 218
    iput-object v1, p0, Lorg/apache/shiro/subject/SimplePrincipalCollection;->realmPrincipals:Ljava/util/Map;

    .line 220
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 227
    if-ne p1, p0, :cond_1

    .line 234
    :cond_0
    :goto_0
    return v1

    .line 230
    :cond_1
    instance-of v3, p1, Lorg/apache/shiro/subject/SimplePrincipalCollection;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 231
    check-cast v0, Lorg/apache/shiro/subject/SimplePrincipalCollection;

    .line 232
    .local v0, "other":Lorg/apache/shiro/subject/SimplePrincipalCollection;
    iget-object v3, p0, Lorg/apache/shiro/subject/SimplePrincipalCollection;->realmPrincipals:Ljava/util/Map;

    if-eqz v3, :cond_2

    iget-object v1, p0, Lorg/apache/shiro/subject/SimplePrincipalCollection;->realmPrincipals:Ljava/util/Map;

    iget-object v2, v0, Lorg/apache/shiro/subject/SimplePrincipalCollection;->realmPrincipals:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_2
    iget-object v3, v0, Lorg/apache/shiro/subject/SimplePrincipalCollection;->realmPrincipals:Ljava/util/Map;

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lorg/apache/shiro/subject/SimplePrincipalCollection;
    :cond_3
    move v1, v2

    .line 234
    goto :goto_0
.end method

.method public fromRealm(Ljava/lang/String;)Ljava/util/Collection;
    .locals 2
    .param p1, "realmName"    # Ljava/lang/String;

    .prologue
    .line 192
    iget-object v1, p0, Lorg/apache/shiro/subject/SimplePrincipalCollection;->realmPrincipals:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/shiro/subject/SimplePrincipalCollection;->realmPrincipals:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 193
    :cond_0
    sget-object v1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 199
    :goto_0
    return-object v1

    .line 195
    :cond_1
    iget-object v1, p0, Lorg/apache/shiro/subject/SimplePrincipalCollection;->realmPrincipals:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 196
    .local v0, "principals":Ljava/util/Set;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 197
    :cond_2
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 199
    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    goto :goto_0
.end method

.method public getPrimaryPrincipal()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0}, Lorg/apache/shiro/subject/SimplePrincipalCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    const/4 v0, 0x0

    .line 96
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/shiro/subject/SimplePrincipalCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected getPrincipalsLazy(Ljava/lang/String;)Ljava/util/Collection;
    .locals 2
    .param p1, "realmName"    # Ljava/lang/String;

    .prologue
    .line 72
    iget-object v1, p0, Lorg/apache/shiro/subject/SimplePrincipalCollection;->realmPrincipals:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 73
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/shiro/subject/SimplePrincipalCollection;->realmPrincipals:Ljava/util/Map;

    .line 75
    :cond_0
    iget-object v1, p0, Lorg/apache/shiro/subject/SimplePrincipalCollection;->realmPrincipals:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 76
    .local v0, "principals":Ljava/util/Set;
    if-nez v0, :cond_1

    .line 77
    new-instance v0, Ljava/util/LinkedHashSet;

    .end local v0    # "principals":Ljava/util/Set;
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 78
    .restart local v0    # "principals":Ljava/util/Set;
    iget-object v1, p0, Lorg/apache/shiro/subject/SimplePrincipalCollection;->realmPrincipals:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :cond_1
    return-object v0
.end method

.method public getRealmNames()Ljava/util/Set;
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
    .line 203
    iget-object v0, p0, Lorg/apache/shiro/subject/SimplePrincipalCollection;->realmPrincipals:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 204
    const/4 v0, 0x0

    .line 206
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/shiro/subject/SimplePrincipalCollection;->realmPrincipals:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lorg/apache/shiro/subject/SimplePrincipalCollection;->realmPrincipals:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/shiro/subject/SimplePrincipalCollection;->realmPrincipals:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    iget-object v0, p0, Lorg/apache/shiro/subject/SimplePrincipalCollection;->realmPrincipals:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 241
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lorg/apache/shiro/subject/SimplePrincipalCollection;->realmPrincipals:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/shiro/subject/SimplePrincipalCollection;->realmPrincipals:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 223
    invoke-virtual {p0}, Lorg/apache/shiro/subject/SimplePrincipalCollection;->asSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public oneByType(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v5, 0x0

    .line 135
    iget-object v6, p0, Lorg/apache/shiro/subject/SimplePrincipalCollection;->realmPrincipals:Ljava/util/Map;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lorg/apache/shiro/subject/SimplePrincipalCollection;->realmPrincipals:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    move-object v2, v5

    .line 146
    :goto_0
    return-object v2

    .line 138
    :cond_1
    iget-object v6, p0, Lorg/apache/shiro/subject/SimplePrincipalCollection;->realmPrincipals:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    .line 139
    .local v4, "values":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Set;>;"
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 140
    .local v3, "set":Ljava/util/Set;
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 141
    .local v2, "o":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_0

    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "o":Ljava/lang/Object;
    .end local v3    # "set":Ljava/util/Set;
    :cond_4
    move-object v2, v5

    .line 146
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 251
    iget-object v1, p0, Lorg/apache/shiro/subject/SimplePrincipalCollection;->cachedToString:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 252
    invoke-virtual {p0}, Lorg/apache/shiro/subject/SimplePrincipalCollection;->asSet()Ljava/util/Set;

    move-result-object v0

    .line 253
    .local v0, "principals":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    invoke-static {v0}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 254
    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/shiro/util/StringUtils;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/shiro/subject/SimplePrincipalCollection;->cachedToString:Ljava/lang/String;

    .line 259
    .end local v0    # "principals":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/apache/shiro/subject/SimplePrincipalCollection;->cachedToString:Ljava/lang/String;

    return-object v1

    .line 256
    .restart local v0    # "principals":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    :cond_1
    const-string v1, "empty"

    iput-object v1, p0, Lorg/apache/shiro/subject/SimplePrincipalCollection;->cachedToString:Ljava/lang/String;

    goto :goto_0
.end method
