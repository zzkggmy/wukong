.class public Lorg/codehaus/jackson/jaxrs/JacksonJsonProvider;
.super Ljava/lang/Object;
.source "JacksonJsonProvider.java"

# interfaces
.implements Ljavax/ws/rs/ext/MessageBodyReader;
.implements Ljavax/ws/rs/ext/MessageBodyWriter;
.implements Lorg/codehaus/jackson/Versioned;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/ws/rs/ext/MessageBodyReader",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Ljavax/ws/rs/ext/MessageBodyWriter",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Lorg/codehaus/jackson/Versioned;"
    }
.end annotation

.annotation runtime Ljavax/ws/rs/Consumes;
    value = {
        "application/json",
        "text/json"
    }
.end annotation

.annotation runtime Ljavax/ws/rs/Produces;
    value = {
        "application/json",
        "text/json"
    }
.end annotation

.annotation runtime Ljavax/ws/rs/ext/Provider;
.end annotation


# static fields
.field public static final BASIC_ANNOTATIONS:[Lorg/codehaus/jackson/jaxrs/Annotations;

.field public static final _unreadableClasses:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static final _untouchables:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lorg/codehaus/jackson/map/type/ClassKey;",
            ">;"
        }
    .end annotation
.end field

.field public static final _unwritableClasses:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field protected _cfgCheckCanDeserialize:Z

.field protected _cfgCheckCanSerialize:Z

.field protected _cfgCustomUntouchables:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lorg/codehaus/jackson/map/type/ClassKey;",
            ">;"
        }
    .end annotation
.end field

.field protected _jsonpFunctionName:Ljava/lang/String;

.field protected final _mapperConfig:Lorg/codehaus/jackson/jaxrs/MapperConfigurator;

