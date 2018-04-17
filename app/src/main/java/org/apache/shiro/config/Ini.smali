.class public Lorg/apache/shiro/config/Ini;
.super Ljava/lang/Object;
.source "Ini.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/shiro/config/Ini$1;,
        Lorg/apache/shiro/config/Ini$Section;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Lorg/apache/shiro/config/Ini$Section;",
        ">;"
    }
.end annotation


# static fields
.field public static final COMMENT_POUND:Ljava/lang/String; = "#"

.field public static final COMMENT_SEMICOLON:Ljava/lang/String; = ";"

.field public static final DEFAULT_CHARSET_NAME:Ljava/lang/String; = "UTF-8"

.field public static final DEFAULT_SECTION_NAME:Ljava/lang/String; = ""

.field protected static final ESCAPE_TOKEN:C = '\\'

.field public static final SECTION_PREFIX:Ljava/lang/String; = "["

.field public static final SECTION_SUFFIX:Ljava/lang/String; = "]"

.field private static final transient log:Lorg/slf4j/Logger;


# instance fields
.field private final sections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/shiro/config/Ini$Section;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lorg/apache/shiro/config/Ini;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/config/Ini;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/shiro/config/Ini;->sections:Ljava/util/Map;

    .line 60
    return-void
.end method

.method public constructor <init>(Lorg/apache/shiro/config/Ini;)V
    .locals 5
    .param p1, "defaults"    # Lorg/apache/shiro/config/Ini;

    .prologue
    .line 68
    invoke-direct {p0}, Lorg/apache/shiro/config/Ini;-><init>()V

    .line 69
    if-nez p1, :cond_0

    .line 70
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Defaults cannot be null."

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 72
    :cond_0
    invoke-virtual {p1}, Lorg/apache/shiro/config/Ini;->getSections()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/shiro/config/Ini$Section;

    .line 73
    .local v2, "section":Lorg/apache/shiro/config/Ini$Section;
    new-instance v0, Lorg/apache/shiro/config/Ini$Section;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lorg/apache/shiro/config/Ini$Section;-><init>(Lorg/apache/shiro/config/Ini$Section;Lorg/apache/shiro/config/Ini$1;)V

    .line 74
    .local v0, "copy":Lorg/apache/shiro/config/Ini$Section;
    iget-object v3, p0, Lorg/apache/shiro/config/Ini;->sections:Ljava/util/Map;

    invoke-virtual {v2}, Lorg/apache/shiro/config/Ini$Section;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 76
    .end local v0    # "copy":Lorg/apache/shiro/config/Ini$Section;
    .end local v2    # "section":Lorg/apache/shiro/config/Ini$Section;
    :cond_1
    return-void
.end method

.method static synthetic access$300()Lorg/slf4j/Logger;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lorg/apache/shiro/config/Ini;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method private addSection(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/StringBuilder;

    .prologue
    .line 298
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 299
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 300
    .local v1, "contentString":Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/shiro/util/StringUtils;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, "cleaned":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 302
    new-instance v2, Lorg/apache/shiro/config/Ini$Section;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v1, v3}, Lorg/apache/shiro/config/Ini$Section;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/shiro/config/Ini$1;)V

    .line 303
    .local v2, "section":Lorg/apache/shiro/config/Ini$Section;
    invoke-virtual {v2}, Lorg/apache/shiro/config/Ini$Section;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 304
    iget-object v3, p0, Lorg/apache/shiro/config/Ini;->sections:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    .end local v0    # "cleaned":Ljava/lang/String;
    .end local v1    # "contentString":Ljava/lang/String;
    .end local v2    # "section":Lorg/apache/shiro/config/Ini$Section;
    :cond_0
    return-void
.end method

.method private static cleanName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "sectionName"    # Ljava/lang/String;

    .prologue
    .line 158
    invoke-static {p0}, Lorg/apache/shiro/util/StringUtils;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 160
    sget-object v1, Lorg/apache/shiro/config/Ini;->log:Lorg/slf4j/Logger;

    const-string v2, "Specified name was null or empty.  Defaulting to the default section (name = \"\")"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 161
    const-string v0, ""

    .line 163
    :cond_0
    return-object v0
.end method

