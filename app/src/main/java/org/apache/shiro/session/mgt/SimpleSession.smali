.class public Lorg/apache/shiro/session/mgt/SimpleSession;
.super Ljava/lang/Object;
.source "SimpleSession.java"

# interfaces
.implements Lorg/apache/shiro/session/mgt/ValidatingSession;
.implements Ljava/io/Serializable;


# static fields
.field private static final ATTRIBUTES_BIT_MASK:I

.field private static final EXPIRED_BIT_MASK:I

.field private static final HOST_BIT_MASK:I

.field private static final ID_BIT_MASK:I

.field private static final LAST_ACCESS_TIME_BIT_MASK:I

.field protected static final MILLIS_PER_HOUR:J = 0x36ee80L

.field protected static final MILLIS_PER_MINUTE:J = 0xea60L

.field protected static final MILLIS_PER_SECOND:J = 0x3e8L

.field private static final START_TIMESTAMP_BIT_MASK:I

.field private static final STOP_TIMESTAMP_BIT_MASK:I

.field private static final TIMEOUT_BIT_MASK:I

.field static bitIndexCounter:I = 0x0

.field private static final transient log:Lorg/slf4j/Logger;

.field private static final serialVersionUID:J = -0x62e35e472a739d92L


# instance fields
.field private transient attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private transient expired:Z

.field private transient host:Ljava/lang/String;

.field private transient id:Ljava/io/Serializable;

.field private transient lastAccessTime:Ljava/util/Date;

.field private transient startTimestamp:Ljava/util/Date;

.field private transient stopTimestamp:Ljava/util/Date;

.field private transient timeout:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 52
    const-class v0, Lorg/apache/shiro/session/mgt/SimpleSession;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/session/mgt/SimpleSession;->log:Lorg/slf4j/Logger;

    .line 59
    const/4 v0, 0x0

    sput v0, Lorg/apache/shiro/session/mgt/SimpleSession;->bitIndexCounter:I

    .line 60
    sget v0, Lorg/apache/shiro/session/mgt/SimpleSession;->bitIndexCounter:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/apache/shiro/session/mgt/SimpleSession;->bitIndexCounter:I

    shl-int v0, v2, v0

    sput v0, Lorg/apache/shiro/session/mgt/SimpleSession;->ID_BIT_MASK:I

    .line 61
    sget v0, Lorg/apache/shiro/session/mgt/SimpleSession;->bitIndexCounter:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/apache/shiro/session/mgt/SimpleSession;->bitIndexCounter:I

    shl-int v0, v2, v0

    sput v0, Lorg/apache/shiro/session/mgt/SimpleSession;->START_TIMESTAMP_BIT_MASK:I

    .line 62
    sget v0, Lorg/apache/shiro/session/mgt/SimpleSession;->bitIndexCounter:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/apache/shiro/session/mgt/SimpleSession;->bitIndexCounter:I

    shl-int v0, v2, v0

    sput v0, Lorg/apache/shiro/session/mgt/SimpleSession;->STOP_TIMESTAMP_BIT_MASK:I

    .line 63
    sget v0, Lorg/apache/shiro/session/mgt/SimpleSession;->bitIndexCounter:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/apache/shiro/session/mgt/SimpleSession;->bitIndexCounter:I

    shl-int v0, v2, v0

    sput v0, Lorg/apache/shiro/session/mgt/SimpleSession;->LAST_ACCESS_TIME_BIT_MASK:I

    .line 64
    sget v0, Lorg/apache/shiro/session/mgt/SimpleSession;->bitIndexCounter:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/apache/shiro/session/mgt/SimpleSession;->bitIndexCounter:I

    shl-int v0, v2, v0

    sput v0, Lorg/apache/shiro/session/mgt/SimpleSession;->TIMEOUT_BIT_MASK:I

    .line 65
    sget v0, Lorg/apache/shiro/session/mgt/SimpleSession;->bitIndexCounter:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/apache/shiro/session/mgt/SimpleSession;->bitIndexCounter:I

    shl-int v0, v2, v0

    sput v0, Lorg/apache/shiro/session/mgt/SimpleSession;->EXPIRED_BIT_MASK:I

    .line 66
    sget v0, Lorg/apache/shiro/session/mgt/SimpleSession;->bitIndexCounter:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/apache/shiro/session/mgt/SimpleSession;->bitIndexCounter:I

    shl-int v0, v2, v0

    sput v0, Lorg/apache/shiro/session/mgt/SimpleSession;->HOST_BIT_MASK:I

    .line 67
    sget v0, Lorg/apache/shiro/session/mgt/SimpleSession;->bitIndexCounter:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/apache/shiro/session/mgt/SimpleSession;->bitIndexCounter:I

    shl-int v0, v2, v0

    sput v0, Lorg/apache/shiro/session/mgt/SimpleSession;->ATTRIBUTES_BIT_MASK:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const-wide/32 v0, 0x1b7740

    iput-wide v0, p0, Lorg/apache/shiro/session/mgt/SimpleSession;->timeout:J

    .line 97
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lorg/apache/shiro/session/mgt/SimpleSession;->startTimestamp:Ljava/util/Date;

    .line 98
    iget-object v0, p0, Lorg/apache/shiro/session/mgt/SimpleSession;->startTimestamp:Ljava/util/Date;

    iput-object v0, p0, Lorg/apache/shiro/session/mgt/SimpleSession;->lastAccessTime:Ljava/util/Date;

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-direct {p0}, Lorg/apache/shiro/session/mgt/SimpleSession;-><init>()V

    .line 103
    iput-object p1, p0, Lorg/apache/shiro/session/mgt/SimpleSession;->host:Ljava/lang/String;

    .line 104
    return-void
