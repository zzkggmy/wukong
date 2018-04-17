.class final Lorg/apache/shiro/util/ThreadContext$InheritableThreadLocalMap;
.super Ljava/lang/InheritableThreadLocal;
.source "ThreadContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/shiro/util/ThreadContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InheritableThreadLocalMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;>",
        "Ljava/lang/InheritableThreadLocal",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 309
    .local p0, "this":Lorg/apache/shiro/util/ThreadContext$InheritableThreadLocalMap;, "Lorg/apache/shiro/util/ThreadContext$InheritableThreadLocalMap<TT;>;"
    invoke-direct {p0}, Ljava/lang/InheritableThreadLocal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/shiro/util/ThreadContext$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/shiro/util/ThreadContext$1;

    .prologue
    .line 309
    .local p0, "this":Lorg/apache/shiro/util/ThreadContext$InheritableThreadLocalMap;, "Lorg/apache/shiro/util/ThreadContext$InheritableThreadLocalMap<TT;>;"
    invoke-direct {p0}, Lorg/apache/shiro/util/ThreadContext$InheritableThreadLocalMap;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic childValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 309
    .local p0, "this":Lorg/apache/shiro/util/ThreadContext$InheritableThreadLocalMap;, "Lorg/apache/shiro/util/ThreadContext$InheritableThreadLocalMap<TT;>;"
    check-cast p1, Ljava/util/Map;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/shiro/util/ThreadContext$InheritableThreadLocalMap;->childValue(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected childValue(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 323
    .local p0, "this":Lorg/apache/shiro/util/ThreadContext$InheritableThreadLocalMap;, "Lorg/apache/shiro/util/ThreadContext$InheritableThreadLocalMap<TT;>;"
    .local p1, "parentValue":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    .line 324
    check-cast p1, Ljava/util/HashMap;

    .end local p1    # "parentValue":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 326
    :goto_0
    return-object v0

    .restart local p1    # "parentValue":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 309
    .local p0, "this":Lorg/apache/shiro/util/ThreadContext$InheritableThreadLocalMap;, "Lorg/apache/shiro/util/ThreadContext$InheritableThreadLocalMap<TT;>;"
    invoke-virtual {p0}, Lorg/apache/shiro/util/ThreadContext$InheritableThreadLocalMap;->initialValue()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Ljava/util/Map;
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
    .line 311
    .local p0, "this":Lorg/apache/shiro/util/ThreadContext$InheritableThreadLocalMap;, "Lorg/apache/shiro/util/ThreadContext$InheritableThreadLocalMap<TT;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method
