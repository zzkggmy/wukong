.class final Lorg/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$DoubleDeser;
.super Lorg/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$Base;
.source "PrimitiveArrayDeserializers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DoubleDeser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$Base",
        "<[D>;"
    }
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 543
    const-class v0, [D

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$Base;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method private final handleNonArray(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)[D
    .locals 4
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lorg/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 571
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    sget-object v0, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->ACCEPT_EMPTY_STRING_AS_NULL_OBJECT:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/map/DeserializationContext;->isEnabled(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 573
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 574
    const/4 v0, 0x0

    .line 580
    :goto_0
    return-object v0

    .line 577
    :cond_0
    sget-object v0, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->ACCEPT_SINGLE_VALUE_AS_ARRAY:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/map/DeserializationContext;->isEnabled(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 578
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$DoubleDeser;->_valueClass:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0

    .line 580
    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [D

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$DoubleDeser;->_parseDoublePrimitive(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)D

    move-result-wide v2

    aput-wide v2, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lorg/codehaus/jackson/JsonParser;
    .param p2, "x1"    # Lorg/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 539
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$DoubleDeser;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)[D

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)[D
    .locals 8
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lorg/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 549
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->isExpectedStartArrayToken()Z

    move-result v6

    if-nez v6, :cond_0

    .line 550
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$DoubleDeser;->handleNonArray(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)[D

    move-result-object v6

    .line 564
    :goto_0
    return-object v6

    .line 552
    :cond_0
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/DeserializationContext;->getArrayBuilders()Lorg/codehaus/jackson/map/util/ArrayBuilders;

    move-result-object v6

    invoke-virtual {v6}, Lorg/codehaus/jackson/map/util/ArrayBuilders;->getDoubleBuilder()Lorg/codehaus/jackson/map/util/ArrayBuilders$DoubleBuilder;

    move-result-object v0

    .line 553
    .local v0, "builder":Lorg/codehaus/jackson/map/util/ArrayBuilders$DoubleBuilder;
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/util/ArrayBuilders$DoubleBuilder;->resetAndStart()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    .line 554
    .local v1, "chunk":[D
    const/4 v2, 0x0

    .line 556
    .local v2, "ix":I
    :goto_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v6

    sget-object v7, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-eq v6, v7, :cond_2

    .line 557
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$DoubleDeser;->_parseDoublePrimitive(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)D

    move-result-wide v4

    .line 558
    .local v4, "value":D
    array-length v6, v1

    if-lt v2, v6, :cond_1

    .line 559
    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/map/util/ArrayBuilders$DoubleBuilder;->appendCompletedChunk(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "chunk":[D
    check-cast v1, [D

    .line 560
    .restart local v1    # "chunk":[D
    const/4 v2, 0x0

    .line 562
    :cond_1
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "ix":I
    .local v3, "ix":I
    aput-wide v4, v1, v2

    move v2, v3

    .line 563
    .end local v3    # "ix":I
    .restart local v2    # "ix":I
    goto :goto_1

    .line 564
    .end local v4    # "value":D
    :cond_2
    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/map/util/ArrayBuilders$DoubleBuilder;->completeAndClearBuffer(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [D

    goto :goto_0
.end method