.end method

.method private getAlteredFieldsBitMask()S
    .locals 6

    .prologue
    .line 513
    const/4 v0, 0x0

    .line 514
    .local v0, "bitMask":I
    iget-object v1, p0, Lorg/apache/shiro/session/mgt/SimpleSession;->id:Ljava/io/Serializable;

    if-eqz v1, :cond_0

    sget v1, Lorg/apache/shiro/session/mgt/SimpleSession;->ID_BIT_MASK:I

    or-int/2addr v0, v1

    .line 515
    :cond_0
    iget-object v1, p0, Lorg/apache/shiro/session/mgt/SimpleSession;->startTimestamp:Ljava/util/Date;

    if-eqz v1, :cond_1

    sget v1, Lorg/apache/shiro/session/mgt/SimpleSession;->START_TIMESTAMP_BIT_MASK:I

    or-int/2addr v0, v1

    .line 516
    :cond_1
    iget-object v1, p0, Lorg/apache/shiro/session/mgt/SimpleSession;->stopTimestamp:Ljava/util/Date;

    if-eqz v1, :cond_2

    sget v1, Lorg/apache/shiro/session/mgt/SimpleSession;->STOP_TIMESTAMP_BIT_MASK:I

    or-int/2addr v0, v1

    .line 517
    :cond_2
    iget-object v1, p0, Lorg/apache/shiro/session/mgt/SimpleSession;->lastAccessTime:Ljava/util/Date;

    if-eqz v1, :cond_3

    sget v1, Lorg/apache/shiro/session/mgt/SimpleSession;->LAST_ACCESS_TIME_BIT_MASK:I

    or-int/2addr v0, v1

    .line 518
    :cond_3
    iget-wide v2, p0, Lorg/apache/shiro/session/mgt/SimpleSession;->timeout:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_4

    sget v1, Lorg/apache/shiro/session/mgt/SimpleSession;->TIMEOUT_BIT_MASK:I

    or-int/2addr v0, v1

    .line 519
    :cond_4
    iget-boolean v1, p0, Lorg/apache/shiro/session/mgt/SimpleSession;->expired:Z

    if-eqz v1, :cond_5

    sget v1, Lorg/apache/shiro/session/mgt/SimpleSession;->EXPIRED_BIT_MASK:I

    or-int/2addr v0, v1

    .line 520
    :cond_5
    iget-object v1, p0, Lorg/apache/shiro/session/mgt/SimpleSession;->host:Ljava/lang/String;

    if-eqz v1, :cond_6

    sget v1, Lorg/apache/shiro/session/mgt/SimpleSession;->HOST_BIT_MASK:I

    or-int/2addr v0, v1

    .line 521
    :cond_6
    iget-object v1, p0, Lorg/apache/shiro/session/mgt/SimpleSession;->attributes:Ljava/util/Map;

    invoke-static {v1}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_7

    sget v1, Lorg/apache/shiro/session/mgt/SimpleSession;->ATTRIBUTES_BIT_MASK:I

    or-int/2addr v0, v1

    .line 522
    :cond_7
    int-to-short v1, v0

    return v1
