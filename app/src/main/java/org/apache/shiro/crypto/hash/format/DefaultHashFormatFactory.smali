.class public Lorg/apache/shiro/crypto/hash/format/DefaultHashFormatFactory;
.super Ljava/lang/Object;
.source "DefaultHashFormatFactory.java"

# interfaces
.implements Lorg/apache/shiro/crypto/hash/format/HashFormatFactory;


# instance fields
.field private formatClassNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private searchPackages:Ljava/util/Set;
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
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/shiro/crypto/hash/format/DefaultHashFormatFactory;->searchPackages:Ljava/util/Set;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/shiro/crypto/hash/format/DefaultHashFormatFactory;->formatClassNames:Ljava/util/Map;

    .line 46
    return-void
.end method


# virtual methods
.method protected final assertHashFormatImpl(Ljava/lang/Class;)V
    .locals 3
    .param p1, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 343
    const-class v0, Lorg/apache/shiro/crypto/hash/format/HashFormat;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 344
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Discovered class ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is not a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lorg/apache/shiro/crypto/hash/format/HashFormat;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " implementation."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    :cond_1
    return-void
.end method

.method public getFormatClassNames()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lorg/apache/shiro/crypto/hash/format/DefaultHashFormatFactory;->formatClassNames:Ljava/util/Map;

    return-object v0
.end method

.method protected getHashFormatClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 6
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 184
    const/4 v0, 0x0

    .line 188
    .local v0, "clazz":Ljava/lang/Class;
    iget-object v5, p0, Lorg/apache/shiro/crypto/hash/format/DefaultHashFormatFactory;->formatClassNames:Ljava/util/Map;

    if-eqz v5, :cond_0

    .line 189
    iget-object v5, p0, Lorg/apache/shiro/crypto/hash/format/DefaultHashFormatFactory;->formatClassNames:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 190
    .local v4, "value":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 192
    invoke-virtual {p0, v4}, Lorg/apache/shiro/crypto/hash/format/DefaultHashFormatFactory;->lookupHashFormatClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 197
    .end local v4    # "value":Ljava/lang/String;
    :cond_0
    if-nez v0, :cond_1

    .line 198
    invoke-static {p1}, Lorg/apache/shiro/crypto/hash/format/ProvidedHashFormat;->byId(Ljava/lang/String;)Lorg/apache/shiro/crypto/hash/format/ProvidedHashFormat;

    move-result-object v3

    .line 199
    .local v3, "provided":Lorg/apache/shiro/crypto/hash/format/ProvidedHashFormat;
    if-eqz v3, :cond_1

    .line 200
    invoke-virtual {v3}, Lorg/apache/shiro/crypto/hash/format/ProvidedHashFormat;->getHashFormatClass()Ljava/lang/Class;

    move-result-object v0

    .line 204
    .end local v3    # "provided":Lorg/apache/shiro/crypto/hash/format/ProvidedHashFormat;
    :cond_1
    if-nez v0, :cond_2

    .line 206
    invoke-virtual {p0, p1}, Lorg/apache/shiro/crypto/hash/format/DefaultHashFormatFactory;->lookupHashFormatClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 209
    :cond_2
    if-nez v0, :cond_4

    .line 211
    iget-object v5, p0, Lorg/apache/shiro/crypto/hash/format/DefaultHashFormatFactory;->searchPackages:Ljava/util/Set;

    if-eqz v5, :cond_4

    .line 212
    iget-object v5, p0, Lorg/apache/shiro/crypto/hash/format/DefaultHashFormatFactory;->searchPackages:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 213
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {p0, v2, p1}, Lorg/apache/shiro/crypto/hash/format/DefaultHashFormatFactory;->getHashFormatClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 214
    if-eqz v0, :cond_3

    .line 222
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_4
    if-eqz v0, :cond_5

    .line 223
    invoke-virtual {p0, v0}, Lorg/apache/shiro/crypto/hash/format/DefaultHashFormatFactory;->assertHashFormatImpl(Ljava/lang/Class;)V

    .line 226
    :cond_5
    return-object v0
.end method

