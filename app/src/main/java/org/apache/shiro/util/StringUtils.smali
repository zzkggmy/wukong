.class public Lorg/apache/shiro/util/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# static fields
.field public static final DEFAULT_DELIMITER_CHAR:C = ','

.field public static final DEFAULT_QUOTE_CHAR:C = '\"'

.field public static final EMPTY_STRING:Ljava/lang/String; = ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clean(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "in"    # Ljava/lang/String;

    .prologue
    .line 145
    move-object v0, p0

    .line 147
    .local v0, "out":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 148
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 149
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    const/4 v0, 0x0

    .line 154
    :cond_0
    return-object v0
.end method

.method public static hasLength(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 98
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasText(Ljava/lang/String;)Z
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 70
    invoke-static {p0}, Lorg/apache/shiro/util/StringUtils;->hasLength(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 79
    :cond_0
    :goto_0
    return v2

    .line 73
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 74
    .local v1, "strLen":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 75
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_2

    .line 76
    const/4 v2, 0x1

    goto :goto_0

    .line 74
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static join(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "separator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 430
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    const-string v1, ""

    .line 433
    .local v1, "empty":Ljava/lang/String;
    if-nez p0, :cond_0

    .line 434
    const/4 v4, 0x0

    .line 459
    :goto_0
    return-object v4

    .line 436
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 437
    const-string v4, ""

    goto :goto_0

    .line 439
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 440
    .local v2, "first":Ljava/lang/Object;
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 441
    if-nez v2, :cond_2

    const-string v4, ""

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 445
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v4, 0x100

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 446
    .local v0, "buf":Ljava/lang/StringBuilder;
    if-eqz v2, :cond_4

    .line 447
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 450
    :cond_4
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 451
    if-eqz p1, :cond_5

    .line 452
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 455
    .local v3, "obj":Ljava/lang/Object;
    if-eqz v3, :cond_4

    .line 456
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 459
    .end local v3    # "obj":Ljava/lang/Object;
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static split(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "line"    # Ljava/lang/String;

    .prologue
    .line 326
    const/16 v0, 0x2c

    invoke-static {p0, v0}, Lorg/apache/shiro/util/StringUtils;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static split(Ljava/lang/String;C)[Ljava/lang/String;
    .locals 1
    .param p0, "line"    # Ljava/lang/String;
    .param p1, "delimiter"    # C

    .prologue
    .line 330
    const/16 v0, 0x22

    invoke-static {p0, p1, v0}, Lorg/apache/shiro/util/StringUtils;->split(Ljava/lang/String;CC)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static split(Ljava/lang/String;CC)[Ljava/lang/String;
    .locals 1
    .param p0, "line"    # Ljava/lang/String;
    .param p1, "delimiter"    # C
    .param p2, "quoteChar"    # C

    .prologue
    .line 334
    invoke-static {p0, p1, p2, p2}, Lorg/apache/shiro/util/StringUtils;->split(Ljava/lang/String;CCC)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static split(Ljava/lang/String;CCC)[Ljava/lang/String;
    .locals 6
    .param p0, "line"    # Ljava/lang/String;
    .param p1, "delimiter"    # C
    .param p2, "beginQuoteChar"    # C
    .param p3, "endQuoteChar"    # C

    .prologue
    .line 338
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lorg/apache/shiro/util/StringUtils;->split(Ljava/lang/String;CCCZZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static split(Ljava/lang/String;CCCZZ)[Ljava/lang/String;
    .locals 9
    .param p0, "aLine"    # Ljava/lang/String;
    .param p1, "delimiter"    # C
    .param p2, "beginQuoteChar"    # C
    .param p3, "endQuoteChar"    # C
    .param p4, "retainQuotes"    # Z
    .param p5, "trimTokens"    # Z

    .prologue
    .line 363
    invoke-static {p0}, Lorg/apache/shiro/util/StringUtils;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 364
    .local v3, "line":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 365
    const/4 v7, 0x0

    .line 412
    :goto_0
    return-object v7

    .line 368
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 369
    .local v6, "tokens":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 370
    .local v5, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 372
    .local v2, "inQuotes":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v1, v7, :cond_9

    .line 374
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 375
    .local v0, "c":C
    if-ne v0, p2, :cond_4

    .line 378
    if-eqz v2, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v8, v1, 0x1

    if-le v7, v8, :cond_2

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, p2, :cond_2

    .line 383
    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 384
    add-int/lit8 v1, v1, 0x1

    .line 372
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 386
    :cond_2
    if-nez v2, :cond_3

    const/4 v2, 0x1

    .line 387
    :goto_3
    if-eqz p4, :cond_1

    .line 388
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 386
    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    .line 391
    :cond_4
    if-ne v0, p3, :cond_6

    .line 392
    if-nez v2, :cond_5

    const/4 v2, 0x1

    .line 393
    :goto_4
    if-eqz p4, :cond_1

    .line 394
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 392
    :cond_5
    const/4 v2, 0x0

    goto :goto_4

    .line 396
    :cond_6
    if-ne v0, p1, :cond_8

    if-nez v2, :cond_8

    .line 397
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 398
    .local v4, "s":Ljava/lang/String;
    if-eqz p5, :cond_7

    .line 399
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 401
    :cond_7
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5    # "sb":Ljava/lang/StringBuilder;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 403
    .restart local v5    # "sb":Ljava/lang/StringBuilder;
    goto :goto_2

    .line 404
    .end local v4    # "s":Ljava/lang/String;
    :cond_8
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 407
    .end local v0    # "c":C
    :cond_9
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 408
    .restart local v4    # "s":Ljava/lang/String;
    if-eqz p5, :cond_a

    .line 409
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 411
    :cond_a
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public static splitKeyValue(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .param p0, "aLine"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 289
    invoke-static {p0}, Lorg/apache/shiro/util/StringUtils;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, "line":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 291
    const/4 v2, 0x0

    .line 322
    :cond_0
    return-object v2

    .line 293
    :cond_1
    const-string v3, " "

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 294
    .local v2, "split":[Ljava/lang/String;
    array-length v3, v2

    if-eq v3, v4, :cond_2

    .line 296
    const-string v3, "="

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 297
    array-length v3, v2

    if-eq v3, v4, :cond_2

    .line 298
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to determine Key/Value pair from line ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "].  There is no space from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "which the split location could be determined."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 300
    .local v1, "msg":Ljava/lang/String;
    new-instance v3, Ljava/text/ParseException;

    invoke-direct {v3, v1, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 305
    .end local v1    # "msg":Ljava/lang/String;
    :cond_2
    aget-object v3, v2, v5

    invoke-static {v3}, Lorg/apache/shiro/util/StringUtils;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 306
    aget-object v3, v2, v6

    invoke-static {v3}, Lorg/apache/shiro/util/StringUtils;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 307
    aget-object v3, v2, v6

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 310
    aget-object v3, v2, v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/shiro/util/StringUtils;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 313
    :cond_3
    aget-object v3, v2, v5

    if-nez v3, :cond_4

    .line 314
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No valid key could be found in line ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] to form a key/value pair."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 315
    .restart local v1    # "msg":Ljava/lang/String;
    new-instance v3, Ljava/text/ParseException;

    invoke-direct {v3, v1, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 317
    .end local v1    # "msg":Ljava/lang/String;
    :cond_4
    aget-object v3, v2, v6

    if-nez v3, :cond_0

    .line 318
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No corresponding value could be found in line ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] for key ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 319
    .restart local v1    # "msg":Ljava/lang/String;
    new-instance v3, Ljava/text/ParseException;

    invoke-direct {v3, v1, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3
.end method

.method public static splitToSet(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .param p0, "delimited"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 474
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 475
    :cond_0
    const/4 v1, 0x0

    .line 478
    :goto_0
    return-object v1

    .line 477
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {p0, v1}, Lorg/apache/shiro/util/StringUtils;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v0

    .line 478
    .local v0, "split":[Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/shiro/util/CollectionUtils;->asSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    goto :goto_0
.end method

.method public static startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 114
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 125
    :cond_0
    :goto_0
    return v2

    .line 117
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 118
    const/4 v2, 0x1

    goto :goto_0

    .line 120
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 123
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, "lcStr":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "lcPrefix":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public static toDelimitedString(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "c"    # Ljava/util/Collection;
    .param p1, "delimiter"    # Ljava/lang/String;

    .prologue
    .line 201
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    :cond_0
    const-string v0, ""

    .line 204
    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/shiro/util/StringUtils;->join(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static toDelimitedString([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "delimiter"    # Ljava/lang/String;

    .prologue
    .line 178
    if-eqz p0, :cond_0

    array-length v2, p0

    if-nez v2, :cond_1

    .line 179
    :cond_0
    const-string v2, ""

    .line 188
    :goto_0
    return-object v2

    .line 181
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 183
    if-lez v0, :cond_2

    .line 184
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    :cond_2
    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 182
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 188
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static toString([Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "array"    # [Ljava/lang/Object;

    .prologue
    .line 165
    const-string v0, ","

    invoke-static {p0, v0}, Lorg/apache/shiro/util/StringUtils;->toDelimitedString([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toStringArray(Ljava/util/Collection;)[Ljava/lang/String;
    .locals 1
    .param p0, "collection"    # Ljava/util/Collection;

    .prologue
    .line 282
    if-nez p0, :cond_0

    .line 283
    const/4 v0, 0x0

    .line 285
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public static tokenizeToStringArray(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "delimiters"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 225
    invoke-static {p0, p1, v0, v0}, Lorg/apache/shiro/util/StringUtils;->tokenizeToStringArray(Ljava/lang/String;Ljava/lang/String;ZZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static tokenizeToStringArray(Ljava/lang/String;Ljava/lang/String;ZZ)[Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "delimiters"    # Ljava/lang/String;
    .param p2, "trimTokens"    # Z
    .param p3, "ignoreEmptyTokens"    # Z

    .prologue
    .line 253
    if-nez p0, :cond_0

    .line 254
    const/4 v3, 0x0

    .line 267
    :goto_0
    return-object v3

    .line 256
    :cond_0
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, p0, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    .local v0, "st":Ljava/util/StringTokenizer;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 258
    .local v2, "tokens":Ljava/util/List;
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 259
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 260
    .local v1, "token":Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 261
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 263
    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 264
    :cond_3
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 267
    .end local v1    # "token":Ljava/lang/String;
    :cond_4
    invoke-static {v2}, Lorg/apache/shiro/util/StringUtils;->toStringArray(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static uppercaseFirstChar(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "in"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 488
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 499
    .end local p0    # "in":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 491
    .restart local p0    # "in":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 492
    .local v0, "length":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 494
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 495
    if-le v0, v4, :cond_2

    .line 496
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 497
    .local v1, "remaining":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    .end local v1    # "remaining":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method