.end method

.method private getAttributesLazy()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 297
    invoke-virtual {p0}, Lorg/apache/shiro/session/mgt/SimpleSession;->getAttributes()Ljava/util/Map;

    move-result-object v0

    .line 298
    .local v0, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    if-nez v0, :cond_0

    .line 299
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 300
    .restart local v0    # "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual {p0, v0}, Lorg/apache/shiro/session/mgt/SimpleSession;->setAttributes(Ljava/util/Map;)V

    .line 302
    :cond_0
    return-object v0
.end method

.method private static isFieldPresent(SI)Z
    .locals 1
    .param p0, "bitMask"    # S
    .param p1, "fieldBitMask"    # I

    .prologue
    .line 538
    and-int v0, p0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 475
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 476
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readShort()S

    move-result v0

    .line 478
    .local v0, "bitMask":S
    sget v1, Lorg/apache/shiro/session/mgt/SimpleSession;->ID_BIT_MASK:I

    invoke-static {v0, v1}, Lorg/apache/shiro/session/mgt/SimpleSession;->isFieldPresent(SI)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 479
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Serializable;

    iput-object v1, p0, Lorg/apache/shiro/session/mgt/SimpleSession;->id:Ljava/io/Serializable;

    .line 481
    :cond_0
    sget v1, Lorg/apache/shiro/session/mgt/SimpleSession;->START_TIMESTAMP_BIT_MASK:I

    invoke-static {v0, v1}, Lorg/apache/shiro/session/mgt/SimpleSession;->isFieldPresent(SI)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 482
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    iput-object v1, p0, Lorg/apache/shiro/session/mgt/SimpleSession;->startTimestamp:Ljava/util/Date;

    .line 484
    :cond_1
    sget v1, Lorg/apache/shiro/session/mgt/SimpleSession;->STOP_TIMESTAMP_BIT_MASK:I

    invoke-static {v0, v1}, Lorg/apache/shiro/session/mgt/SimpleSession;->isFieldPresent(SI)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 485
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    iput-object v1, p0, Lorg/apache/shiro/session/mgt/SimpleSession;->stopTimestamp:Ljava/util/Date;

    .line 487
    :cond_2
    sget v1, Lorg/apache/shiro/session/mgt/SimpleSession;->LAST_ACCESS_TIME_BIT_MASK:I

    invoke-static {v0, v1}, Lorg/apache/shiro/session/mgt/SimpleSession;->isFieldPresent(SI)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 488
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    iput-object v1, p0, Lorg/apache/shiro/session/mgt/SimpleSession;->lastAccessTime:Ljava/util/Date;

    .line 490
    :cond_3
    sget v1, Lorg/apache/shiro/session/mgt/SimpleSession;->TIMEOUT_BIT_MASK:I

    invoke-static {v0, v1}, Lorg/apache/shiro/session/mgt/SimpleSession;->isFieldPresent(SI)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 491
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/shiro/session/mgt/SimpleSession;->timeout:J

    .line 493
    :cond_4
    sget v1, Lorg/apache/shiro/session/mgt/SimpleSession;->EXPIRED_BIT_MASK:I

    invoke-static {v0, v1}, Lorg/apache/shiro/session/mgt/SimpleSession;->isFieldPresent(SI)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 494
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/shiro/session/mgt/SimpleSession;->expired:Z

    .line 496
    :cond_5
    sget v1, Lorg/apache/shiro/session/mgt/SimpleSession;->HOST_BIT_MASK:I

    invoke-static {v0, v1}, Lorg/apache/shiro/session/mgt/SimpleSession;->isFieldPresent(SI)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 497
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/shiro/session/mgt/SimpleSession;->host:Ljava/lang/String;

    .line 499
    :cond_6
    sget v1, Lorg/apache/shiro/session/mgt/SimpleSession;->ATTRIBUTES_BIT_MASK:I

    invoke-static {v0, v1}, Lorg/apache/shiro/session/mgt/SimpleSession;->isFieldPresent(SI)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 500
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iput-object v1, p0, Lorg/apache/shiro/session/mgt/SimpleSession;->attributes:Ljava/util/Map;

    .line 502
    :cond_7
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 6
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 436
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 437
    invoke-direct {p0}, Lorg/apache/shiro/session/mgt/SimpleSession;->getAlteredFieldsBitMask()S

    move-result v0

    .line 438
    .local v0, "alteredFieldsBitMask":S
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeShort(I)V

    .line 439
    iget-object v1, p0, Lorg/apache/shiro/session/mgt/SimpleSession;->id:Ljava/io/Serializable;

    if-eqz v1, :cond_0

    .line 440
    iget-object v1, p0, Lorg/apache/shiro/session/mgt/SimpleSession;->id:Ljava/io/Serializable;

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 442
    :cond_0
    iget-object v1, p0, Lorg/apache/shiro/session/mgt/SimpleSession;->startTimestamp:Ljava/util/Date;

    if-eqz v1, :cond_1

    .line 443
    iget-object v1, p0, Lorg/apache/shiro/session/mgt/SimpleSession;->startTimestamp:Ljava/util/Date;

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 445
    :cond_1
    iget-object v1, p0, Lorg/apache/shiro/session/mgt/SimpleSession;->stopTimestamp:Ljava/util/Date;

    if-eqz v1, :cond_2

    .line 446
    iget-object v1, p0, Lorg/apache/shiro/session/mgt/SimpleSession;->stopTimestamp:Ljava/util/Date;

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 448
    :cond_2
    iget-object v1, p0, Lorg/apache/shiro/session/mgt/SimpleSession;->lastAccessTime:Ljava/util/Date;

    if-eqz v1, :cond_3

    .line 449
    iget-object v1, p0, Lorg/apache/shiro/session/mgt/SimpleSession;->lastAccessTime:Ljava/util/Date;

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 451
    :cond_3
    iget-wide v2, p0, Lorg/apache/shiro/session/mgt/SimpleSession;->timeout:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_4

    .line 452
    iget-wide v2, p0, Lorg/apache/shiro/session/mgt/SimpleSession;->timeout:J

    invoke-virtual {p1, v2, v3}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 454
    :cond_4
    iget-boolean v1, p0, Lorg/apache/shiro/session/mgt/SimpleSession;->expired:Z

    if-eqz v1, :cond_5

    .line 455
    iget-boolean v1, p0, Lorg/apache/shiro/session/mgt/SimpleSession;->expired:Z

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 457
    :cond_5
    iget-object v1, p0, Lorg/apache/shiro/session/mgt/SimpleSession;->host:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 458
    iget-object v1, p0, Lorg/apache/shiro/session/mgt/SimpleSession;->host:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 460
    :cond_6
    iget-object v1, p0, Lorg/apache/shiro/session/mgt/SimpleSession;->attributes:Ljava/util/Map;

    invoke-static {v1}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 461
    iget-object v1, p0, Lorg/apache/shiro/session/mgt/SimpleSession;->attributes:Ljava/util/Map;

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 463
    :cond_7
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 352
    if-ne p0, p1, :cond_0

    .line 353
    const/4 v3, 0x1

    .line 366
    :goto_0
    return v3

    .line 355
    :cond_0
    instance-of v3, p1, Lorg/apache/shiro/session/mgt/SimpleSession;

    if-eqz v3, :cond_2

    move-object v0, p1

    .line 356
    check-cast v0, Lorg/apache/shiro/session/mgt/SimpleSession;

    .line 357
    .local v0, "other":Lorg/apache/shiro/session/mgt/SimpleSession;
    invoke-virtual {p0}, Lorg/apache/shiro/session/mgt/SimpleSession;->getId()Ljava/io/Serializable;

    move-result-object v2

    .line 358
    .local v2, "thisId":Ljava/io/Serializable;
    invoke-virtual {v0}, Lorg/apache/shiro/session/mgt/SimpleSession;->getId()Ljava/io/Serializable;

    move-result-object v1

    .line 359
    .local v1, "otherId":Ljava/io/Serializable;
    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 360
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0

    .line 363
    :cond_1
    invoke-virtual {p0, v0}, Lorg/apache/shiro/session/mgt/SimpleSession;->onEquals(Lorg/apache/shiro/session/mgt/SimpleSession;)Z

    move-result v3

    goto :goto_0

    .line 366
    .end local v0    # "other":Lorg/apache/shiro/session/mgt/SimpleSession;
    .end local v1    # "otherId":Ljava/io/Serializable;
    .end local v2    # "thisId":Ljava/io/Serializable;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected expire()V
    .locals 1

    .prologue
    .line 208
    invoke-virtual {p0}, Lorg/apache/shiro/session/mgt/SimpleSession;->stop()V

    .line 209
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/shiro/session/mgt/SimpleSession;->expired:Z

    .line 210
    return-void
