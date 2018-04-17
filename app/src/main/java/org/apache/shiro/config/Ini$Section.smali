.class public Lorg/apache/shiro/config/Ini$Section;
.super Ljava/lang/Object;
.source "Ini.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/shiro/config/Ini;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Section"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final name:Ljava/lang/String;

.field private final props:Ljava/util/Map;
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


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 450
    if-nez p1, :cond_0

    .line 451
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 453
    :cond_0
    iput-object p1, p0, Lorg/apache/shiro/config/Ini$Section;->name:Ljava/lang/String;

    .line 454
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/shiro/config/Ini$Section;->props:Ljava/util/Map;

    .line 455
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "sectionContent"    # Ljava/lang/String;

    .prologue
    .line 457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 458
    if-nez p1, :cond_0

    .line 459
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "name"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 461
    :cond_0
    iput-object p1, p0, Lorg/apache/shiro/config/Ini$Section;->name:Ljava/lang/String;

    .line 463
    invoke-static {p2}, Lorg/apache/shiro/util/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 464
    invoke-static {p2}, Lorg/apache/shiro/config/Ini$Section;->toMapProps(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 468
    .local v0, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    if-eqz v0, :cond_2

    .line 469
    iput-object v0, p0, Lorg/apache/shiro/config/Ini$Section;->props:Ljava/util/Map;

    .line 473
    :goto_1
    return-void

    .line 466
    .end local v0    # "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .restart local v0    # "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 471
    :cond_2
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/shiro/config/Ini$Section;->props:Ljava/util/Map;

    goto :goto_1
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/shiro/config/Ini$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lorg/apache/shiro/config/Ini$1;

    .prologue
    .line 445
    invoke-direct {p0, p1, p2}, Lorg/apache/shiro/config/Ini$Section;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lorg/apache/shiro/config/Ini$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lorg/apache/shiro/config/Ini$1;

    .prologue
    .line 445
    invoke-direct {p0, p1}, Lorg/apache/shiro/config/Ini$Section;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lorg/apache/shiro/config/Ini$Section;)V
    .locals 1
    .param p1, "defaults"    # Lorg/apache/shiro/config/Ini$Section;

    .prologue
    .line 476
    invoke-virtual {p1}, Lorg/apache/shiro/config/Ini$Section;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/shiro/config/Ini$Section;-><init>(Ljava/lang/String;)V

    .line 477
    iget-object v0, p1, Lorg/apache/shiro/config/Ini$Section;->props:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lorg/apache/shiro/config/Ini$Section;->putAll(Ljava/util/Map;)V

    .line 478
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/shiro/config/Ini$Section;Lorg/apache/shiro/config/Ini$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/shiro/config/Ini$Section;
    .param p2, "x1"    # Lorg/apache/shiro/config/Ini$1;

    .prologue
    .line 445
    invoke-direct {p0, p1}, Lorg/apache/shiro/config/Ini$Section;-><init>(Lorg/apache/shiro/config/Ini$Section;)V

    return-void
.end method

