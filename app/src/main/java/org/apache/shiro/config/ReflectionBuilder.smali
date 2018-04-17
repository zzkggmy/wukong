.class public Lorg/apache/shiro/config/ReflectionBuilder;
.super Ljava/lang/Object;
.source "ReflectionBuilder.java"


# static fields
.field private static final EMPTY_STRING_VALUE_TOKEN:Ljava/lang/String; = "\"\""

.field private static final ESCAPED_OBJECT_REFERENCE_BEGIN_TOKEN:Ljava/lang/String; = "\\$"

.field private static final GLOBAL_PROPERTY_PREFIX:Ljava/lang/String; = "shiro"

.field private static final HEX_BEGIN_TOKEN:Ljava/lang/String; = "0x"

.field private static final MAP_KEY_VALUE_DELIMITER:C = ':'

.field private static final MAP_PROPERTY_BEGIN_TOKEN:C = '['

.field private static final MAP_PROPERTY_END_TOKEN:C = ']'

.field private static final NULL_VALUE_TOKEN:Ljava/lang/String; = "null"

.field private static final OBJECT_REFERENCE_BEGIN_TOKEN:Ljava/lang/String; = "$"

.field private static final STRING_VALUE_DELIMETER:C = '\"'

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private objects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lorg/apache/shiro/config/ReflectionBuilder;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/config/ReflectionBuilder;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/shiro/config/ReflectionBuilder;->objects:Ljava/util/Map;

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "defaults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-static {p1}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Ljava/util/LinkedHashMap;

    .end local p1    # "defaults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    :cond_0
    iput-object p1, p0, Lorg/apache/shiro/config/ReflectionBuilder;->objects:Ljava/util/Map;

    .line 68
    return-void
.end method