.end method

.method public getAttribute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 314
    invoke-virtual {p0}, Lorg/apache/shiro/session/mgt/SimpleSession;->getAttributes()Ljava/util/Map;

    move-result-object v0

    .line 315
    .local v0, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    if-nez v0, :cond_0

    .line 316
    const/4 v1, 0x0

    .line 318
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getAttributeKeys()Ljava/util/Collection;
    .locals 2
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
    .line 306
    invoke-virtual {p0}, Lorg/apache/shiro/session/mgt/SimpleSession;->getAttributes()Ljava/util/Map;

    move-result-object v0

    .line 307
    .local v0, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    if-nez v0, :cond_0

    .line 308
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    .line 310
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    goto :goto_0
.end method

.method public getAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Lorg/apache/shiro/session/mgt/SimpleSession;->attributes:Ljava/util/Map;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lorg/apache/shiro/session/mgt/SimpleSession;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/io/Serializable;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lorg/apache/shiro/session/mgt/SimpleSession;->id:Ljava/io/Serializable;

    return-object v0
.end method

.method public getLastAccessTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lorg/apache/shiro/session/mgt/SimpleSession;->lastAccessTime:Ljava/util/Date;

    return-object v0
.end method

.method public getStartTimestamp()Ljava/util/Date;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lorg/apache/shiro/session/mgt/SimpleSession;->startTimestamp:Ljava/util/Date;

    return-object v0