.method private static isCharEscaped(Ljava/lang/CharSequence;I)Z
    .locals 2
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "index"    # I

    .prologue
    .line 505
    if-lez p1, :cond_0

    add-int/lit8 v0, p1, -0x1

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isContinued(Ljava/lang/String;)Z
    .locals 6
    .param p0, "line"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 483
    invoke-static {p0}, Lorg/apache/shiro/util/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 497
    :cond_0
    :goto_0
    return v3

    .line 486
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 489
    .local v2, "length":I
    const/4 v0, 0x0

    .line 490
    .local v0, "backslashCount":I
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_1
    if-lez v1, :cond_2

    .line 491
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5c

    if-ne v4, v5, :cond_2

    .line 492
    add-int/lit8 v0, v0, 0x1

    .line 490
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 497
    :cond_2
    rem-int/lit8 v4, v0, 0x2

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method private static isKeyValueSeparatorChar(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 501
    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x3a

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3d

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static splitKeyValue(Ljava/lang/String;)[Ljava/lang/String;
    .locals 11
    .param p0, "keyValueLine"    # Ljava/lang/String;

    .prologue
    .line 510
    invoke-static {p0}, Lorg/apache/shiro/util/StringUtils;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 511
    .local v5, "line":Ljava/lang/String;
    if-nez v5, :cond_0

    .line 512
    const/4 v9, 0x0

    .line 547
    :goto_0
    return-object v9

    .line 514
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 515
    .local v4, "keyBuffer":Ljava/lang/StringBuilder;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 517
    .local v8, "valueBuffer":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 519
    .local v0, "buildingKey":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v2, v9, :cond_5

    .line 520
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 522
    .local v1, "c":C
    if-eqz v0, :cond_3

    .line 523
    invoke-static {v1}, Lorg/apache/shiro/config/Ini$Section;->isKeyValueSeparatorChar(C)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-static {v5, v2}, Lorg/apache/shiro/config/Ini$Section;->isCharEscaped(Ljava/lang/CharSequence;I)Z

    move-result v9

    if-nez v9, :cond_2

    .line 524
    const/4 v0, 0x0

    .line 519
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 526
    :cond_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 529
    :cond_3
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-nez v9, :cond_4

    invoke-static {v1}, Lorg/apache/shiro/config/Ini$Section;->isKeyValueSeparatorChar(C)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-static {v5, v2}, Lorg/apache/shiro/config/Ini$Section;->isCharEscaped(Ljava/lang/CharSequence;I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 532
    :cond_4
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 537
    .end local v1    # "c":C
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/shiro/util/StringUtils;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 538
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/shiro/util/StringUtils;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 540
    .local v7, "value":Ljava/lang/String;
    if-eqz v3, :cond_6

    if-nez v7, :cond_7

    .line 541
    :cond_6
    const-string v6, "Line argument must contain a key and a value.  Only one string token was found."

    .line 542
    .local v6, "msg":Ljava/lang/String;
    new-instance v9, Ljava/lang/IllegalArgumentException;

    invoke-direct {v9, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 545
    .end local v6    # "msg":Ljava/lang/String;
    :cond_7
    invoke-static {}, Lorg/apache/shiro/config/Ini;->access$300()Lorg/slf4j/Logger;

    move-result-object v9

    const-string v10, "Discovered key/value pair: {}={}"

    invoke-interface {v9, v10, v3, v7}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 547
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    const/4 v10, 0x1

    aput-object v7, v9, v10

    goto :goto_0
.end method

.method private static toMapProps(Ljava/lang/String;)Ljava/util/Map;
    .locals 8
    .param p0, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 551
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 553
    .local v3, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 554
    .local v2, "lineBuffer":Ljava/lang/StringBuilder;
    new-instance v4, Ljava/util/Scanner;

    invoke-direct {v4, p0}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    .line 555
    .local v4, "scanner":Ljava/util/Scanner;
    :goto_0
    invoke-virtual {v4}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 556
    invoke-virtual {v4}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/shiro/util/StringUtils;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 557
    .local v1, "line":Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/shiro/config/Ini$Section;->isContinued(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 559
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 560
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 563
    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 566
    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2    # "lineBuffer":Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 567
    .restart local v2    # "lineBuffer":Ljava/lang/StringBuilder;
    invoke-static {v1}, Lorg/apache/shiro/config/Ini$Section;->splitKeyValue(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 568
    .local v0, "kvPair":[Ljava/lang/String;
    aget-object v5, v0, v7

    const/4 v6, 0x1

    aget-object v6, v0, v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 571
    .end local v0    # "kvPair":[Ljava/lang/String;
    .end local v1    # "line":Ljava/lang/String;
    :cond_1
    return-object v3
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lorg/apache/shiro/config/Ini$Section;->props:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 580
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 583
    iget-object v0, p0, Lorg/apache/shiro/config/Ini$Section;->props:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 587
    iget-object v0, p0, Lorg/apache/shiro/config/Ini$Section;->props:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 591
    iget-object v0, p0, Lorg/apache/shiro/config/Ini$Section;->props:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 636
    instance-of v2, p1, Lorg/apache/shiro/config/Ini$Section;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 637
    check-cast v0, Lorg/apache/shiro/config/Ini$Section;

    .line 638
    .local v0, "other":Lorg/apache/shiro/config/Ini$Section;
    invoke-virtual {p0}, Lorg/apache/shiro/config/Ini$Section;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/shiro/config/Ini$Section;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/shiro/config/Ini$Section;->props:Ljava/util/Map;

    iget-object v3, v0, Lorg/apache/shiro/config/Ini$Section;->props:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 640
    .end local v0    # "other":Lorg/apache/shiro/config/Ini$Section;
    :cond_0
    return v1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 445
    invoke-virtual {p0, p1}, Lorg/apache/shiro/config/Ini$Section;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 595
    iget-object v0, p0, Lorg/apache/shiro/config/Ini$Section;->props:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lorg/apache/shiro/config/Ini$Section;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 645
    iget-object v0, p0, Lorg/apache/shiro/config/Ini$Section;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/apache/shiro/config/Ini$Section;->props:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Lorg/apache/shiro/config/Ini$Section;->props:Ljava/util/Map;

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
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 603
    iget-object v0, p0, Lorg/apache/shiro/config/Ini$Section;->props:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 445
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/lang/String;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/shiro/config/Ini$Section;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 607
    iget-object v0, p0, Lorg/apache/shiro/config/Ini$Section;->props:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 611
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/String;+Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/apache/shiro/config/Ini$Section;->props:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 612
    return-void
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 445
    invoke-virtual {p0, p1}, Lorg/apache/shiro/config/Ini$Section;->remove(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 615
    iget-object v0, p0, Lorg/apache/shiro/config/Ini$Section;->props:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 619
    iget-object v0, p0, Lorg/apache/shiro/config/Ini$Section;->props:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 627
    invoke-virtual {p0}, Lorg/apache/shiro/config/Ini$Section;->getName()Ljava/lang/String;

    move-result-object v0

    .line 628
    .local v0, "name":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 629
    const-string v0, "<default>"

    .line 631
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 623
    iget-object v0, p0, Lorg/apache/shiro/config/Ini$Section;->props:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