.method protected getHashFormatClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;

    .prologue
    .line 282
    move-object v2, p2

    .line 283
    .local v2, "test":Ljava/lang/String;
    const/4 v0, 0x0

    .line 284
    .local v0, "clazz":Ljava/lang/Class;
    if-nez p1, :cond_7

    const-string v1, ""

    .line 287
    .local v1, "pkg":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v2}, Lorg/apache/shiro/crypto/hash/format/DefaultHashFormatFactory;->lookupHashFormatClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 289
    if-nez v0, :cond_0

    .line 290
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 291
    invoke-virtual {p0, v2}, Lorg/apache/shiro/crypto/hash/format/DefaultHashFormatFactory;->lookupHashFormatClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 294
    :cond_0
    if-nez v0, :cond_1

    .line 295
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Lorg/apache/shiro/util/StringUtils;->uppercaseFirstChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Format"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 296
    invoke-virtual {p0, v2}, Lorg/apache/shiro/crypto/hash/format/DefaultHashFormatFactory;->lookupHashFormatClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 299
    :cond_1
    if-nez v0, :cond_2

    .line 300
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Format"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 301
    invoke-virtual {p0, v2}, Lorg/apache/shiro/crypto/hash/format/DefaultHashFormatFactory;->lookupHashFormatClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 304
    :cond_2
    if-nez v0, :cond_3

    .line 305
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Lorg/apache/shiro/util/StringUtils;->uppercaseFirstChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "HashFormat"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 306
    invoke-virtual {p0, v2}, Lorg/apache/shiro/crypto/hash/format/DefaultHashFormatFactory;->lookupHashFormatClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 309
    :cond_3
    if-nez v0, :cond_4

    .line 310
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "HashFormat"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 311
    invoke-virtual {p0, v2}, Lorg/apache/shiro/crypto/hash/format/DefaultHashFormatFactory;->lookupHashFormatClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 314
    :cond_4
    if-nez v0, :cond_5

    .line 315
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Lorg/apache/shiro/util/StringUtils;->uppercaseFirstChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "CryptFormat"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 316
    invoke-virtual {p0, v2}, Lorg/apache/shiro/crypto/hash/format/DefaultHashFormatFactory;->lookupHashFormatClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 319
    :cond_5
    if-nez v0, :cond_6

    .line 320
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "CryptFormat"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 321
    invoke-virtual {p0, v2}, Lorg/apache/shiro/crypto/hash/format/DefaultHashFormatFactory;->lookupHashFormatClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 324
    :cond_6
    if-nez v0, :cond_8

    .line 325
    const/4 v0, 0x0

    .line 330
    .end local v0    # "clazz":Ljava/lang/Class;
    :goto_1
    return-object v0

    .end local v1    # "pkg":Ljava/lang/String;
    .restart local v0    # "clazz":Ljava/lang/Class;
    :cond_7
    move-object v1, p1

    .line 284
    goto/16 :goto_0

    .line 328
    .restart local v1    # "pkg":Ljava/lang/String;
    :cond_8
    invoke-virtual {p0, v0}, Lorg/apache/shiro/crypto/hash/format/DefaultHashFormatFactory;->assertHashFormatImpl(Ljava/lang/Class;)V

    goto :goto_1
.end method

.method public getInstance(Ljava/lang/String;)Lorg/apache/shiro/crypto/hash/format/HashFormat;
    .locals 7
    .param p1, "in"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 115
    if-nez p1, :cond_1

    move-object v1, v5

    .line 148
    :cond_0
    :goto_0
    return-object v1

    .line 119
    :cond_1
    const/4 v1, 0x0

    .line 120
    .local v1, "hashFormat":Lorg/apache/shiro/crypto/hash/format/HashFormat;
    const/4 v0, 0x0

    .line 125
    .local v0, "clazz":Ljava/lang/Class;
    const-string v6, "$"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 128
    const-string v6, "$"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 129
    .local v3, "test":Ljava/lang/String;
    const-string v6, "\\$"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 131
    .local v4, "tokens":[Ljava/lang/String;
    if-eqz v4, :cond_4

    array-length v6, v4

    if-lez v6, :cond_4

    const/4 v5, 0x0

    aget-object v2, v4, v5

    .line 132
    .local v2, "possibleMcfId":Ljava/lang/String;
    :goto_1
    if-eqz v2, :cond_2

    .line 134
    invoke-virtual {p0, v2}, Lorg/apache/shiro/crypto/hash/format/DefaultHashFormatFactory;->getHashFormatClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 138
    .end local v2    # "possibleMcfId":Ljava/lang/String;
    .end local v3    # "test":Ljava/lang/String;
    .end local v4    # "tokens":[Ljava/lang/String;
    :cond_2
    if-nez v0, :cond_3

    .line 140
    invoke-virtual {p0, p1}, Lorg/apache/shiro/crypto/hash/format/DefaultHashFormatFactory;->getHashFormatClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 143
    :cond_3
    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p0, v0}, Lorg/apache/shiro/crypto/hash/format/DefaultHashFormatFactory;->newHashFormatInstance(Ljava/lang/Class;)Lorg/apache/shiro/crypto/hash/format/HashFormat;

    move-result-object v1

    goto :goto_0

    .restart local v3    # "test":Ljava/lang/String;
    .restart local v4    # "tokens":[Ljava/lang/String;
    :cond_4
    move-object v2, v5

    .line 131
    goto :goto_1
.end method

.method public getSearchPackages()Ljava/util/Set;
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
    .line 97
    iget-object v0, p0, Lorg/apache/shiro/crypto/hash/format/DefaultHashFormatFactory;->searchPackages:Ljava/util/Set;

    return-object v0
.end method

.method protected lookupHashFormatClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 335
    :try_start_0
    invoke-static {p1}, Lorg/apache/shiro/util/ClassUtils;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Lorg/apache/shiro/util/UnknownClassException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 339
    :goto_0
    return-object v0

    .line 336
    :catch_0
    move-exception v0

    .line 339
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final newHashFormatInstance(Ljava/lang/Class;)Lorg/apache/shiro/crypto/hash/format/HashFormat;
    .locals 1
    .param p1, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 351
    invoke-virtual {p0, p1}, Lorg/apache/shiro/crypto/hash/format/DefaultHashFormatFactory;->assertHashFormatImpl(Ljava/lang/Class;)V

    .line 352
    invoke-static {p1}, Lorg/apache/shiro/util/ClassUtils;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/shiro/crypto/hash/format/HashFormat;

    return-object v0
.end method

.method public setFormatClassNames(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "formatClassNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/apache/shiro/crypto/hash/format/DefaultHashFormatFactory;->formatClassNames:Ljava/util/Map;

    .line 83
    return-void
.end method

.method public setSearchPackages(Ljava/util/Set;)V
    .locals 0
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
    .line 111
    .local p1, "searchPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/apache/shiro/crypto/hash/format/DefaultHashFormatFactory;->searchPackages:Ljava/util/Set;

    .line 112
    return-void
.end method