.end method

.method public getStopTimestamp()Ljava/util/Date;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lorg/apache/shiro/session/mgt/SimpleSession;->stopTimestamp:Ljava/util/Date;

    return-object v0
.end method

.method public getTimeout()J
    .locals 2

    .prologue
    .line 170
    iget-wide v0, p0, Lorg/apache/shiro/session/mgt/SimpleSession;->timeout:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 399
    invoke-virtual {p0}, Lorg/apache/shiro/session/mgt/SimpleSession;->getId()Ljava/io/Serializable;

    move-result-object v1

    .line 400
    .local v1, "id":Ljava/io/Serializable;
    if-eqz v1, :cond_0

    .line 401
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 410
    :goto_0
    return v0

    .line 403
    :cond_0
    invoke-virtual {p0}, Lorg/apache/shiro/session/mgt/SimpleSession;->getStartTimestamp()Ljava/util/Date;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lorg/apache/shiro/session/mgt/SimpleSession;->getStartTimestamp()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->hashCode()I

    move-result v0

    .line 404
    .local v0, "hashCode":I
    :goto_1
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lorg/apache/shiro/session/mgt/SimpleSession;->getStopTimestamp()Ljava/util/Date;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lorg/apache/shiro/session/mgt/SimpleSession;->getStopTimestamp()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->hashCode()I

    move-result v3

    :goto_2
    add-int v0, v4, v3

    .line 405
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lorg/apache/shiro/session/mgt/SimpleSession;->getLastAccessTime()Ljava/util/Date;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lorg/apache/shiro/session/mgt/SimpleSession;->getLastAccessTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->hashCode()I

    move-result v3

    :goto_3
    add-int v0, v4, v3

    .line 406
    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {p0}, Lorg/apache/shiro/session/mgt/SimpleSession;->getTimeout()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->hashCode()I

    move-result v4

    add-int v0, v3, v4

    .line 407
    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {p0}, Lorg/apache/shiro/session/mgt/SimpleSession;->isExpired()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->hashCode()I

    move-result v4

    add-int v0, v3, v4

    .line 408
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lorg/apache/shiro/session/mgt/SimpleSession;->getHost()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lorg/apache/shiro/session/mgt/SimpleSession;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_4
    add-int v0, v4, v3

    .line 409
    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {p0}, Lorg/apache/shiro/session/mgt/SimpleSession;->getAttributes()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lorg/apache/shiro/session/mgt/SimpleSession;->getAttributes()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_1
    add-int v0, v3, v2

    .line 410
    goto :goto_0

    .end local v0    # "hashCode":I
    :cond_2
    move v0, v2

    .line 403
    goto :goto_1

    .restart local v0    # "hashCode":I
    :cond_3
    move v3, v2

    .line 404
    goto :goto_2

    :cond_4
    move v3, v2

    .line 405
    goto :goto_3

    :cond_5
    move v3, v2

    .line 408
    goto :goto_4
