.class public Lorg/apache/shiro/util/SoftHashMap;
.super Ljava/lang/Object;
.source "SoftHashMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/shiro/util/SoftHashMap$1;,
        Lorg/apache/shiro/util/SoftHashMap$SoftValue;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_RETENTION_SIZE:I = 0x64


# instance fields
.field private final RETENTION_SIZE:I

.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;",
            "Lorg/apache/shiro/util/SoftHashMap$SoftValue",
            "<TV;TK;>;>;"
        }
    .end annotation
.end field

.field private final queue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<-TV;>;"
        }
    .end annotation
.end field

.field private final strongReferences:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<TV;>;"
        }
    .end annotation
.end field

.field private final strongReferencesLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 83
    .local p0, "this":Lorg/apache/shiro/util/SoftHashMap;, "Lorg/apache/shiro/util/SoftHashMap<TK;TV;>;"
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lorg/apache/shiro/util/SoftHashMap;-><init>(I)V

    .line 84
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "retentionSize"    # I

    .prologue
    .line 103
    .local p0, "this":Lorg/apache/shiro/util/SoftHashMap;, "Lorg/apache/shiro/util/SoftHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/apache/shiro/util/SoftHashMap;->RETENTION_SIZE:I

    .line 105
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/shiro/util/SoftHashMap;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 106
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/apache/shiro/util/SoftHashMap;->strongReferencesLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 107
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/shiro/util/SoftHashMap;->map:Ljava/util/Map;

    .line 108
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/shiro/util/SoftHashMap;->strongReferences:Ljava/util/Queue;

    .line 109
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p0, "this":Lorg/apache/shiro/util/SoftHashMap;, "Lorg/apache/shiro/util/SoftHashMap<TK;TV;>;"
    .local p1, "source":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lorg/apache/shiro/util/SoftHashMap;-><init>(I)V

    .line 120
    invoke-virtual {p0, p1}, Lorg/apache/shiro/util/SoftHashMap;->putAll(Ljava/util/Map;)V

    .line 121
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;I)V
    .locals 0
    .param p2, "retentionSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;TV;>;I)V"
        }
    .end annotation

    .prologue
    .line 140
    .local p0, "this":Lorg/apache/shiro/util/SoftHashMap;, "Lorg/apache/shiro/util/SoftHashMap<TK;TV;>;"
    .local p1, "source":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-direct {p0, p2}, Lorg/apache/shiro/util/SoftHashMap;-><init>(I)V

    .line 141
    invoke-virtual {p0, p1}, Lorg/apache/shiro/util/SoftHashMap;->putAll(Ljava/util/Map;)V

    .line 142
    return-void
.end method