.method private getIndexedProperty(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "propertyPath"    # Ljava/lang/String;
    .param p3, "index"    # I

    .prologue
    .line 523
    :try_start_0
    invoke-static {p1, p2, p3}, Lorg/apache/commons/beanutils/PropertyUtils;->getIndexedProperty(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 524
    :catch_0
    move-exception v0

    .line 525
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/apache/shiro/config/ConfigurationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to acquire array property \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/shiro/config/ConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "propertyPath"    # Ljava/lang/String;

    .prologue
    .line 507
    :try_start_0
    invoke-static {p1, p2}, Lorg/apache/commons/beanutils/PropertyUtils;->getProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 508
    :catch_0
    move-exception v0

    .line 509
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/apache/shiro/config/ConfigurationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to access property \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/shiro/config/ConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private setIndexedProperty(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "propertyPath"    # Ljava/lang/String;
    .param p3, "index"    # I
    .param p4, "value"    # Ljava/lang/Object;

    .prologue
    .line 515
    :try_start_0
    invoke-static {p1, p2, p3, p4}, Lorg/apache/commons/beanutils/PropertyUtils;->setIndexedProperty(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 519
    return-void

    .line 516
    :catch_0
    move-exception v0

    .line 517
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/apache/shiro/config/ConfigurationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to set array property \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/shiro/config/ConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "propertyPath"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 489
    :try_start_0
    sget-object v2, Lorg/apache/shiro/config/ReflectionBuilder;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 490
    sget-object v2, Lorg/apache/shiro/config/ReflectionBuilder;->log:Lorg/slf4j/Logger;

    const-string v3, "Applying property [{}] value [{}] on object of type [{}]"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x1

    aput-object p3, v4, v5

    const/4 v5, 0x2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v2, v3, v4}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 493
    :cond_0
    invoke-static {p1, p2, p3}, Lorg/apache/commons/beanutils/BeanUtils;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    return-void

    .line 494
    :catch_0
    move-exception v0

    .line 495
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to set property \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' with value ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] on object "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".  If "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is a reference to another (previously defined) object, prefix it with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "$"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' to indicate that the referenced "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "object should be used as the actual value.  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "For example, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "$"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 501
    .local v1, "msg":Ljava/lang/String;
    new-instance v2, Lorg/apache/shiro/config/ConfigurationException;

    invoke-direct {v2, v1, v0}, Lorg/apache/shiro/config/ConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 495
    .end local v1    # "msg":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private toCollection(Ljava/lang/String;)Ljava/util/Collection;
    .locals 11
    .param p1, "sValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 334
    invoke-static {p1}, Lorg/apache/shiro/util/StringUtils;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 335
    .local v5, "tokens":[Ljava/lang/String;
    if-eqz v5, :cond_0

    array-length v8, v5

    if-gtz v8, :cond_1

    .line 336
    :cond_0
    const/4 v3, 0x0

    .line 353
    :goto_0
    return-object v3

    .line 340
    :cond_1
    array-length v8, v5

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    aget-object v8, v5, v10

    invoke-virtual {p0, v8}, Lorg/apache/shiro/config/ReflectionBuilder;->isReference(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 341
    aget-object v8, v5, v10

    invoke-virtual {p0, v8}, Lorg/apache/shiro/config/ReflectionBuilder;->resolveReference(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 342
    .local v3, "reference":Ljava/lang/Object;
    instance-of v8, v3, Ljava/util/Collection;

    if-eqz v8, :cond_2

    .line 343
    check-cast v3, Ljava/util/Collection;

    goto :goto_0

    .line 348
    .end local v3    # "reference":Ljava/lang/Object;
    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    array-length v8, v5

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 349
    .local v7, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v4, v0, v1

    .line 350
    .local v4, "token":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lorg/apache/shiro/config/ReflectionBuilder;->resolveValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 351
    .local v6, "value":Ljava/lang/Object;
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v4    # "token":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/Object;
    :cond_3
    move-object v3, v7

    .line 353
    goto :goto_0
.end method


# virtual methods
.method protected applyGlobalProperty(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "objects"    # Ljava/util/Map;
    .param p2, "property"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 177
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 179
    .local v2, "instance":Ljava/lang/Object;
    :try_start_0
    invoke-static {v2, p2}, Lorg/apache/commons/beanutils/PropertyUtils;->getPropertyDescriptor(Ljava/lang/Object;Ljava/lang/String;)Ljava/beans/PropertyDescriptor;

    move-result-object v4

    .line 180
    .local v4, "pd":Ljava/beans/PropertyDescriptor;
    if-eqz v4, :cond_0

    .line 181
    invoke-virtual {p0, v2, p2, p3}, Lorg/apache/shiro/config/ReflectionBuilder;->applyProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 183
    .end local v4    # "pd":Ljava/beans/PropertyDescriptor;
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error retrieving property descriptor for instance of type ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "while setting property ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 187
    .local v3, "msg":Ljava/lang/String;
    new-instance v5, Lorg/apache/shiro/config/ConfigurationException;

    invoke-direct {v5, v3, v0}, Lorg/apache/shiro/config/ConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 190
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "instance":Ljava/lang/Object;
    .end local v3    # "msg":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method protected applyProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 12
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "propertyPath"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 422
    const/16 v9, 0x5b

    invoke-virtual {p2, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 423
    .local v3, "mapBegin":I
    const/4 v4, -0x1

    .line 424
    .local v4, "mapEnd":I
    const/4 v6, 0x0

    .line 425
    .local v6, "mapPropertyPath":Ljava/lang/String;
    const/4 v1, 0x0

    .line 427
    .local v1, "keyString":Ljava/lang/String;
    const/4 v8, 0x0

    .line 429
    .local v8, "remaining":Ljava/lang/String;
    if-ltz v3, :cond_0

    .line 431
    const/4 v9, 0x0

    invoke-virtual {p2, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 433
    const/16 v9, 0x5d

    invoke-virtual {p2, v9, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 435
    add-int/lit8 v9, v3, 0x1

    invoke-virtual {p2, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 438
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v10, v4, 0x1

    if-le v9, v10, :cond_0

    .line 439
    add-int/lit8 v9, v4, 0x1

    invoke-virtual {p2, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 440
    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 441
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/shiro/util/StringUtils;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 446
    :cond_0
    if-nez v8, :cond_3

    .line 448
    if-nez v1, :cond_1

    .line 450
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/shiro/config/ReflectionBuilder;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 485
    :goto_0
    return-void

    .line 453
    :cond_1
    const-class v9, Ljava/util/Map;

    invoke-virtual {p0, p1, v6, v9}, Lorg/apache/shiro/config/ReflectionBuilder;->isTypedProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 454
    invoke-direct {p0, p1, v6}, Lorg/apache/shiro/config/ReflectionBuilder;->getProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 455
    .local v2, "map":Ljava/util/Map;
    invoke-virtual {p0, v1}, Lorg/apache/shiro/config/ReflectionBuilder;->resolveValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 457
    .local v5, "mapKey":Ljava/lang/Object;
    invoke-interface {v2, v5, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 460
    .end local v2    # "map":Ljava/util/Map;
    .end local v5    # "mapKey":Ljava/lang/Object;
    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 461
    .local v0, "index":I
    invoke-direct {p0, p1, v6, v0, p3}, Lorg/apache/shiro/config/ReflectionBuilder;->setIndexedProperty(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    .line 467
    .end local v0    # "index":I
    :cond_3
    const/4 v7, 0x0

    .line 468
    .local v7, "referencedValue":Ljava/lang/Object;
    const-class v9, Ljava/util/Map;

    invoke-virtual {p0, p1, v6, v9}, Lorg/apache/shiro/config/ReflectionBuilder;->isTypedProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 469
    invoke-direct {p0, p1, v6}, Lorg/apache/shiro/config/ReflectionBuilder;->getProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 470
    .restart local v2    # "map":Ljava/util/Map;
    invoke-virtual {p0, v1}, Lorg/apache/shiro/config/ReflectionBuilder;->resolveValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 471
    .restart local v5    # "mapKey":Ljava/lang/Object;
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 478
    .end local v2    # "map":Ljava/util/Map;
    .end local v5    # "mapKey":Ljava/lang/Object;
    :goto_1
    if-nez v7, :cond_5

    .line 479
    new-instance v9, Lorg/apache/shiro/config/ConfigurationException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Referenced map/array value \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]\' does not exist."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/apache/shiro/config/ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 474
    :cond_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 475
    .restart local v0    # "index":I
    invoke-direct {p0, p1, v6, v0}, Lorg/apache/shiro/config/ReflectionBuilder;->getIndexedProperty(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v7

    goto :goto_1

    .line 483
    .end local v0    # "index":I
    :cond_5
    invoke-virtual {p0, v7, v8, p3}, Lorg/apache/shiro/config/ReflectionBuilder;->applyProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected applyProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "propertyName"    # Ljava/lang/String;
    .param p3, "stringValue"    # Ljava/lang/String;

    .prologue
    .line 537
    const-string v3, "null"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 538
    const/4 v2, 0x0

    .line 562
    :goto_0
    invoke-virtual {p0, p1, p2, v2}, Lorg/apache/shiro/config/ReflectionBuilder;->applyProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 563
    return-void

    .line 539
    :cond_0
    const-string v3, "\"\""

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 540
    const-string v2, ""

    .local v2, "value":Ljava/lang/String;
    goto :goto_0

    .line 541
    .end local v2    # "value":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, p2}, Lorg/apache/shiro/config/ReflectionBuilder;->isIndexedPropertyAssignment(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 542
    invoke-virtual {p0, p3}, Lorg/apache/shiro/config/ReflectionBuilder;->checkForNullOrEmptyLiteral(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 543
    .local v1, "checked":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/apache/shiro/config/ReflectionBuilder;->resolveValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 544
    .local v2, "value":Ljava/lang/Object;
    goto :goto_0

    .end local v1    # "checked":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Object;
    :cond_2
    const-class v3, Ljava/util/Set;

    invoke-virtual {p0, p1, p2, v3}, Lorg/apache/shiro/config/ReflectionBuilder;->isTypedProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 545
    invoke-virtual {p0, p3}, Lorg/apache/shiro/config/ReflectionBuilder;->toSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    .local v2, "value":Ljava/util/Set;
    goto :goto_0

    .line 546
    .end local v2    # "value":Ljava/util/Set;
    :cond_3
    const-class v3, Ljava/util/Map;

    invoke-virtual {p0, p1, p2, v3}, Lorg/apache/shiro/config/ReflectionBuilder;->isTypedProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 547
    invoke-virtual {p0, p3}, Lorg/apache/shiro/config/ReflectionBuilder;->toMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .local v2, "value":Ljava/util/Map;
    goto :goto_0

    .line 548
    .end local v2    # "value":Ljava/util/Map;
    :cond_4
    const-class v3, Ljava/util/List;

    invoke-virtual {p0, p1, p2, v3}, Lorg/apache/shiro/config/ReflectionBuilder;->isTypedProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 549
    invoke-virtual {p0, p3}, Lorg/apache/shiro/config/ReflectionBuilder;->toList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .local v2, "value":Ljava/util/List;
    goto :goto_0

    .line 550
    .end local v2    # "value":Ljava/util/List;
    :cond_5
    const-class v3, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2, v3}, Lorg/apache/shiro/config/ReflectionBuilder;->isTypedProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 551
    invoke-direct {p0, p3}, Lorg/apache/shiro/config/ReflectionBuilder;->toCollection(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v2

    .local v2, "value":Ljava/util/Collection;
    goto :goto_0

    .line 552
    .end local v2    # "value":Ljava/util/Collection;
    :cond_6
    const-class v3, [B

    invoke-virtual {p0, p1, p2, v3}, Lorg/apache/shiro/config/ReflectionBuilder;->isTypedProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 553
    invoke-virtual {p0, p3}, Lorg/apache/shiro/config/ReflectionBuilder;->toBytes(Ljava/lang/String;)[B

    move-result-object v2

    .local v2, "value":[B
    goto :goto_0

    .line 554
    .end local v2    # "value":[B
    :cond_7
    const-class v3, Lorg/apache/shiro/util/ByteSource;

    invoke-virtual {p0, p1, p2, v3}, Lorg/apache/shiro/config/ReflectionBuilder;->isTypedProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 555
    invoke-virtual {p0, p3}, Lorg/apache/shiro/config/ReflectionBuilder;->toBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 556
    .local v0, "bytes":[B
    invoke-static {v0}, Lorg/apache/shiro/util/ByteSource$Util;->bytes([B)Lorg/apache/shiro/util/ByteSource;

    move-result-object v2

    .line 557
    .local v2, "value":Lorg/apache/shiro/util/ByteSource;
    goto :goto_0

    .line 558
    .end local v0    # "bytes":[B
    .end local v2    # "value":Lorg/apache/shiro/util/ByteSource;
    :cond_8
    invoke-virtual {p0, p3}, Lorg/apache/shiro/config/ReflectionBuilder;->checkForNullOrEmptyLiteral(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 559
    .restart local v1    # "checked":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/apache/shiro/config/ReflectionBuilder;->resolveValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .local v2, "value":Ljava/lang/Object;
    goto :goto_0
.end method

.method protected applyProperty(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "objects"    # Ljava/util/Map;

    .prologue
    .line 158
    const/16 v3, 0x2e

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 160
    .local v0, "index":I
    if-ltz v0, :cond_1

    .line 161
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "name":Ljava/lang/String;
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 164
    .local v2, "property":Ljava/lang/String;
    const-string v3, "shiro"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 165
    invoke-virtual {p0, p3, v2, p2}, Lorg/apache/shiro/config/ReflectionBuilder;->applyGlobalProperty(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :goto_0
    return-void

    .line 167
    :cond_0
    invoke-virtual {p0, p3, v1, v2, p2}, Lorg/apache/shiro/config/ReflectionBuilder;->applySingleProperty(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 171
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "property":Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "All property keys must contain a \'.\' character. (e.g. myBean.property = value)  These should already be separated out by buildObjects()."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected applySingleProperty(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "objects"    # Ljava/util/Map;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "property"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    .line 193
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 194
    .local v0, "instance":Ljava/lang/Object;
    const-string v2, "class"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 195
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Property keys should not contain \'class\' properties since these should already be separated out by buildObjects()."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 198
    :cond_0
    if-nez v0, :cond_1

    .line 199
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Configuration error.  Specified object ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] with property ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] without first defining that object\'s class.  Please first "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "specify the class property first, e.g. myObject = fully_qualified_class_name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "and then define additional properties."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 203
    .local v1, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 206
    .end local v1    # "msg":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v0, p3, p4}, Lorg/apache/shiro/config/ReflectionBuilder;->applyProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method public buildObjects(Ljava/util/Map;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 100
    .local p1, "kvPairs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 106
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 107
    .local v2, "instanceMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 109
    .local v3, "propertyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 110
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, ".class"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 111
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 113
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 118
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 119
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v6, p0, Lorg/apache/shiro/config/ReflectionBuilder;->objects:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v6, v4, v5}, Lorg/apache/shiro/config/ReflectionBuilder;->createNewInstance(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 123
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 124
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lorg/apache/shiro/config/ReflectionBuilder;->objects:Ljava/util/Map;

    invoke-virtual {p0, v4, v5, v6}, Lorg/apache/shiro/config/ReflectionBuilder;->applyProperty(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2

    .line 129
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "instanceMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "propertyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    iget-object v4, p0, Lorg/apache/shiro/config/ReflectionBuilder;->objects:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/shiro/util/LifecycleUtils;->init(Ljava/util/Collection;)V

    .line 131
    iget-object v4, p0, Lorg/apache/shiro/config/ReflectionBuilder;->objects:Ljava/util/Map;

    return-object v4
.end method

.method protected checkForNullOrEmptyLiteral(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "stringValue"    # Ljava/lang/String;

    .prologue
    .line 405
    if-nez p1, :cond_1

    .line 406
    const/4 p1, 0x0

    .line 416
    .end local p1    # "stringValue":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 409
    .restart local p1    # "stringValue":Ljava/lang/String;
    :cond_1
    const-string v0, "\"null\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 410
    const-string p1, "null"

    goto :goto_0

    .line 413
    :cond_2
    const-string v0, "\"\"\"\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    const-string p1, "\"\""

    goto :goto_0
.end method

.method protected createNewInstance(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 136
    .local p1, "objects":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 137
    .local v1, "currentInstance":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 138
    sget-object v5, Lorg/apache/shiro/config/ReflectionBuilder;->log:Lorg/slf4j/Logger;

    const-string v6, "An instance with name \'{}\' already exists.  Redefining this object as a new instance of type {}"

    invoke-interface {v5, v6, p2, p3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 144
    :cond_0
    :try_start_0
    invoke-static {p3}, Lorg/apache/shiro/util/ClassUtils;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 145
    .local v3, "instance":Ljava/lang/Object;
    instance-of v5, v3, Lorg/apache/shiro/util/Nameable;

    if-eqz v5, :cond_1

    .line 146
    move-object v0, v3

    check-cast v0, Lorg/apache/shiro/util/Nameable;

    move-object v5, v0

    invoke-interface {v5, p2}, Lorg/apache/shiro/util/Nameable;->setName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :cond_1
    invoke-interface {p1, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    return-void

    .line 148
    .end local v3    # "instance":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 149
    .local v2, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to instantiate class ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] for object named \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'.  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Please ensure you\'ve specified the fully qualified class name correctly."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 151
    .local v4, "msg":Ljava/lang/String;
    new-instance v5, Lorg/apache/shiro/config/ConfigurationException;

    invoke-direct {v5, v4, v2}, Lorg/apache/shiro/config/ConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public getBean(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/apache/shiro/config/ReflectionBuilder;->objects:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 84
    .local p2, "requiredType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p2, :cond_0

    .line 85
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "requiredType argument cannot be null."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 87
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/shiro/config/ReflectionBuilder;->getBean(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 88
    .local v0, "bean":Ljava/lang/Object;
    if-nez v0, :cond_2

    .line 89
    const/4 v0, 0x0

    .line 95
    .end local v0    # "bean":Ljava/lang/Object;
    :cond_1
    return-object v0

    .line 91
    .restart local v0    # "bean":Ljava/lang/Object;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 92
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bean with id ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is not of the required type ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected getId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "referenceToken"    # Ljava/lang/String;

    .prologue
    .line 215
    const-string v0, "$"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getObjects()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lorg/apache/shiro/config/ReflectionBuilder;->objects:Ljava/util/Map;

    return-object v0
.end method

.method protected getReferencedObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 219
    iget-object v2, p0, Lorg/apache/shiro/config/ReflectionBuilder;->objects:Ljava/util/Map;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/shiro/config/ReflectionBuilder;->objects:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/apache/shiro/config/ReflectionBuilder;->objects:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 220
    .local v1, "o":Ljava/lang/Object;
    :goto_0
    if-nez v1, :cond_1

    .line 221
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The object with id ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] has not yet been defined and therefore cannot be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "referenced.  Please ensure objects are defined in the order in which they should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "created and made available for future reference."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, "msg":Ljava/lang/String;
    new-instance v2, Lorg/apache/shiro/config/UnresolveableReferenceException;

    invoke-direct {v2, v0}, Lorg/apache/shiro/config/UnresolveableReferenceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 219
    .end local v0    # "msg":Ljava/lang/String;
    .end local v1    # "o":Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 226
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_1
    return-object v1
.end method

.method protected isIndexedPropertyAssignment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "propertyPath"    # Ljava/lang/String;

    .prologue
    .line 530
    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected isReference(Ljava/lang/String;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 211
    if-eqz p1, :cond_0

    const-string v0, "$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isTypedProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 7
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "propertyName"    # Ljava/lang/String;
    .param p3, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 247
    if-nez p3, :cond_0

    .line 248
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "type (class) argument cannot be null."

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 251
    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Lorg/apache/commons/beanutils/PropertyUtils;->getPropertyDescriptor(Ljava/lang/Object;Ljava/lang/String;)Ljava/beans/PropertyDescriptor;

    move-result-object v1

    .line 252
    .local v1, "descriptor":Ljava/beans/PropertyDescriptor;
    if-nez v1, :cond_1

    .line 253
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Property \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' does not exist for object of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 255
    .local v3, "msg":Ljava/lang/String;
    new-instance v5, Lorg/apache/shiro/config/ConfigurationException;

    invoke-direct {v5, v3}, Lorg/apache/shiro/config/ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Lorg/apache/shiro/config/ConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 259
    .end local v1    # "descriptor":Ljava/beans/PropertyDescriptor;
    .end local v3    # "msg":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 261
    .local v0, "ce":Lorg/apache/shiro/config/ConfigurationException;
    throw v0

    .line 257
    .end local v0    # "ce":Lorg/apache/shiro/config/ConfigurationException;
    .restart local v1    # "descriptor":Ljava/beans/PropertyDescriptor;
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/beans/PropertyDescriptor;->getPropertyType()Ljava/lang/Class;

    move-result-object v4

    .line 258
    .local v4, "propertyClazz":Ljava/lang/Class;
    invoke-virtual {p3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    :try_end_1
    .catch Lorg/apache/shiro/config/ConfigurationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    return v5

    .line 262
    .end local v1    # "descriptor":Ljava/beans/PropertyDescriptor;
    .end local v4    # "propertyClazz":Ljava/lang/Class;
    :catch_1
    move-exception v2

    .line 263
    .local v2, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to determine if property ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] represents a "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 264
    .restart local v3    # "msg":Ljava/lang/String;
    new-instance v5, Lorg/apache/shiro/config/ConfigurationException;

    invoke-direct {v5, v3, v2}, Lorg/apache/shiro/config/ConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method protected resolveReference(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "reference"    # Ljava/lang/String;

    .prologue
    .line 237
    invoke-virtual {p0, p1}, Lorg/apache/shiro/config/ReflectionBuilder;->getId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "id":Ljava/lang/String;
    sget-object v2, Lorg/apache/shiro/config/ReflectionBuilder;->log:Lorg/slf4j/Logger;

    const-string v3, "Encountered object reference \'{}\'.  Looking up object with id \'{}\'"

    invoke-interface {v2, v3, p1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 239
    invoke-virtual {p0, v0}, Lorg/apache/shiro/config/ReflectionBuilder;->getReferencedObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 240
    .local v1, "referencedObject":Ljava/lang/Object;
    instance-of v2, v1, Lorg/apache/shiro/util/Factory;

    if-eqz v2, :cond_0

    .line 241
    check-cast v1, Lorg/apache/shiro/util/Factory;

    .end local v1    # "referencedObject":Ljava/lang/Object;
    invoke-interface {v1}, Lorg/apache/shiro/util/Factory;->getInstance()Ljava/lang/Object;

    move-result-object v1

    .line 243
    :cond_0
    return-object v1
.end method

.method protected resolveValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "stringValue"    # Ljava/lang/String;

    .prologue
    .line 396
    invoke-virtual {p0, p1}, Lorg/apache/shiro/config/ReflectionBuilder;->isReference(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 397
    invoke-virtual {p0, p1}, Lorg/apache/shiro/config/ReflectionBuilder;->resolveReference(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 401
    :goto_0
    return-object v0

    .line 399
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/shiro/config/ReflectionBuilder;->unescapeIfNecessary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "value":Ljava/lang/String;
    goto :goto_0
.end method

.method public setObjects(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, "objects":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-static {p1}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Ljava/util/LinkedHashMap;

    .end local p1    # "objects":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    :cond_0
    iput-object p1, p0, Lorg/apache/shiro/config/ReflectionBuilder;->objects:Ljava/util/Map;

    .line 76
    return-void
.end method

.method protected toBytes(Ljava/lang/String;)[B
    .locals 3
    .param p1, "sValue"    # Ljava/lang/String;

    .prologue
    .line 380
    if-nez p1, :cond_0

    .line 381
    const/4 v0, 0x0

    .line 391
    :goto_0
    return-object v0

    .line 384
    :cond_0
    const-string v2, "0x"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 385
    const-string v2, "0x"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 386
    .local v1, "hex":Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/shiro/codec/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 387
    .local v0, "bytes":[B
    goto :goto_0

    .line 389
    .end local v0    # "bytes":[B
    .end local v1    # "hex":Ljava/lang/String;
    :cond_1
    invoke-static {p1}, Lorg/apache/shiro/codec/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .restart local v0    # "bytes":[B
    goto :goto_0
.end method

.method protected toList(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .param p1, "sValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 357
    invoke-static {p1}, Lorg/apache/shiro/util/StringUtils;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 358
    .local v5, "tokens":[Ljava/lang/String;
    if-eqz v5, :cond_0

    array-length v8, v5

    if-gtz v8, :cond_1

    .line 359
    :cond_0
    const/4 v3, 0x0

    .line 376
    :goto_0
    return-object v3

    .line 363
    :cond_1
    array-length v8, v5

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    aget-object v8, v5, v10

    invoke-virtual {p0, v8}, Lorg/apache/shiro/config/ReflectionBuilder;->isReference(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 364
    aget-object v8, v5, v10

    invoke-virtual {p0, v8}, Lorg/apache/shiro/config/ReflectionBuilder;->resolveReference(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 365
    .local v3, "reference":Ljava/lang/Object;
    instance-of v8, v3, Ljava/util/List;

    if-eqz v8, :cond_2

    .line 366
    check-cast v3, Ljava/util/List;

    goto :goto_0

    .line 371
    .end local v3    # "reference":Ljava/lang/Object;
    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    array-length v8, v5

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 372
    .local v7, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v4, v0, v1

    .line 373
    .local v4, "token":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lorg/apache/shiro/config/ReflectionBuilder;->resolveValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 374
    .local v6, "value":Ljava/lang/Object;
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v4    # "token":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/Object;
    :cond_3
    move-object v3, v7

    .line 376
    goto :goto_0
.end method

.method protected toMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 20
    .param p1, "sValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 294
    const/16 v2, 0x2c

    const/16 v3, 0x22

    const/16 v4, 0x22

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lorg/apache/shiro/util/StringUtils;->split(Ljava/lang/String;CCCZZ)[Ljava/lang/String;

    move-result-object v18

    .line 296
    .local v18, "tokens":[Ljava/lang/String;
    if-eqz v18, :cond_0

    move-object/from16 v0, v18

    array-length v1, v0

    if-gtz v1, :cond_1

    .line 297
    :cond_0
    const/16 v16, 0x0

    .line 327
    :goto_0
    return-object v16

    .line 301
    :cond_1
    move-object/from16 v0, v18

    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    aget-object v1, v18, v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/apache/shiro/config/ReflectionBuilder;->isReference(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 302
    const/4 v1, 0x0

    aget-object v1, v18, v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/apache/shiro/config/ReflectionBuilder;->resolveReference(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    .line 303
    .local v16, "reference":Ljava/lang/Object;
    move-object/from16 v0, v16

    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 304
    check-cast v16, Ljava/util/Map;

    goto :goto_0

    .line 308
    .end local v16    # "reference":Ljava/lang/Object;
    :cond_2
    new-instance v14, Ljava/util/LinkedHashMap;

    move-object/from16 v0, v18

    array-length v1, v0

    invoke-direct {v14, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 309
    .local v14, "mapTokens":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v7, v18

    .local v7, "arr$":[Ljava/lang/String;
    array-length v12, v7

    .local v12, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_1
    if-ge v9, v12, :cond_5

    aget-object v17, v7, v9

    .line 310
    .local v17, "token":Ljava/lang/String;
    const/16 v1, 0x3a

    move-object/from16 v0, v17

    invoke-static {v0, v1}, Lorg/apache/shiro/util/StringUtils;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v11

    .line 311
    .local v11, "kvPair":[Ljava/lang/String;
    if-eqz v11, :cond_3

    array-length v1, v11

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    .line 312
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Map property value ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] contained key-value pair token ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] that does not properly split to a single key and pair.  This must be the "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "case for all map entries."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 315
    .local v15, "msg":Ljava/lang/String;
    new-instance v1, Lorg/apache/shiro/config/ConfigurationException;

    invoke-direct {v1, v15}, Lorg/apache/shiro/config/ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 317
    .end local v15    # "msg":Ljava/lang/String;
    :cond_4
    const/4 v1, 0x0

    aget-object v1, v11, v1

    const/4 v2, 0x1

    aget-object v2, v11, v2

    invoke-interface {v14, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 321
    .end local v11    # "kvPair":[Ljava/lang/String;
    .end local v17    # "token":Ljava/lang/String;
    :cond_5
    new-instance v13, Ljava/util/LinkedHashMap;

    invoke-interface {v14}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v13, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 322
    .local v13, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v14}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 323
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/apache/shiro/config/ReflectionBuilder;->resolveValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 324
    .local v10, "key":Ljava/lang/Object;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/apache/shiro/config/ReflectionBuilder;->resolveValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    .line 325
    .local v19, "value":Ljava/lang/Object;
    move-object/from16 v0, v19

    invoke-interface {v13, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "key":Ljava/lang/Object;
    .end local v19    # "value":Ljava/lang/Object;
    :cond_6
    move-object/from16 v16, v13

    .line 327
    goto/16 :goto_0
.end method

.method protected toSet(Ljava/lang/String;)Ljava/util/Set;
    .locals 10
    .param p1, "sValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 269
    invoke-static {p1}, Lorg/apache/shiro/util/StringUtils;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 270
    .local v4, "tokens":[Ljava/lang/String;
    if-eqz v4, :cond_0

    array-length v7, v4

    if-gtz v7, :cond_1

    .line 271
    :cond_0
    const/4 v1, 0x0

    .line 290
    :goto_0
    return-object v1

    .line 275
    :cond_1
    array-length v7, v4

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    aget-object v7, v4, v9

    invoke-virtual {p0, v7}, Lorg/apache/shiro/config/ReflectionBuilder;->isReference(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 276
    aget-object v7, v4, v9

    invoke-virtual {p0, v7}, Lorg/apache/shiro/config/ReflectionBuilder;->resolveReference(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 277
    .local v1, "reference":Ljava/lang/Object;
    instance-of v7, v1, Ljava/util/Set;

    if-eqz v7, :cond_2

    .line 278
    check-cast v1, Ljava/util/Set;

    goto :goto_0

    .line 282
    .end local v1    # "reference":Ljava/lang/Object;
    :cond_2
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 285
    .local v2, "setTokens":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/LinkedHashSet;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 286
    .local v6, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 287
    .local v3, "token":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lorg/apache/shiro/config/ReflectionBuilder;->resolveValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 288
    .local v5, "value":Ljava/lang/Object;
    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v3    # "token":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/Object;
    :cond_3
    move-object v1, v6

    .line 290
    goto :goto_0
.end method

.method protected unescapeIfNecessary(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 230
    if-eqz p1, :cond_0

    const-string v0, "\\$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    const-string v0, "\\$"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 233
    .end local p1    # "value":Ljava/lang/String;
    :cond_0
    return-object p1
.end method