.end method

.method public isExpired()Z
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Lorg/apache/shiro/session/mgt/SimpleSession;->expired:Z

    return v0
.end method

.method protected isStopped()Z
    .locals 1

    .prologue
    .line 204
    invoke-virtual {p0}, Lorg/apache/shiro/session/mgt/SimpleSession;->getStopTimestamp()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isTimedOut()Z
    .locals 10

    .prologue
    .line 226
    invoke-virtual {p0}, Lorg/apache/shiro/session/mgt/SimpleSession;->isExpired()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 227
    const/4 v5, 0x1

    .line 260
    :goto_0
    return v5

    .line 230
    :cond_0
    invoke-virtual {p0}, Lorg/apache/shiro/session/mgt/SimpleSession;->getTimeout()J

    move-result-wide v6

    .line 232
    .local v6, "timeout":J
    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-ltz v5, :cond_2

    .line 234
    invoke-virtual {p0}, Lorg/apache/shiro/session/mgt/SimpleSession;->getLastAccessTime()Ljava/util/Date;

    move-result-object v1

    .line 236
    .local v1, "lastAccessTime":Ljava/util/Date;
    if-nez v1, :cond_1

    .line 237
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "session.lastAccessTime for session with id ["

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lorg/apache/shiro/session/mgt/SimpleSession;->getId()Ljava/io/Serializable;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "] is null.  This value must be set at "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "least once, preferably at least upon instantiation.  Please check the "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " implementation and ensure "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "this value will be set (perhaps in the constructor?)"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 242
    .local v4, "msg":Ljava/lang/String;
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 250
    .end local v4    # "msg":Ljava/lang/String;
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v2, v8, v6

    .line 251
    .local v2, "expireTimeMillis":J
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 252
    .local v0, "expireTime":Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v5

    goto :goto_0

    .line 254
    .end local v0    # "expireTime":Ljava/util/Date;
    .end local v1    # "lastAccessTime":Ljava/util/Date;
    .end local v2    # "expireTimeMillis":J
    :cond_2
    sget-object v5, Lorg/apache/shiro/session/mgt/SimpleSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v5}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 255
    sget-object v5, Lorg/apache/shiro/session/mgt/SimpleSession;->log:Lorg/slf4j/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No timeout for session with id ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lorg/apache/shiro/session/mgt/SimpleSession;->getId()Ljava/io/Serializable;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "].  Session is not considered expired."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 260
    :cond_3
    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 216
    invoke-virtual {p0}, Lorg/apache/shiro/session/mgt/SimpleSession;->isStopped()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/shiro/session/mgt/SimpleSession;->isExpired()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onEquals(Lorg/apache/shiro/session/mgt/SimpleSession;)Z
    .locals 4
    .param p1, "ss"    # Lorg/apache/shiro/session/mgt/SimpleSession;

    .prologue
    .line 378
    invoke-virtual {p0}, Lorg/apache/shiro/session/mgt/SimpleSession;->getStartTimestamp()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/shiro/session/mgt/SimpleSession;->getStartTimestamp()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/shiro/session/mgt/SimpleSession;->getStartTimestamp()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lorg/apache/shiro/session/mgt/SimpleSession;->getStopTimestamp()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/apache/shiro/session/mgt/SimpleSession;->getStopTimestamp()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/shiro/session/mgt/SimpleSession;->getStopTimestamp()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    invoke-virtual {p0}, Lorg/apache/shiro/session/mgt/SimpleSession;->getLastAccessTime()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lorg/apache/shiro/session/mgt/SimpleSession;->getLastAccessTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/shiro/session/mgt/SimpleSession;->getLastAccessTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {p0}, Lorg/apache/shiro/session/mgt/SimpleSession;->getTimeout()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/apache/shiro/session/mgt/SimpleSession;->getTimeout()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/shiro/session/mgt/SimpleSession;->isExpired()Z

    move-result v0

    invoke-virtual {p1}, Lorg/apache/shiro/session/mgt/SimpleSession;->isExpired()Z

    move-result v1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lorg/apache/shiro/session/mgt/SimpleSession;->getHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lorg/apache/shiro/session/mgt/SimpleSession;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/shiro/session/mgt/SimpleSession;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p0}, Lorg/apache/shiro/session/mgt/SimpleSession;->getAttributes()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lorg/apache/shiro/session/mgt/SimpleSession;->getAttributes()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/shiro/session/mgt/SimpleSession;->getAttributes()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_3
    const/4 v0, 0x1

    :goto_4
    return v0

    :cond_1
    invoke-virtual {p1}, Lorg/apache/shiro/session/mgt/SimpleSession;->getStartTimestamp()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_4

    :cond_3
    invoke-virtual {p1}, Lorg/apache/shiro/session/mgt/SimpleSession;->getStopTimestamp()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lorg/apache/shiro/session/mgt/SimpleSession;->getLastAccessTime()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lorg/apache/shiro/session/mgt/SimpleSession;->getHost()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Lorg/apache/shiro/session/mgt/SimpleSession;->getAttributes()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_3