.field protected _providers:Ljavax/ws/rs/ext/Providers;
    .annotation runtime Ljavax/ws/rs/core/Context;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 73
    new-array v0, v4, [Lorg/codehaus/jackson/jaxrs/Annotations;

    sget-object v1, Lorg/codehaus/jackson/jaxrs/Annotations;->JACKSON:Lorg/codehaus/jackson/jaxrs/Annotations;

    aput-object v1, v0, v3

    sput-object v0, Lorg/codehaus/jackson/jaxrs/JacksonJsonProvider;->BASIC_ANNOTATIONS:[Lorg/codehaus/jackson/jaxrs/Annotations;

    .line 86
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/jaxrs/JacksonJsonProvider;->_untouchables:Ljava/util/HashSet;

    .line 89
    sget-object v0, Lorg/codehaus/jackson/jaxrs/JacksonJsonProvider;->_untouchables:Ljava/util/HashSet;

    new-instance v1, Lorg/codehaus/jackson/map/type/ClassKey;

    const-class v2, Ljava/io/InputStream;

    invoke-direct {v1, v2}, Lorg/codehaus/jackson/map/type/ClassKey;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v0, Lorg/codehaus/jackson/jaxrs/JacksonJsonProvider;->_untouchables:Ljava/util/HashSet;

    new-instance v1, Lorg/codehaus/jackson/map/type/ClassKey;

    const-class v2, Ljava/io/Reader;

    invoke-direct {v1, v2}, Lorg/codehaus/jackson/map/type/ClassKey;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 91
    sget-object v0, Lorg/codehaus/jackson/jaxrs/JacksonJsonProvider;->_untouchables:Ljava/util/HashSet;

    new-instance v1, Lorg/codehaus/jackson/map/type/ClassKey;

    const-class v2, Ljava/io/OutputStream;

    invoke-direct {v1, v2}, Lorg/codehaus/jackson/map/type/ClassKey;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 92
    sget-object v0, Lorg/codehaus/jackson/jaxrs/JacksonJsonProvider;->_untouchables:Ljava/util/HashSet;

    new-instance v1, Lorg/codehaus/jackson/map/type/ClassKey;

    const-class v2, Ljava/io/Writer;

    invoke-direct {v1, v2}, Lorg/codehaus/jackson/map/type/ClassKey;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 95
    sget-object v0, Lorg/codehaus/jackson/jaxrs/JacksonJsonProvider;->_untouchables:Ljava/util/HashSet;

    new-instance v1, Lorg/codehaus/jackson/map/type/ClassKey;

    const-class v2, [B

    invoke-direct {v1, v2}, Lorg/codehaus/jackson/map/type/ClassKey;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object v0, Lorg/codehaus/jackson/jaxrs/JacksonJsonProvider;->_untouchables:Ljava/util/HashSet;

    new-instance v1, Lorg/codehaus/jackson/map/type/ClassKey;

    const-class v2, [C

    invoke-direct {v1, v2}, Lorg/codehaus/jackson/map/type/ClassKey;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 98
    sget-object v0, Lorg/codehaus/jackson/jaxrs/JacksonJsonProvider;->_untouchables:Ljava/util/HashSet;

    new-instance v1, Lorg/codehaus/jackson/map/type/ClassKey;

    const-class v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/codehaus/jackson/map/type/ClassKey;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 101
    sget-object v0, Lorg/codehaus/jackson/jaxrs/JacksonJsonProvider;->_untouchables:Ljava/util/HashSet;

    new-instance v1, Lorg/codehaus/jackson/map/type/ClassKey;

    const-class v2, Ljavax/ws/rs/core/StreamingOutput;

    invoke-direct {v1, v2}, Lorg/codehaus/jackson/map/type/ClassKey;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 102
    sget-object v0, Lorg/codehaus/jackson/jaxrs/JacksonJsonProvider;->_untouchables:Ljava/util/HashSet;

    new-instance v1, Lorg/codehaus/jackson/map/type/ClassKey;

    const-class v2, Ljavax/ws/rs/core/Response;

    invoke-direct {v1, v2}, Lorg/codehaus/jackson/map/type/ClassKey;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 109
    new-array v0, v5, [Ljava/lang/Class;

    const-class v1, Ljava/io/InputStream;

    aput-object v1, v0, v3

    const-class v1, Ljava/io/Reader;

    aput-object v1, v0, v4

    sput-object v0, Lorg/codehaus/jackson/jaxrs/JacksonJsonProvider;->_unreadableClasses:[Ljava/lang/Class;

    .line 117
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljava/io/OutputStream;

    aput-object v1, v0, v3

    const-class v1, Ljava/io/Writer;

    aput-object v1, v0, v4

    const-class v1, Ljavax/ws/rs/core/StreamingOutput;

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-class v2, Ljavax/ws/rs/core/Response;

    aput-object v2, v0, v1

    sput-object v0, Lorg/codehaus/jackson/jaxrs/JacksonJsonProvider;->_unwritableClasses:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 189
    const/4 v0, 0x0

    sget-object v1, Lorg/codehaus/jackson/jaxrs/JacksonJsonProvider;->BASIC_ANNOTATIONS:[Lorg/codehaus/jackson/jaxrs/Annotations;

    invoke-direct {p0, v0, v1}, Lorg/codehaus/jackson/jaxrs/JacksonJsonProvider;-><init>(Lorg/codehaus/jackson/map/ObjectMapper;[Lorg/codehaus/jackson/jaxrs/Annotations;)V

    .line 190
    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/map/ObjectMapper;)V
    .locals 1
    .param p1, "mapper"    # Lorg/codehaus/jackson/map/ObjectMapper;

    .prologue
    .line 203
    sget-object v0, Lorg/codehaus/jackson/jaxrs/JacksonJsonProvider;->BASIC_ANNOTATIONS:[Lorg/codehaus/jackson/jaxrs/Annotations;

    invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/jaxrs/JacksonJsonProvider;-><init>(Lorg/codehaus/jackson/map/ObjectMapper;[Lorg/codehaus/jackson/jaxrs/Annotations;)V

    .line 204
    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/map/ObjectMapper;[Lorg/codehaus/jackson/jaxrs/Annotations;)V
    .locals 1
    .param p1, "mapper"    # Lorg/codehaus/jackson/map/ObjectMapper;
    .param p2, "annotationsToUse"    # [Lorg/codehaus/jackson/jaxrs/Annotations;

    .prologue
    const/4 v0, 0x0

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput-boolean v0, p0, Lorg/codehaus/jackson/jaxrs/JacksonJsonProvider;->_cfgCheckCanSerialize:Z

    .line 175
    iput-boolean v0, p0, Lorg/codehaus/jackson/jaxrs/JacksonJsonProvider;->_cfgCheckCanDeserialize:Z

    .line 216
    new-instance v0, Lorg/codehaus/jackson/jaxrs/MapperConfigurator;

    invoke-direct {v0, p1, p2}, Lorg/codehaus/jackson/jaxrs/MapperConfigurator;-><init>(Lorg/codehaus/jackson/map/ObjectMapper;[Lorg/codehaus/jackson/jaxrs/Annotations;)V

    iput-object v0, p0, Lorg/codehaus/jackson/jaxrs/JacksonJsonProvider;->_mapperConfig:Lorg/codehaus/jackson/jaxrs/MapperConfigurator;

    .line 217
    return-void
.end method

.method public varargs constructor <init>([Lorg/codehaus/jackson/jaxrs/Annotations;)V
    .locals 1
    .param p1, "annotationsToUse"    # [Lorg/codehaus/jackson/jaxrs/Annotations;

    .prologue
    .line 198
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/codehaus/jackson/jaxrs/JacksonJsonProvider;-><init>(Lorg/codehaus/jackson/map/ObjectMapper;[Lorg/codehaus/jackson/jaxrs/Annotations;)V

    .line 199
    return-void
.end method

.method protected static _containedIn(Ljava/lang/Class;Ljava/util/HashSet;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/HashSet",
            "<",
            "Lorg/codehaus/jackson/map/type/ClassKey;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "mainType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Lorg/codehaus/jackson/map/type/ClassKey;>;"
    const/4 v3, 0x1

    .line 662
    if-eqz p1, :cond_2

    .line 663
    new-instance v2, Lorg/codehaus/jackson/map/type/ClassKey;

    invoke-direct {v2, p0}, Lorg/codehaus/jackson/map/type/ClassKey;-><init>(Ljava/lang/Class;)V

    .line 665
    .local v2, "key":Lorg/codehaus/jackson/map/type/ClassKey;
    invoke-virtual {p1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 672
    .end local v2    # "key":Lorg/codehaus/jackson/map/type/ClassKey;
    :goto_0
    return v3

    .line 667
    .restart local v2    # "key":Lorg/codehaus/jackson/map/type/ClassKey;
    :cond_0
    const/4 v4, 0x0

    invoke-static {p0, v4}, Lorg/codehaus/jackson/map/util/ClassUtil;->findSuperTypes(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 668
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2, v0}, Lorg/codehaus/jackson/map/type/ClassKey;->reset(Ljava/lang/Class;)V

    .line 669
    invoke-virtual {p1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 672
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "key":Lorg/codehaus/jackson/map/type/ClassKey;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected _findView(Lorg/codehaus/jackson/map/ObjectMapper;[Ljava/lang/annotation/Annotation;)Ljava/lang/Class;
    .locals 10
    .param p1, "mapper"    # Lorg/codehaus/jackson/map/ObjectMapper;
    .param p2, "annotations"    # [Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/ObjectMapper;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 683
    move-object v1, p2

    .local v1, "arr$":[Ljava/lang/annotation/Annotation;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_4

    aget-object v0, v1, v3

    .line 684
    .local v0, "annotation":Ljava/lang/annotation/Annotation;
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v8

    const-class v9, Lorg/codehaus/jackson/map/annotate/JsonView;

    invoke-virtual {v8, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_3

    move-object v4, v0

    .line 685
    check-cast v4, Lorg/codehaus/jackson/map/annotate/JsonView;

    .line 686
    .local v4, "jsonView":Lorg/codehaus/jackson/map/annotate/JsonView;
    invoke-interface {v4}, Lorg/codehaus/jackson/map/annotate/JsonView;->value()[Ljava/lang/Class;

    move-result-object v7

    .line 687
    .local v7, "views":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v8, v7

    const/4 v9, 0x1

    if-le v8, v9, :cond_2

    .line 688
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Multiple @JsonView\'s can not be used on a JAX-RS method. Got "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 689
    .local v6, "s":Ljava/lang/StringBuilder;
    array-length v8, v7

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " views: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v8, v7

    if-ge v2, v8, :cond_1

    .line 691
    if-lez v2, :cond_0

    .line 692
    const-string v8, ", "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 694
    :cond_0
    aget-object v8, v7, v2

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 696
    :cond_1
    new-instance v8, Lorg/codehaus/jackson/map/JsonMappingException;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 698
    .end local v2    # "i":I
    .end local v6    # "s":Ljava/lang/StringBuilder;
    :cond_2
    const/4 v8, 0x0

    aget-object v8, v7, v8

    .line 701
    .end local v0    # "annotation":Ljava/lang/annotation/Annotation;
    .end local v4    # "jsonView":Lorg/codehaus/jackson/map/annotate/JsonView;
    .end local v7    # "views":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :goto_2
    return-object v8

    .line 683
    .restart local v0    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 701
    .end local v0    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_4
    const/4 v8, 0x0

    goto :goto_2
.end method

.method public addUntouchable(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 344
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/codehaus/jackson/jaxrs/JacksonJsonProvider;->_cfgCustomUntouchables:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 345
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/jaxrs/JacksonJsonProvider;->_cfgCustomUntouchables:Ljava/util/HashSet;

    .line 347
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/jaxrs/JacksonJsonProvider;->_cfgCustomUntouchables:Ljava/util/HashSet;

    new-instance v1, Lorg/codehaus/jackson/map/type/ClassKey;

    invoke-direct {v1, p1}, Lorg/codehaus/jackson/map/type/ClassKey;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 348
    return-void
.end method

.method public checkCanDeserialize(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 241
    iput-boolean p1, p0, Lorg/codehaus/jackson/jaxrs/JacksonJsonProvider;->_cfgCheckCanDeserialize:Z

    return-void
.end method

.method public checkCanSerialize(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 248
    iput-boolean p1, p0, Lorg/codehaus/jackson/jaxrs/JacksonJsonProvider;->_cfgCheckCanSerialize:Z

    return-void
.end method

.method public configure(Lorg/codehaus/jackson/JsonGenerator$Feature;Z)Lorg/codehaus/jackson/jaxrs/JacksonJsonProvider;
    .locals 1
    .param p1, "f"    # Lorg/codehaus/jackson/JsonGenerator$Feature;
    .param p2, "state"    # Z

    .prologue
    .line 287
    iget-object v0, p0, Lorg/codehaus/jackson/jaxrs/JacksonJsonProvider;->_mapperConfig:Lorg/codehaus/jackson/jaxrs/MapperConfigurator;

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/jaxrs/MapperConfigurator;->configure(Lorg/codehaus/jackson/JsonGenerator$Feature;Z)V

    .line 288
    return-object p0
.end method

.method public configure(Lorg/codehaus/jackson/JsonParser$Feature;Z)Lorg/codehaus/jackson/jaxrs/JacksonJsonProvider;
    .locals 1
    .param p1, "f"    # Lorg/codehaus/jackson/JsonParser$Feature;
    .param p2, "state"    # Z

    .prologue
    .line 282
    iget-object v0, p0, Lorg/codehaus/jackson/jaxrs/JacksonJsonProvider;->_mapperConfig:Lorg/codehaus/jackson/jaxrs/MapperConfigurator;

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/jaxrs/MapperConfigurator;->configure(Lorg/codehaus/jackson/JsonParser$Feature;Z)V

    .line 283
    return-object p0
.end method

.method public configure(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;Z)Lorg/codehaus/jackson/jaxrs/JacksonJsonProvider;
    .locals 1
    .param p1, "f"    # Lorg/codehaus/jackson/map/DeserializationConfig$Feature;
    .param p2, "state"    # Z

    .prologue
    .line 272
    iget-object v0, p0, Lorg/codehaus/jackson/jaxrs/JacksonJsonProvider;->_mapperConfig:Lorg/codehaus/jackson/jaxrs/MapperConfigurator;

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/jaxrs/MapperConfigurator;->configure(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;Z)V

    .line 273
    return-object p0
.end method

.method public configure(Lorg/codehaus/jackson/map/SerializationConfig$Feature;Z)Lorg/codehaus/jackson/jaxrs/JacksonJsonProvider;
    .locals 1
    .param p1, "f"    # Lorg/codehaus/jackson/map/SerializationConfig$Feature;
    .param p2, "state"    # Z

    .prologue
    .line 277
    iget-object v0, p0, Lorg/codehaus/jackson/jaxrs/JacksonJsonProvider;->_mapperConfig:Lorg/codehaus/jackson/jaxrs/MapperConfigurator;

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/jaxrs/MapperConfigurator;->configure(Lorg/codehaus/jackson/map/SerializationConfig$Feature;Z)V

    .line 278
    return-object p0
.end method

.method public disable(Lorg/codehaus/jackson/JsonGenerator$Feature;Z)Lorg/codehaus/jackson/jaxrs/JacksonJsonProvider;
    .locals 2
    .param p1, "f"    # Lorg/codehaus/jackson/JsonGenerator$Feature;
    .param p2, "state"    # Z

    .prologue
    .line 327
    iget-object v0, p0, Lorg/codehaus/jackson/jaxrs/JacksonJsonProvider;->_mapperConfig:Lorg/codehaus/jackson/jaxrs/MapperConfigurator;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/codehaus/jackson/jaxrs/MapperConfigurator;->configure(Lorg/codehaus/jackson/JsonGenerator$Feature;Z)V

    .line 328
    return-object p0
.end method

.method public disable(Lorg/codehaus/jackson/JsonParser$Feature;Z)Lorg/codehaus/jackson/jaxrs/JacksonJsonProvider;
    .locals 2
    .param p1, "f"    # Lorg/codehaus/jackson/JsonParser$Feature;
    .param p2, "state"    # Z

    .prologue
    .line 322
    iget-object v0, p0, Lorg/codehaus/jackson/jaxrs/JacksonJsonProvider;->_mapperConfig:Lorg/codehaus/jackson/jaxrs/MapperConfigurator;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/codehaus/jackson/jaxrs/MapperConfigurator;->configure(Lorg/codehaus/jackson/JsonParser$Feature;Z)V

    .line 323
    return-object p0
.end method

.method public disable(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;Z)Lorg/codehaus/jackson/jaxrs/JacksonJsonProvider;
    .locals 2
    .param p1, "f"    # Lorg/codehaus/jackson/map/DeserializationConfig$Feature;
    .param p2, "state"    # Z

    .prologue
    .line 312
    iget-object v0, p0, Lorg/codehaus/jackson/jaxrs/JacksonJsonProvider;->_mapperConfig:Lorg/codehaus/jackson/jaxrs/MapperConfigurator;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/codehaus/jackson/jaxrs/MapperConfigurator;->configure(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;Z)V

    .line 313
    return-object p0
.end method

.method public disable(Lorg/codehaus/jackson/map/SerializationConfig$Feature;Z)Lorg/codehaus/jackson/jaxrs/JacksonJsonProvider;
    .locals 2
    .param p1, "f"    # Lorg/codehaus/jackson/map/SerializationConfig$Feature;
    .param p2, "state"    # Z

    .prologue
    .line 317
    iget-object v0, p0, Lorg/codehaus/jackson/jaxrs/JacksonJsonProvider;->_mapperConfig:Lorg/codehaus/jackson/jaxrs/MapperConfigurator;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/codehaus/jackson/jaxrs/MapperConfigurator;->configure(Lorg/codehaus/jackson/map/SerializationConfig$Feature;Z)V

    .line 318
    return-object p0
.end method

.method public enable(Lorg/codehaus/jackson/JsonGenerator$Feature;Z)Lorg/codehaus/jackson/jaxrs/JacksonJsonProvider;
    .locals 2
    .param p1, "f"    # Lorg/codehaus/jackson/JsonGenerator$Feature;
    .param p2, "state"    # Z

    .prologue
    .line 307
    iget-object v0, p0, Lorg/codehaus/jackson/jaxrs/JacksonJsonProvider;->_mapperConfig:Lorg/codehaus/jackson/jaxrs/MapperConfigurator;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/codehaus/jackson/jaxrs/MapperConfigurator;->configure(Lorg/codehaus/jackson/JsonGenerator$Feature;Z)V

    .line 308
    return-object p0
.end method

.method public enable(Lorg/codehaus/jackson/JsonParser$Feature;Z)Lorg/codehaus/jackson/jaxrs/JacksonJsonProvider;
    .locals 2
    .param p1, "f"    # Lorg/codehaus/jackson/JsonParser$Feature;
    .param p2, "state"    # Z

    .prologue
    .line 302
    iget-object v0, p0, Lorg/codehaus/jackson/jaxrs/JacksonJsonProvider;->_mapperConfig:Lorg/codehaus/jackson/jaxrs/MapperConfigurator;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/codehaus/jackson/jaxrs/MapperConfigurator;->configure(Lorg/codehaus/jackson/JsonParser$Feature;Z)V

    .line 303
    return-object p0
.end method

.method public enable(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;Z)Lorg/codehaus/jackson/jaxrs/JacksonJsonProvider;
    .locals 2
    .param p1, "f"    # Lorg/codehaus/jackson/map/DeserializationConfig$Feature;
    .param p2, "state"    # Z

    .prologue
    .line 292
    iget-object v0, p0, Lorg/codehaus/jackson/jaxrs/JacksonJsonProvider;->_mapperConfig:Lorg/codehaus/jackson/jaxrs/MapperConfigurator;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/codehaus/jackson/jaxrs/MapperConfigurator;->configure(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;Z)V

    .line 293
    return-object p0
.end method

.method public enable(Lorg/codehaus/jackson/map/SerializationConfig$Feature;Z)Lorg/codehaus/jackson/jaxrs/JacksonJsonProvider;
    .locals 2
    .param p1, "f"    # Lorg/codehaus/jackson/map/SerializationConfig$Feature;
    .param p2, "state"    # Z

    .prologue
    .line 297
    iget-object v0, p0, Lorg/codehaus/jackson/jaxrs/JacksonJsonProvider;->_mapperConfig:Lorg/codehaus/jackson/jaxrs/MapperConfigurator;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/codehaus/jackson/jaxrs/MapperConfigurator;->configure(Lorg/codehaus/jackson/map/SerializationConfig$Feature;Z)V

    .line 298
    return-object p0
.end method

.method protected findEncoding(Ljavax/ws/rs/core/MediaType;Ljavax/ws/rs/core/MultivaluedMap;)Lorg/codehaus/jackson/JsonEncoding;
    .locals 1
    .param p1, "mediaType"    # Ljavax/ws/rs/core/MediaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/ws/rs/core/MediaType;",
            "Ljavax/ws/rs/core/MultivaluedMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/codehaus/jackson/JsonEncoding;"
        }
    .end annotation

    .prologue
    .line 571
    .local p2, "httpHeaders":Ljavax/ws/rs/core/MultivaluedMap;, "Ljavax/ws/rs/core/MultivaluedMap<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v0, Lorg/codehaus/jackson/JsonEncoding;->UTF8:Lorg/codehaus/jackson/JsonEncoding;

    return-object v0
.end method

.method public getSize(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ljavax/ws/rs/core/MediaType;)J
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;
    .param p3, "genericType"    # Ljava/lang/reflect/Type;
    .param p4, "annotations"    # [Ljava/lang/annotation/Annotation;
    .param p5, "mediaType"    # Ljavax/ws/rs/core/MediaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Ljavax/ws/rs/core/MediaType;",
            ")J"
        }
    .end annotation

    .prologue
    .line 442
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method protected isJsonType(Ljavax/ws/rs/core/MediaType;)Z
    .locals 3
    .param p1, "mediaType"    # Ljavax/ws/rs/core/MediaType;

    .prologue
    const/4 v1, 0x1

    .line 595
    if-eqz p1, :cond_0

    .line 597
    invoke-virtual {p1}, Ljavax/ws/rs/core/MediaType;->getSubtype()Ljava/lang/String;

    move-result-object v0

    .line 598
    .local v0, "subtype":Ljava/lang/String;
    const-string v2, "json"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "+json"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 603
    .end local v0    # "subtype":Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 598
    .restart local v0    # "subtype":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isReadable(Ljava/lang/Class;Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ljavax/ws/rs/core/MediaType;)Z
    .locals 8
    .param p2, "genericType"    # Ljava/lang/reflect/Type;
    .param p3, "annotations"    # [Ljava/lang/annotation/Annotation;
    .param p4, "mediaType"    # Ljavax/ws/rs/core/MediaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Ljavax/ws/rs/core/MediaType;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    .line 374
    invoke-virtual {p0, p4}, Lorg/codehaus/jackson/jaxrs/JacksonJsonProvider;->isJsonType(Ljavax/ws/rs/core/MediaType;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 402
    :cond_0
    :goto_0
    return v5

    .line 381
    :cond_1
    sget-object v6, Lorg/codehaus/jackson/jaxrs/JacksonJsonProvider;->_untouchables:Ljava/util/HashSet;

    new-instance v7, Lorg/codehaus/jackson/map/type/ClassKey;

    invoke-direct {v7, p1}, Lorg/codehaus/jackson/map/type/ClassKey;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 385
    sget-object v0, Lorg/codehaus/jackson/jaxrs/JacksonJsonProvider;->_unreadableClasses:[Ljava/lang/Class;

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 386
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 385
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 391
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    iget-object v6, p0, Lorg/codehaus/jackson/jaxrs/JacksonJsonProvider;->_cfgCustomUntouchables:Ljava/util/HashSet;

    invoke-static {p1, v6}, Lorg/codehaus/jackson/jaxrs/JacksonJsonProvider;->_containedIn(Ljava/lang/Class;Ljava/util/HashSet;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 396
    iget-boolean v6, p0, Lorg/codehaus/jackson/jaxrs/JacksonJsonProvider;->_cfgCheckCanSerialize:Z

    if-eqz v6, :cond_3

    .line 397
    invoke-virtual {p0, p1, p4}, Lorg/codehaus/jackson/jaxrs/JacksonJsonProvider;->locateMapper(Ljava/lang/Class;Ljavax/ws/rs/core/MediaType;)Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v4

    .line 398
    .local v4, "mapper":Lorg/codehaus/jackson/map/ObjectMapper;
    invoke-virtual {v4, p1}, Lorg/codehaus/jackson/map/ObjectMapper;->constructType(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/codehaus/jackson/map/ObjectMapper;->canDeserialize(Lorg/codehaus/jackson/type/JavaType;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 402
    .end local v4    # "mapper":Lorg/codehaus/jackson/map/ObjectMapper;
    :cond_3
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public isWriteable(Ljava/lang/Class;Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ljavax/ws/rs/core/MediaType;)Z
    .locals 7
    .param p2, "genericType"    # Ljava/lang/reflect/Type;
    .param p3, "annotations"    # [Ljava/lang/annotation/Annotation;
    .param p4, "mediaType"    # Ljavax/ws/rs/core/MediaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Ljavax/ws/rs/core/MediaType;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    .line 459
    invoke-virtual {p0, p4}, Lorg/codehaus/jackson/jaxrs/JacksonJsonProvider;->isJsonType(Ljavax/ws/rs/core/MediaType;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 486
    :cond_0
    :goto_0
    return v4

    .line 466
    :cond_1
    sget-object v5, Lorg/codehaus/jackson/jaxrs/JacksonJsonProvider;->_untouchables:Ljava/util/HashSet;

    new-instance v6, Lorg/codehaus/jackson/map/type/ClassKey;

    invoke-direct {v6, p1}, Lorg/codehaus/jackson/map/type/ClassKey;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 470
    sget-object v0, Lorg/codehaus/jackson/jaxrs/JacksonJsonProvider;->_unwritableClasses:[Ljava/lang/Class;

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 471
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 470
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 476
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    iget-object v5, p0, Lorg/codehaus/jackson/jaxrs/JacksonJsonProvider;->_cfgCustomUntouchables:Ljava/util/HashSet;

    invoke-static {p1, v5}, Lorg/codehaus/jackson/jaxrs/JacksonJsonProvider;->_containedIn(Ljava/lang/Class;Ljava/util/HashSet;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 481
    iget-boolean v5, p0, Lorg/codehaus/jackson/jaxrs/JacksonJsonProvider;->_cfgCheckCanSerialize:Z

    if-eqz v5, :cond_3

    .line 482
    invoke-virtual {p0, p1, p4}, Lorg/codehaus/jackson/jaxrs/JacksonJsonProvider;->locateMapper(Ljava/lang/Class;Ljavax/ws/rs/core/MediaType;)Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v5

    invoke-virtual {v5, p1}, Lorg/codehaus/jackson/map/ObjectMapper;->canSerialize(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 486
    :cond_3
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public locateMapper(Ljava/lang/Class;Ljavax/ws/rs/core/MediaType;)Lorg/codehaus/jackson/map/ObjectMapper;
    .locals 5
    .param p2, "mediaType"    # Ljavax/ws/rs/core/MediaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljavax/ws/rs/core/MediaType;",
            ")",
            "Lorg/codehaus/jackson/map/ObjectMapper;"
        }
    .end annotation

    .prologue
    .line 629
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v2, p0, Lorg/codehaus/jackson/jaxrs/JacksonJsonProvider;->_mapperConfig:Lorg/codehaus/jackson/jaxrs/MapperConfigurator;

    invoke-virtual {v2}, Lorg/codehaus/jackson/jaxrs/MapperConfigurator;->getConfiguredMapper()Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v0

    .line 630
    .local v0, "m":Lorg/codehaus/jackson/map/ObjectMapper;
    if-nez v0, :cond_2

    .line 632
    iget-object v2, p0, Lorg/codehaus/jackson/jaxrs/JacksonJsonProvider;->_providers:Ljavax/ws/rs/ext/Providers;

    if-eqz v2, :cond_1

    .line 633
    iget-object v2, p0, Lorg/codehaus/jackson/jaxrs/JacksonJsonProvider;->_providers:Ljavax/ws/rs/ext/Providers;

    const-class v3, Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-interface {v2, v3, p2}, Ljavax/ws/rs/ext/Providers;->getContextResolver(Ljava/lang/Class;Ljavax/ws/rs/core/MediaType;)Ljavax/ws/rs/ext/ContextResolver;

    move-result-object v1

    .line 639
    .local v1, "resolver":Ljavax/ws/rs/ext/ContextResolver;, "Ljavax/ws/rs/ext/ContextResolver<Lorg/codehaus/jackson/map/ObjectMapper;>;"
    if-nez v1, :cond_0

    .line 640
    iget-object v2, p0, Lorg/codehaus/jackson/jaxrs/JacksonJsonProvider;->_providers:Ljavax/ws/rs/ext/Providers;

    const-class v3, Lorg/codehaus/jackson/map/ObjectMapper;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Ljavax/ws/rs/ext/Providers;->getContextResolver(Ljava/lang/Class;Ljavax/ws/rs/core/MediaType;)Ljavax/ws/rs/ext/ContextResolver;

    move-result-object v1

    .line 642
    :cond_0
    if-eqz v1, :cond_1

    .line 643
    invoke-interface {v1, p1}, Ljavax/ws/rs/ext/ContextResolver;->getContext(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "m":Lorg/codehaus/jackson/map/ObjectMapper;
    check-cast v0, Lorg/codehaus/jackson/map/ObjectMapper;

    .line 646
    .end local v1    # "resolver":Ljavax/ws/rs/ext/ContextResolver;, "Ljavax/ws/rs/ext/ContextResolver<Lorg/codehaus/jackson/map/ObjectMapper;>;"
    .restart local v0    # "m":Lorg/codehaus/jackson/map/ObjectMapper;
    :cond_1
    if-nez v0, :cond_2

    .line 648
    iget-object v2, p0, Lorg/codehaus/jackson/jaxrs/JacksonJsonProvider;->_mapperConfig:Lorg/codehaus/jackson/jaxrs/MapperConfigurator;

    invoke-virtual {v2}, Lorg/codehaus/jackson/jaxrs/MapperConfigurator;->getDefaultMapper()Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v0

    .line 651
    :cond_2
    return-object v0
.end method

.method public readFrom(Ljava/lang/Class;Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ljavax/ws/rs/core/MediaType;Ljavax/ws/rs/core/MultivaluedMap;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 3
    .param p2, "genericType"    # Ljava/lang/reflect/Type;
    .param p3, "annotations"    # [Ljava/lang/annotation/Annotation;
    .param p4, "mediaType"    # Ljavax/ws/rs/core/MediaType;
    .param p6, "entityStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Ljavax/ws/rs/core/MediaType;",
            "Ljavax/ws/rs/core/MultivaluedMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 413
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Object;>;"
    .local p5, "httpHeaders":Ljavax/ws/rs/core/MultivaluedMap;, "Ljavax/ws/rs/core/MultivaluedMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, p1, p4}, Lorg/codehaus/jackson/jaxrs/JacksonJsonProvider;->locateMapper(Ljava/lang/Class;Ljavax/ws/rs/core/MediaType;)Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v1

    .line 414
    .local v1, "mapper":Lorg/codehaus/jackson/map/ObjectMapper;
    invoke-virtual {v1}, Lorg/codehaus/jackson/map/ObjectMapper;->getJsonFactory()Lorg/codehaus/jackson/JsonFactory;

    move-result-object v2

    invoke-virtual {v2, p6}, Lorg/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/io/InputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    .line 418
    .local v0, "jp":Lorg/codehaus/jackson/JsonParser;
    sget-object v2, Lorg/codehaus/jackson/JsonParser$Feature;->AUTO_CLOSE_SOURCE:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {v0, v2}, Lorg/codehaus/jackson/JsonParser;->disable(Lorg/codehaus/jackson/JsonParser$Feature;)Lorg/codehaus/jackson/JsonParser;

    .line 419
    invoke-virtual {v1, p2}, Lorg/codehaus/jackson/map/ObjectMapper;->constructType(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/codehaus/jackson/map/ObjectMapper;->readValue(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public setAnnotationsToUse([Lorg/codehaus/jackson/jaxrs/Annotations;)V
    .locals 1
    .param p1, "annotationsToUse"    # [Lorg/codehaus/jackson/jaxrs/Annotations;

    .prologue
    .line 259
    iget-object v0, p0, Lorg/codehaus/jackson/jaxrs/JacksonJsonProvider;->_mapperConfig:Lorg/codehaus/jackson/jaxrs/MapperConfigurator;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/jaxrs/MapperConfigurator;->setAnnotationsToUse([Lorg/codehaus/jackson/jaxrs/Annotations;)V

    .line 260
    return-void
.end method

.method public setJSONPFunctionName(Ljava/lang/String;)V
    .locals 0
    .param p1, "fname"    # Ljava/lang/String;

    .prologue
    .line 351
    iput-object p1, p0, Lorg/codehaus/jackson/jaxrs/JacksonJsonProvider;->_jsonpFunctionName:Ljava/lang/String;

    .line 352
    return-void
.end method

.method public setMapper(Lorg/codehaus/jackson/map/ObjectMapper;)V
    .locals 1
    .param p1, "m"    # Lorg/codehaus/jackson/map/ObjectMapper;

    .prologue
    .line 268
    iget-object v0, p0, Lorg/codehaus/jackson/jaxrs/JacksonJsonProvider;->_mapperConfig:Lorg/codehaus/jackson/jaxrs/MapperConfigurator;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/jaxrs/MapperConfigurator;->setMapper(Lorg/codehaus/jackson/map/ObjectMapper;)V

    .line 269
    return-void
.end method

.method public version()Lorg/codehaus/jackson/Version;
    .locals 1

    .prologue
    .line 227
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/jackson/util/VersionUtil;->versionFor(Ljava/lang/Class;)Lorg/codehaus/jackson/Version;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ljavax/ws/rs/core/MediaType;Ljavax/ws/rs/core/MultivaluedMap;Ljava/io/OutputStream;)V
    .locals 8
    .param p1, "value"    # Ljava/lang/Object;
    .param p3, "genericType"    # Ljava/lang/reflect/Type;
    .param p4, "annotations"    # [Ljava/lang/annotation/Annotation;
    .param p5, "mediaType"    # Ljavax/ws/rs/core/MediaType;
    .param p7, "entityStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Ljavax/ws/rs/core/MediaType;",
            "Ljavax/ws/rs/core/MultivaluedMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 500
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p6, "httpHeaders":Ljavax/ws/rs/core/MultivaluedMap;, "Ljavax/ws/rs/core/MultivaluedMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0, p2, p5}, Lorg/codehaus/jackson/jaxrs/JacksonJsonProvider;->locateMapper(Ljava/lang/Class;Ljavax/ws/rs/core/MediaType;)Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v2

    .line 501
    .local v2, "mapper":Lorg/codehaus/jackson/map/ObjectMapper;
    invoke-virtual {p0, p5, p6}, Lorg/codehaus/jackson/jaxrs/JacksonJsonProvider;->findEncoding(Ljavax/ws/rs/core/MediaType;Ljavax/ws/rs/core/MultivaluedMap;)Lorg/codehaus/jackson/JsonEncoding;

    move-result-object v0

    .line 502
    .local v0, "enc":Lorg/codehaus/jackson/JsonEncoding;
    invoke-virtual {v2}, Lorg/codehaus/jackson/map/ObjectMapper;->getJsonFactory()Lorg/codehaus/jackson/JsonFactory;

    move-result-object v6

    invoke-virtual {v6, p7, v0}, Lorg/codehaus/jackson/JsonFactory;->createJsonGenerator(Ljava/io/OutputStream;Lorg/codehaus/jackson/JsonEncoding;)Lorg/codehaus/jackson/JsonGenerator;

    move-result-object v1

    .line 503
    .local v1, "jg":Lorg/codehaus/jackson/JsonGenerator;
    sget-object v6, Lorg/codehaus/jackson/JsonGenerator$Feature;->AUTO_CLOSE_TARGET:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {v1, v6}, Lorg/codehaus/jackson/JsonGenerator;->disable(Lorg/codehaus/jackson/JsonGenerator$Feature;)Lorg/codehaus/jackson/JsonGenerator;

    .line 506
    invoke-virtual {v2}, Lorg/codehaus/jackson/map/ObjectMapper;->getSerializationConfig()Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v6

    sget-object v7, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->INDENT_OUTPUT:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {v6, v7}, Lorg/codehaus/jackson/map/SerializationConfig;->isEnabled(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 507
    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonGenerator;->useDefaultPrettyPrinter()Lorg/codehaus/jackson/JsonGenerator;

    .line 510
    :cond_0
    const/4 v3, 0x0

    .line 512
    .local v3, "rootType":Lorg/codehaus/jackson/type/JavaType;
    if-eqz p3, :cond_1

    if-eqz p1, :cond_1

    .line 518
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Ljava/lang/Class;

    if-eq v6, v7, :cond_1

    .line 523
    invoke-virtual {v2}, Lorg/codehaus/jackson/map/ObjectMapper;->getTypeFactory()Lorg/codehaus/jackson/map/type/TypeFactory;

    move-result-object v6

    invoke-virtual {v6, p3}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v3

    .line 528
    invoke-virtual {v3}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Ljava/lang/Object;

    if-ne v6, v7, :cond_1

    .line 529
    const/4 v3, 0x0

    .line 534
    :cond_1
    const/4 v4, 0x0

    .line 535
    .local v4, "viewToUse":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p4, :cond_2

    array-length v6, p4

    if-lez v6, :cond_2

    .line 536
    invoke-virtual {p0, v2, p4}, Lorg/codehaus/jackson/jaxrs/JacksonJsonProvider;->_findView(Lorg/codehaus/jackson/map/ObjectMapper;[Ljava/lang/annotation/Annotation;)Ljava/lang/Class;

    move-result-object v4

    .line 538
    :cond_2
    if-eqz v4, :cond_5

    .line 540
    invoke-virtual {v2, v4}, Lorg/codehaus/jackson/map/ObjectMapper;->viewWriter(Ljava/lang/Class;)Lorg/codehaus/jackson/map/ObjectWriter;

    move-result-object v5

    .line 542
    .local v5, "viewWriter":Lorg/codehaus/jackson/map/ObjectWriter;
    iget-object v6, p0, Lorg/codehaus/jackson/jaxrs/JacksonJsonProvider;->_jsonpFunctionName:Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 543
    new-instance v6, Lorg/codehaus/jackson/map/util/JSONPObject;

    iget-object v7, p0, Lorg/codehaus/jackson/jaxrs/JacksonJsonProvider;->_jsonpFunctionName:Ljava/lang/String;

    invoke-direct {v6, v7, p1, v3}, Lorg/codehaus/jackson/map/util/JSONPObject;-><init>(Ljava/lang/String;Ljava/lang/Object;Lorg/codehaus/jackson/type/JavaType;)V

    invoke-virtual {v5, v1, v6}, Lorg/codehaus/jackson/map/ObjectWriter;->writeValue(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V

    .line 561
    .end local v5    # "viewWriter":Lorg/codehaus/jackson/map/ObjectWriter;
    :goto_0
    return-void

    .line 544
    .restart local v5    # "viewWriter":Lorg/codehaus/jackson/map/ObjectWriter;
    :cond_3
    if-eqz v3, :cond_4

    .line 546
    invoke-virtual {v2, v3}, Lorg/codehaus/jackson/map/ObjectMapper;->typedWriter(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/ObjectWriter;

    move-result-object v6

    invoke-virtual {v6, v4}, Lorg/codehaus/jackson/map/ObjectWriter;->withView(Ljava/lang/Class;)Lorg/codehaus/jackson/map/ObjectWriter;

    move-result-object v6

    invoke-virtual {v6, v1, p1}, Lorg/codehaus/jackson/map/ObjectWriter;->writeValue(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V

    goto :goto_0

    .line 548
    :cond_4
    invoke-virtual {v5, v1, p1}, Lorg/codehaus/jackson/map/ObjectWriter;->writeValue(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V

    goto :goto_0

    .line 552
    .end local v5    # "viewWriter":Lorg/codehaus/jackson/map/ObjectWriter;
    :cond_5
    iget-object v6, p0, Lorg/codehaus/jackson/jaxrs/JacksonJsonProvider;->_jsonpFunctionName:Ljava/lang/String;

    if-eqz v6, :cond_6

    .line 553
    new-instance v6, Lorg/codehaus/jackson/map/util/JSONPObject;

    iget-object v7, p0, Lorg/codehaus/jackson/jaxrs/JacksonJsonProvider;->_jsonpFunctionName:Ljava/lang/String;

    invoke-direct {v6, v7, p1, v3}, Lorg/codehaus/jackson/map/util/JSONPObject;-><init>(Ljava/lang/String;Ljava/lang/Object;Lorg/codehaus/jackson/type/JavaType;)V

    invoke-virtual {v2, v1, v6}, Lorg/codehaus/jackson/map/ObjectMapper;->writeValue(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V

    goto :goto_0

    .line 554
    :cond_6
    if-eqz v3, :cond_7

    .line 556
    invoke-virtual {v2, v3}, Lorg/codehaus/jackson/map/ObjectMapper;->typedWriter(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/ObjectWriter;

    move-result-object v6

    invoke-virtual {v6, v1, p1}, Lorg/codehaus/jackson/map/ObjectWriter;->writeValue(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V

    goto :goto_0

    .line 558
    :cond_7
    invoke-virtual {v2, v1, p1}, Lorg/codehaus/jackson/map/ObjectMapper;->writeValue(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V

    goto :goto_0
.end method