.method private addToStrongReferences(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 166
    .local p0, "this":Lorg/apache/shiro/util/SoftHashMap;, "Lorg/apache/shiro/util/SoftHashMap<TK;TV;>;"
    .local p1, "result":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/shiro/util/SoftHashMap;->strongReferencesLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 168
    :try_start_0
    iget-object v0, p0, Lorg/apache/shiro/util/SoftHashMap;->strongReferences:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 169
    invoke-direct {p0}, Lorg/apache/shiro/util/SoftHashMap;->trimStrongReferencesIfNecessary()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    iget-object v0, p0, Lorg/apache/shiro/util/SoftHashMap;->strongReferencesLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 174
    return-void

    .line 171
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/shiro/util/SoftHashMap;->strongReferencesLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private processQueue()V
    .locals 3

    .prologue
    .line 191
    .local p0, "this":Lorg/apache/shiro/util/SoftHashMap;, "Lorg/apache/shiro/util/SoftHashMap<TK;TV;>;"
    :goto_0
    iget-object v1, p0, Lorg/apache/shiro/util/SoftHashMap;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lorg/apache/shiro/util/SoftHashMap$SoftValue;

    .local v0, "sv":Lorg/apache/shiro/util/SoftHashMap$SoftValue;
    if-eqz v0, :cond_0

    .line 193
    iget-object v1, p0, Lorg/apache/shiro/util/SoftHashMap;->map:Ljava/util/Map;

    invoke-static {v0}, Lorg/apache/shiro/util/SoftHashMap$SoftValue;->access$000(Lorg/apache/shiro/util/SoftHashMap$SoftValue;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 195
    :cond_0
    return-void
.end method

.method private trimStrongReferencesIfNecessary()V
    .locals 2

    .prologue
    .line 180
    .local p0, "this":Lorg/apache/shiro/util/SoftHashMap;, "Lorg/apache/shiro/util/SoftHashMap<TK;TV;>;"
    :goto_0
    iget-object v0, p0, Lorg/apache/shiro/util/SoftHashMap;->strongReferences:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    iget v1, p0, Lorg/apache/shiro/util/SoftHashMap;->RETENTION_SIZE:I

    if-le v0, v1, :cond_0

    .line 181
    iget-object v0, p0, Lorg/apache/shiro/util/SoftHashMap;->strongReferences:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    goto :goto_0

    .line 183
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 263
    .local p0, "this":Lorg/apache/shiro/util/SoftHashMap;, "Lorg/apache/shiro/util/SoftHashMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/shiro/util/SoftHashMap;->strongReferencesLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 265
    :try_start_0
    iget-object v0, p0, Lorg/apache/shiro/util/SoftHashMap;->strongReferences:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    iget-object v0, p0, Lorg/apache/shiro/util/SoftHashMap;->strongReferencesLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 269
    invoke-direct {p0}, Lorg/apache/shiro/util/SoftHashMap;->processQueue()V

    .line 270
    iget-object v0, p0, Lorg/apache/shiro/util/SoftHashMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 271
    return-void

    .line 267
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/shiro/util/SoftHashMap;->strongReferencesLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 203
    .local p0, "this":Lorg/apache/shiro/util/SoftHashMap;, "Lorg/apache/shiro/util/SoftHashMap<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/shiro/util/SoftHashMap;->processQueue()V

    .line 204
    iget-object v0, p0, Lorg/apache/shiro/util/SoftHashMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 208
    .local p0, "this":Lorg/apache/shiro/util/SoftHashMap;, "Lorg/apache/shiro/util/SoftHashMap<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/shiro/util/SoftHashMap;->processQueue()V

    .line 209
    invoke-virtual {p0}, Lorg/apache/shiro/util/SoftHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 210
    .local v0, "values":Ljava/util/Collection;
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 279
    .local p0, "this":Lorg/apache/shiro/util/SoftHashMap;, "Lorg/apache/shiro/util/SoftHashMap<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/shiro/util/SoftHashMap;->processQueue()V

    .line 280
    iget-object v5, p0, Lorg/apache/shiro/util/SoftHashMap;->map:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 281
    .local v2, "keys":Ljava/util/Collection;, "Ljava/util/Collection<TK;>;"
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 283
    sget-object v5, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 293
    :goto_0
    return-object v5

    .line 286
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 287
    .local v3, "kvPairs":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 288
    .local v1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v1}, Lorg/apache/shiro/util/SoftHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 289
    .local v4, "v":Ljava/lang/Object;, "TV;"
    if-eqz v4, :cond_1

    .line 290
    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 293
    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    .end local v4    # "v":Ljava/lang/Object;, "TV;"
    :cond_2
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 145
    .local p0, "this":Lorg/apache/shiro/util/SoftHashMap;, "Lorg/apache/shiro/util/SoftHashMap<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/shiro/util/SoftHashMap;->processQueue()V

    .line 147
    const/4 v0, 0x0

    .line 148
    .local v0, "result":Ljava/lang/Object;, "TV;"
    iget-object v2, p0, Lorg/apache/shiro/util/SoftHashMap;->map:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/shiro/util/SoftHashMap$SoftValue;

    .line 150
    .local v1, "value":Lorg/apache/shiro/util/SoftHashMap$SoftValue;, "Lorg/apache/shiro/util/SoftHashMap$SoftValue<TV;TK;>;"
    if-eqz v1, :cond_0

    .line 152
    invoke-virtual {v1}, Lorg/apache/shiro/util/SoftHashMap$SoftValue;->get()Ljava/lang/Object;

    move-result-object v0

    .line 153
    if-nez v0, :cond_1

    .line 156
    iget-object v2, p0, Lorg/apache/shiro/util/SoftHashMap;->map:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .end local v0    # "result":Ljava/lang/Object;, "TV;"
    :cond_0
    :goto_0
    return-object v0

    .line 159
    .restart local v0    # "result":Ljava/lang/Object;, "TV;"
    :cond_1
    invoke-direct {p0, v0}, Lorg/apache/shiro/util/SoftHashMap;->addToStrongReferences(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 198
    .local p0, "this":Lorg/apache/shiro/util/SoftHashMap;, "Lorg/apache/shiro/util/SoftHashMap<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/shiro/util/SoftHashMap;->processQueue()V

    .line 199
    iget-object v0, p0, Lorg/apache/shiro/util/SoftHashMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 224
    .local p0, "this":Lorg/apache/shiro/util/SoftHashMap;, "Lorg/apache/shiro/util/SoftHashMap<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/shiro/util/SoftHashMap;->processQueue()V

    .line 225
    iget-object v0, p0, Lorg/apache/shiro/util/SoftHashMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/shiro/util/SoftHashMap;, "Lorg/apache/shiro/util/SoftHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v2, 0x0

    .line 249
    invoke-direct {p0}, Lorg/apache/shiro/util/SoftHashMap;->processQueue()V

    .line 250
    new-instance v1, Lorg/apache/shiro/util/SoftHashMap$SoftValue;

    iget-object v3, p0, Lorg/apache/shiro/util/SoftHashMap;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, p2, p1, v3, v2}, Lorg/apache/shiro/util/SoftHashMap$SoftValue;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;Lorg/apache/shiro/util/SoftHashMap$1;)V

    .line 251
    .local v1, "sv":Lorg/apache/shiro/util/SoftHashMap$SoftValue;, "Lorg/apache/shiro/util/SoftHashMap$SoftValue<TV;TK;>;"
    iget-object v3, p0, Lorg/apache/shiro/util/SoftHashMap;->map:Ljava/util/Map;

    invoke-interface {v3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/shiro/util/SoftHashMap$SoftValue;

    .line 252
    .local v0, "previous":Lorg/apache/shiro/util/SoftHashMap$SoftValue;, "Lorg/apache/shiro/util/SoftHashMap$SoftValue<TV;TK;>;"
    invoke-direct {p0, p2}, Lorg/apache/shiro/util/SoftHashMap;->addToStrongReferences(Ljava/lang/Object;)V

    .line 253
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/shiro/util/SoftHashMap$SoftValue;->get()Ljava/lang/Object;

    move-result-object v2

    :cond_0
    return-object v2
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 214
    .local p0, "this":Lorg/apache/shiro/util/SoftHashMap;, "Lorg/apache/shiro/util/SoftHashMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 215
    :cond_0
    invoke-direct {p0}, Lorg/apache/shiro/util/SoftHashMap;->processQueue()V

    .line 221
    :cond_1
    return-void

    .line 218
    :cond_2
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 219
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/apache/shiro/util/SoftHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 257
    .local p0, "this":Lorg/apache/shiro/util/SoftHashMap;, "Lorg/apache/shiro/util/SoftHashMap<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/shiro/util/SoftHashMap;->processQueue()V

    .line 258
    iget-object v1, p0, Lorg/apache/shiro/util/SoftHashMap;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/shiro/util/SoftHashMap$SoftValue;

    .line 259
    .local v0, "raw":Lorg/apache/shiro/util/SoftHashMap$SoftValue;, "Lorg/apache/shiro/util/SoftHashMap$SoftValue<TV;TK;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/shiro/util/SoftHashMap$SoftValue;->get()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 274
    .local p0, "this":Lorg/apache/shiro/util/SoftHashMap;, "Lorg/apache/shiro/util/SoftHashMap<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/shiro/util/SoftHashMap;->processQueue()V

    .line 275
    iget-object v0, p0, Lorg/apache/shiro/util/SoftHashMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 229
    .local p0, "this":Lorg/apache/shiro/util/SoftHashMap;, "Lorg/apache/shiro/util/SoftHashMap<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/shiro/util/SoftHashMap;->processQueue()V

    .line 230
    iget-object v5, p0, Lorg/apache/shiro/util/SoftHashMap;->map:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 231
    .local v2, "keys":Ljava/util/Collection;, "Ljava/util/Collection<TK;>;"
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 233
    sget-object v4, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 242
    :cond_0
    return-object v4

    .line 235
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 236
    .local v4, "values":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 237
    .local v1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v1}, Lorg/apache/shiro/util/SoftHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 238
    .local v3, "v":Ljava/lang/Object;, "TV;"
    if-eqz v3, :cond_2

    .line 239
    invoke-interface {v4, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