.end method

.method public removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 330
    invoke-virtual {p0}, Lorg/apache/shiro/session/mgt/SimpleSession;->getAttributes()Ljava/util/Map;

    move-result-object v0

    .line 331
    .local v0, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    if-nez v0, :cond_0

    .line 332
    const/4 v1, 0x0

    .line 334
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public setAttribute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 322
    if-nez p2, :cond_0

    .line 323
    invoke-virtual {p0, p1}, Lorg/apache/shiro/session/mgt/SimpleSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    :goto_0
    return-void

    .line 325
    :cond_0
    invoke-direct {p0}, Lorg/apache/shiro/session/mgt/SimpleSession;->getAttributesLazy()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setAttributes(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 190
    .local p1, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    iput-object p1, p0, Lorg/apache/shiro/session/mgt/SimpleSession;->attributes:Ljava/util/Map;

    .line 191
    return-void
.end method

.method public setExpired(Z)V
    .locals 0
    .param p1, "expired"    # Z

    .prologue
    .line 166
    iput-boolean p1, p0, Lorg/apache/shiro/session/mgt/SimpleSession;->expired:Z

    .line 167
    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 182
    iput-object p1, p0, Lorg/apache/shiro/session/mgt/SimpleSession;->host:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public setId(Ljava/io/Serializable;)V
    .locals 0
    .param p1, "id"    # Ljava/io/Serializable;

    .prologue
    .line 111
    iput-object p1, p0, Lorg/apache/shiro/session/mgt/SimpleSession;->id:Ljava/io/Serializable;

    .line 112
    return-void
.end method

.method public setLastAccessTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "lastAccessTime"    # Ljava/util/Date;

    .prologue
    .line 152
    iput-object p1, p0, Lorg/apache/shiro/session/mgt/SimpleSession;->lastAccessTime:Ljava/util/Date;

    .line 153
    return-void
.end method

.method public setStartTimestamp(Ljava/util/Date;)V
    .locals 0
    .param p1, "startTimestamp"    # Ljava/util/Date;

    .prologue
    .line 119
    iput-object p1, p0, Lorg/apache/shiro/session/mgt/SimpleSession;->startTimestamp:Ljava/util/Date;

    .line 120
    return-void
.end method

.method public setStopTimestamp(Ljava/util/Date;)V
    .locals 0
    .param p1, "stopTimestamp"    # Ljava/util/Date;

    .prologue
    .line 144
    iput-object p1, p0, Lorg/apache/shiro/session/mgt/SimpleSession;->stopTimestamp:Ljava/util/Date;

    .line 145
    return-void
.end method

.method public setTimeout(J)V
    .locals 1
    .param p1, "timeout"    # J

    .prologue
    .line 174
    iput-wide p1, p0, Lorg/apache/shiro/session/mgt/SimpleSession;->timeout:J

    .line 175
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lorg/apache/shiro/session/mgt/SimpleSession;->stopTimestamp:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 199
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lorg/apache/shiro/session/mgt/SimpleSession;->stopTimestamp:Ljava/util/Date;

    .line 201
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 424
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/shiro/session/mgt/SimpleSession;->getId()Ljava/io/Serializable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 425
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public touch()V
    .locals 1

    .prologue
    .line 194
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lorg/apache/shiro/session/mgt/SimpleSession;->lastAccessTime:Ljava/util/Date;

    .line 195
    return-void
.end method

.method public validate()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/session/InvalidSessionException;
        }
    .end annotation

    .prologue
    .line 265
    invoke-virtual {p0}, Lorg/apache/shiro/session/mgt/SimpleSession;->isStopped()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 267
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Session with id ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lorg/apache/shiro/session/mgt/SimpleSession;->getId()Ljava/io/Serializable;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] has been "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "explicitly stopped.  No further interaction under this session is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "allowed."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 270
    .local v2, "msg":Ljava/lang/String;
    new-instance v6, Lorg/apache/shiro/session/StoppedSessionException;

    invoke-direct {v6, v2}, Lorg/apache/shiro/session/StoppedSessionException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 274
    .end local v2    # "msg":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lorg/apache/shiro/session/mgt/SimpleSession;->isTimedOut()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 275
    invoke-virtual {p0}, Lorg/apache/shiro/session/mgt/SimpleSession;->expire()V

    .line 278
    invoke-virtual {p0}, Lorg/apache/shiro/session/mgt/SimpleSession;->getLastAccessTime()Ljava/util/Date;

    move-result-object v1

    .line 279
    .local v1, "lastAccessTime":Ljava/util/Date;
    invoke-virtual {p0}, Lorg/apache/shiro/session/mgt/SimpleSession;->getTimeout()J

    move-result-wide v4

    .line 281
    .local v4, "timeout":J
    invoke-virtual {p0}, Lorg/apache/shiro/session/mgt/SimpleSession;->getId()Ljava/io/Serializable;

    move-result-object v3

    .line 283
    .local v3, "sessionId":Ljava/io/Serializable;
    invoke-static {}, Ljava/text/DateFormat;->getInstance()Ljava/text/DateFormat;

    move-result-object v0

    .line 284
    .local v0, "df":Ljava/text/DateFormat;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Session with id ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] has expired. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Last access time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".  Current time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".  Session timeout is set to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-wide/16 v8, 0x3e8

    div-long v8, v4, v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " seconds ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-wide/32 v8, 0xea60

    div-long v8, v4, v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " minutes)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 289
    .restart local v2    # "msg":Ljava/lang/String;
    sget-object v6, Lorg/apache/shiro/session/mgt/SimpleSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v6}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 290
    sget-object v6, Lorg/apache/shiro/session/mgt/SimpleSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v6, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 292
    :cond_1
    new-instance v6, Lorg/apache/shiro/session/ExpiredSessionException;

    invoke-direct {v6, v2}, Lorg/apache/shiro/session/ExpiredSessionException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 294
    .end local v0    # "df":Ljava/text/DateFormat;
    .end local v1    # "lastAccessTime":Ljava/util/Date;
    .end local v2    # "msg":Ljava/lang/String;
    .end local v3    # "sessionId":Ljava/io/Serializable;
    .end local v4    # "timeout":J
    :cond_2
    return-void
.end method