.method public static fromResourcePath(Ljava/lang/String;)Lorg/apache/shiro/config/Ini;
    .locals 3
    .param p0, "resourcePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/config/ConfigurationException;
        }
    .end annotation

    .prologue
    .line 221
    invoke-static {p0}, Lorg/apache/shiro/util/StringUtils;->hasLength(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 222
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Resource Path argument cannot be null or empty."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 224
    :cond_0
    new-instance v0, Lorg/apache/shiro/config/Ini;

    invoke-direct {v0}, Lorg/apache/shiro/config/Ini;-><init>()V

    .line 225
    .local v0, "ini":Lorg/apache/shiro/config/Ini;
    invoke-virtual {v0, p0}, Lorg/apache/shiro/config/Ini;->loadFromPath(Ljava/lang/String;)V

    .line 226
    return-object v0
.end method

.method protected static getSectionName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "line"    # Ljava/lang/String;

    .prologue
    .line 360
    invoke-static {p0}, Lorg/apache/shiro/util/StringUtils;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 361
    .local v0, "s":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/shiro/config/Ini;->isSectionHeader(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 362
    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/shiro/config/Ini;->cleanName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 364
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static isSectionHeader(Ljava/lang/String;)Z
    .locals 2
    .param p0, "line"    # Ljava/lang/String;

    .prologue
    .line 355
    invoke-static {p0}, Lorg/apache/shiro/util/StringUtils;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 356
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addSection(Ljava/lang/String;)Lorg/apache/shiro/config/Ini$Section;
    .locals 3
    .param p1, "sectionName"    # Ljava/lang/String;

    .prologue
    .line 137
    invoke-static {p1}, Lorg/apache/shiro/config/Ini;->cleanName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/apache/shiro/config/Ini;->getSection(Ljava/lang/String;)Lorg/apache/shiro/config/Ini$Section;

    move-result-object v1

    .line 139
    .local v1, "section":Lorg/apache/shiro/config/Ini$Section;
    if-nez v1, :cond_0

    .line 140
    new-instance v1, Lorg/apache/shiro/config/Ini$Section;

    .end local v1    # "section":Lorg/apache/shiro/config/Ini$Section;
    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/apache/shiro/config/Ini$Section;-><init>(Ljava/lang/String;Lorg/apache/shiro/config/Ini$1;)V

    .line 141
    .restart local v1    # "section":Lorg/apache/shiro/config/Ini$Section;
    iget-object v2, p0, Lorg/apache/shiro/config/Ini;->sections:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_0
    return-object v1
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lorg/apache/shiro/config/Ini;->sections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 427
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 402
    iget-object v0, p0, Lorg/apache/shiro/config/Ini;->sections:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 406
    iget-object v0, p0, Lorg/apache/shiro/config/Ini;->sections:Ljava/util/Map;

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
            "Lorg/apache/shiro/config/Ini$Section;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 438
    iget-object v0, p0, Lorg/apache/shiro/config/Ini;->sections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 368
    instance-of v1, p1, Lorg/apache/shiro/config/Ini;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 369
    check-cast v0, Lorg/apache/shiro/config/Ini;

    .line 370
    .local v0, "ini":Lorg/apache/shiro/config/Ini;
    iget-object v1, p0, Lorg/apache/shiro/config/Ini;->sections:Ljava/util/Map;

    iget-object v2, v0, Lorg/apache/shiro/config/Ini;->sections:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 372
    .end local v0    # "ini":Lorg/apache/shiro/config/Ini;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lorg/apache/shiro/config/Ini;->get(Ljava/lang/Object;)Lorg/apache/shiro/config/Ini$Section;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Lorg/apache/shiro/config/Ini$Section;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 410
    iget-object v0, p0, Lorg/apache/shiro/config/Ini;->sections:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/shiro/config/Ini$Section;

    return-object v0
.end method

.method public getSection(Ljava/lang/String;)Lorg/apache/shiro/config/Ini$Section;
    .locals 2
    .param p1, "sectionName"    # Ljava/lang/String;

    .prologue
    .line 126
    invoke-static {p1}, Lorg/apache/shiro/config/Ini;->cleanName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/shiro/config/Ini;->sections:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/shiro/config/Ini$Section;

    return-object v1
.end method

.method public getSectionNames()Ljava/util/Set;
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
    .line 105
    iget-object v0, p0, Lorg/apache/shiro/config/Ini;->sections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getSectionProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "sectionName"    # Ljava/lang/String;
    .param p2, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 192
    invoke-virtual {p0, p1}, Lorg/apache/shiro/config/Ini;->getSection(Ljava/lang/String;)Lorg/apache/shiro/config/Ini$Section;

    move-result-object v0

    .line 193
    .local v0, "section":Lorg/apache/shiro/config/Ini$Section;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lorg/apache/shiro/config/Ini$Section;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSectionProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "sectionName"    # Ljava/lang/String;
    .param p2, "propertyName"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 207
    invoke-virtual {p0, p1, p2}, Lorg/apache/shiro/config/Ini;->getSectionProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0    # "value":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "value":Ljava/lang/String;
    :cond_0
    move-object v0, p3

    goto :goto_0
.end method

.method public getSections()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/shiro/config/Ini$Section;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lorg/apache/shiro/config/Ini;->sections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lorg/apache/shiro/config/Ini;->sections:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 4

    .prologue
    .line 86
    iget-object v3, p0, Lorg/apache/shiro/config/Ini;->sections:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    .line 87
    .local v2, "sections":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/shiro/config/Ini$Section;>;"
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 88
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/shiro/config/Ini$Section;

    .line 89
    .local v1, "section":Lorg/apache/shiro/config/Ini$Section;
    invoke-virtual {v1}, Lorg/apache/shiro/config/Ini$Section;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 90
    const/4 v3, 0x0

    .line 94
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "section":Lorg/apache/shiro/config/Ini$Section;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x1

    goto :goto_0
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
    .line 430
    iget-object v0, p0, Lorg/apache/shiro/config/Ini;->sections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public load(Ljava/io/InputStream;)V
    .locals 4
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/config/ConfigurationException;
        }
    .end annotation

    .prologue
    .line 266
    if-nez p1, :cond_0

    .line 267
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "InputStream argument cannot be null."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 271
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    .local v1, "isr":Ljava/io/InputStreamReader;
    invoke-virtual {p0, v1}, Lorg/apache/shiro/config/Ini;->load(Ljava/io/Reader;)V

    .line 276
    return-void

    .line 272
    .end local v1    # "isr":Ljava/io/InputStreamReader;
    :catch_0
    move-exception v0

    .line 273
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Lorg/apache/shiro/config/ConfigurationException;

    invoke-direct {v2, v0}, Lorg/apache/shiro/config/ConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public load(Ljava/io/Reader;)V
    .locals 5
    .param p1, "reader"    # Ljava/io/Reader;

    .prologue
    .line 285
    new-instance v1, Ljava/util/Scanner;

    invoke-direct {v1, p1}, Ljava/util/Scanner;-><init>(Ljava/lang/Readable;)V

    .line 287
    .local v1, "scanner":Ljava/util/Scanner;
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/apache/shiro/config/Ini;->load(Ljava/util/Scanner;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    :try_start_1
    invoke-virtual {v1}, Ljava/util/Scanner;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 295
    :goto_0
    return-void

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lorg/apache/shiro/config/Ini;->log:Lorg/slf4j/Logger;

    const-string v3, "Unable to cleanly close the InputStream scanner.  Non-critical - ignoring."

    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 289
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 290
    :try_start_2
    invoke-virtual {v1}, Ljava/util/Scanner;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 293
    :goto_1
    throw v2

    .line 291
    :catch_1
    move-exception v0

    .line 292
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v3, Lorg/apache/shiro/config/Ini;->log:Lorg/slf4j/Logger;

    const-string v4, "Unable to cleanly close the InputStream scanner.  Non-critical - ignoring."

    invoke-interface {v3, v4, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public load(Ljava/lang/String;)V
    .locals 1
    .param p1, "iniConfig"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/config/ConfigurationException;
        }
    .end annotation

    .prologue
    .line 254
    new-instance v0, Ljava/util/Scanner;

    invoke-direct {v0, p1}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/shiro/config/Ini;->load(Ljava/util/Scanner;)V

    .line 255
    return-void
.end method

.method public load(Ljava/util/Scanner;)V
    .locals 8
    .param p1, "scanner"    # Ljava/util/Scanner;

    .prologue
    .line 318
    const-string v4, ""

    .line 319
    .local v4, "sectionName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    .local v3, "sectionContent":Ljava/lang/StringBuilder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 323
    invoke-virtual {p1}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v2

    .line 324
    .local v2, "rawLine":Ljava/lang/String;
    invoke-static {v2}, Lorg/apache/shiro/util/StringUtils;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, "line":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v5, "#"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, ";"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 331
    invoke-static {v0}, Lorg/apache/shiro/config/Ini;->getSectionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 332
    .local v1, "newSectionName":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 334
    invoke-direct {p0, v4, v3}, Lorg/apache/shiro/config/Ini;->addSection(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 337
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3    # "sectionContent":Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 339
    .restart local v3    # "sectionContent":Ljava/lang/StringBuilder;
    move-object v4, v1

    .line 341
    sget-object v5, Lorg/apache/shiro/config/Ini;->log:Lorg/slf4j/Logger;

    invoke-interface {v5}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 342
    sget-object v5, Lorg/apache/shiro/config/Ini;->log:Lorg/slf4j/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Parsing ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 346
    :cond_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 351
    .end local v0    # "line":Ljava/lang/String;
    .end local v1    # "newSectionName":Ljava/lang/String;
    .end local v2    # "rawLine":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, v4, v3}, Lorg/apache/shiro/config/Ini;->addSection(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 352
    return-void
.end method

.method public loadFromPath(Ljava/lang/String;)V
    .locals 3
    .param p1, "resourcePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/config/ConfigurationException;
        }
    .end annotation

    .prologue
    .line 240
    :try_start_0
    invoke-static {p1}, Lorg/apache/shiro/io/ResourceUtils;->getInputStreamForPath(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 244
    .local v1, "is":Ljava/io/InputStream;
    invoke-virtual {p0, v1}, Lorg/apache/shiro/config/Ini;->load(Ljava/io/InputStream;)V

    .line 245
    return-void

    .line 241
    .end local v1    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lorg/apache/shiro/config/ConfigurationException;

    invoke-direct {v2, v0}, Lorg/apache/shiro/config/ConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 39
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/apache/shiro/config/Ini$Section;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/shiro/config/Ini;->put(Ljava/lang/String;Lorg/apache/shiro/config/Ini$Section;)Lorg/apache/shiro/config/Ini$Section;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Lorg/apache/shiro/config/Ini$Section;)Lorg/apache/shiro/config/Ini$Section;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lorg/apache/shiro/config/Ini$Section;

    .prologue
    .line 414
    iget-object v0, p0, Lorg/apache/shiro/config/Ini;->sections:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/shiro/config/Ini$Section;

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
            "Lorg/apache/shiro/config/Ini$Section;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 422
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/String;+Lorg/apache/shiro/config/Ini$Section;>;"
    iget-object v0, p0, Lorg/apache/shiro/config/Ini;->sections:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 423
    return-void
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lorg/apache/shiro/config/Ini;->remove(Ljava/lang/Object;)Lorg/apache/shiro/config/Ini$Section;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Lorg/apache/shiro/config/Ini$Section;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 418
    iget-object v0, p0, Lorg/apache/shiro/config/Ini;->sections:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/shiro/config/Ini$Section;

    return-object v0
.end method

.method public removeSection(Ljava/lang/String;)Lorg/apache/shiro/config/Ini$Section;
    .locals 2
    .param p1, "sectionName"    # Ljava/lang/String;

    .prologue
    .line 153
    invoke-static {p1}, Lorg/apache/shiro/config/Ini;->cleanName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/shiro/config/Ini;->sections:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/shiro/config/Ini$Section;

    return-object v1
.end method

.method public setSectionProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "sectionName"    # Ljava/lang/String;
    .param p2, "propertyName"    # Ljava/lang/String;
    .param p3, "propertyValue"    # Ljava/lang/String;

    .prologue
    .line 176
    invoke-static {p1}, Lorg/apache/shiro/config/Ini;->cleanName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/apache/shiro/config/Ini;->getSection(Ljava/lang/String;)Lorg/apache/shiro/config/Ini$Section;

    move-result-object v1

    .line 178
    .local v1, "section":Lorg/apache/shiro/config/Ini$Section;
    if-nez v1, :cond_0

    .line 179
    invoke-virtual {p0, v0}, Lorg/apache/shiro/config/Ini;->addSection(Ljava/lang/String;)Lorg/apache/shiro/config/Ini$Section;

    move-result-object v1

    .line 181
    :cond_0
    invoke-virtual {v1, p2, p3}, Lorg/apache/shiro/config/Ini$Section;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 182
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lorg/apache/shiro/config/Ini;->sections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 381
    iget-object v4, p0, Lorg/apache/shiro/config/Ini;->sections:Ljava/util/Map;

    invoke-static {v4}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 382
    const-string v4, "<empty INI>"

    .line 393
    :goto_0
    return-object v4

    .line 384
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "sections="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 385
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 386
    .local v0, "i":I
    iget-object v4, p0, Lorg/apache/shiro/config/Ini;->sections:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/shiro/config/Ini$Section;

    .line 387
    .local v3, "section":Lorg/apache/shiro/config/Ini$Section;
    if-lez v0, :cond_1

    .line 388
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    :cond_1
    invoke-virtual {v3}, Lorg/apache/shiro/config/Ini$Section;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 393
    .end local v3    # "section":Lorg/apache/shiro/config/Ini$Section;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/shiro/config/Ini$Section;",
            ">;"
        }
    .end annotation

    .prologue
    .line 434
    iget-object v0, p0, Lorg/apache/shiro/config/Ini;->sections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
