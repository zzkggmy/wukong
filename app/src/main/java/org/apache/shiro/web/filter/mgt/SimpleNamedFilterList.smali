.class public Lorg/apache/shiro/web/filter/mgt/SimpleNamedFilterList;
.super Ljava/lang/Object;
.source "SimpleNamedFilterList.java"

# interfaces
.implements Lorg/apache/shiro/web/filter/mgt/NamedFilterList;


# instance fields
.field private backingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavax/servlet/Filter;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/apache/shiro/web/filter/mgt/SimpleNamedFilterList;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljavax/servlet/Filter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p2, "backingList":Ljava/util/List;, "Ljava/util/List<Ljavax/servlet/Filter;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    if-nez p2, :cond_0

    .line 61
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "backingList constructor argument cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    iput-object p2, p0, Lorg/apache/shiro/web/filter/mgt/SimpleNamedFilterList;->backingList:Ljava/util/List;

    .line 64
    invoke-virtual {p0, p1}, Lorg/apache/shiro/web/filter/mgt/SimpleNamedFilterList;->setName(Ljava/lang/String;)V

    .line 65
    return-void
.end method


# virtual methods
.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 35
    check-cast p2, Ljavax/servlet/Filter;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/shiro/web/filter/mgt/SimpleNamedFilterList;->add(ILjavax/servlet/Filter;)V

    return-void
.end method

.method public add(ILjavax/servlet/Filter;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "filter"    # Ljavax/servlet/Filter;

    .prologue
    .line 87
    iget-object v0, p0, Lorg/apache/shiro/web/filter/mgt/SimpleNamedFilterList;->backingList:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 88
    return-void
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 35
    check-cast p1, Ljavax/servlet/Filter;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/shiro/web/filter/mgt/SimpleNamedFilterList;->add(Ljavax/servlet/Filter;)Z

    move-result v0

    return v0
.end method

.method public add(Ljavax/servlet/Filter;)Z
    .locals 1
    .param p1, "filter"    # Ljavax/servlet/Filter;

    .prologue
    .line 83
    iget-object v0, p0, Lorg/apache/shiro/web/filter/mgt/SimpleNamedFilterList;->backingList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+",
            "Ljavax/servlet/Filter;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 95
    .local p2, "c":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/servlet/Filter;>;"
    iget-object v0, p0, Lorg/apache/shiro/web/filter/mgt/SimpleNamedFilterList;->backingList:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljavax/servlet/Filter;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 91
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/servlet/Filter;>;"
    iget-object v0, p0, Lorg/apache/shiro/web/filter/mgt/SimpleNamedFilterList;->backingList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/apache/shiro/web/filter/mgt/SimpleNamedFilterList;->backingList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 100
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 103
    iget-object v0, p0, Lorg/apache/shiro/web/filter/mgt/SimpleNamedFilterList;->backingList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 107
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lorg/apache/shiro/web/filter/mgt/SimpleNamedFilterList;->backingList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lorg/apache/shiro/web/filter/mgt/SimpleNamedFilterList;->get(I)Ljavax/servlet/Filter;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Ljavax/servlet/Filter;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 111
    iget-object v0, p0, Lorg/apache/shiro/web/filter/mgt/SimpleNamedFilterList;->backingList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/servlet/Filter;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lorg/apache/shiro/web/filter/mgt/SimpleNamedFilterList;->name:Ljava/lang/String;

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 115
    iget-object v0, p0, Lorg/apache/shiro/web/filter/mgt/SimpleNamedFilterList;->backingList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lorg/apache/shiro/web/filter/mgt/SimpleNamedFilterList;->backingList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljavax/servlet/Filter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lorg/apache/shiro/web/filter/mgt/SimpleNamedFilterList;->backingList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 127
    iget-object v0, p0, Lorg/apache/shiro/web/filter/mgt/SimpleNamedFilterList;->backingList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<",
            "Ljavax/servlet/Filter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lorg/apache/shiro/web/filter/mgt/SimpleNamedFilterList;->backingList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<",
            "Ljavax/servlet/Filter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lorg/apache/shiro/web/filter/mgt/SimpleNamedFilterList;->backingList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public proxy(Ljavax/servlet/FilterChain;)Ljavax/servlet/FilterChain;
    .locals 1
    .param p1, "orig"    # Ljavax/servlet/FilterChain;

    .prologue
    .line 79
    new-instance v0, Lorg/apache/shiro/web/servlet/ProxiedFilterChain;

    invoke-direct {v0, p1, p0}, Lorg/apache/shiro/web/servlet/ProxiedFilterChain;-><init>(Ljavax/servlet/FilterChain;Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lorg/apache/shiro/web/filter/mgt/SimpleNamedFilterList;->remove(I)Ljavax/servlet/Filter;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Ljavax/servlet/Filter;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 139
    iget-object v0, p0, Lorg/apache/shiro/web/filter/mgt/SimpleNamedFilterList;->backingList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/servlet/Filter;

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 143
    iget-object v0, p0, Lorg/apache/shiro/web/filter/mgt/SimpleNamedFilterList;->backingList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 147
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lorg/apache/shiro/web/filter/mgt/SimpleNamedFilterList;->backingList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 151
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lorg/apache/shiro/web/filter/mgt/SimpleNamedFilterList;->backingList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 35
    check-cast p2, Ljavax/servlet/Filter;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/shiro/web/filter/mgt/SimpleNamedFilterList;->set(ILjavax/servlet/Filter;)Ljavax/servlet/Filter;

    move-result-object v0

    return-object v0
.end method

.method public set(ILjavax/servlet/Filter;)Ljavax/servlet/Filter;
    .locals 1
    .param p1, "index"    # I
    .param p2, "filter"    # Ljavax/servlet/Filter;

    .prologue
    .line 155
    iget-object v0, p0, Lorg/apache/shiro/web/filter/mgt/SimpleNamedFilterList;->backingList:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/servlet/Filter;

    return-object v0
.end method

.method protected setName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-static {p1}, Lorg/apache/shiro/util/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot specify a null or empty name."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    iput-object p1, p0, Lorg/apache/shiro/web/filter/mgt/SimpleNamedFilterList;->name:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lorg/apache/shiro/web/filter/mgt/SimpleNamedFilterList;->backingList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljavax/servlet/Filter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Lorg/apache/shiro/web/filter/mgt/SimpleNamedFilterList;->backingList:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lorg/apache/shiro/web/filter/mgt/SimpleNamedFilterList;->backingList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 172
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Lorg/apache/shiro/web/filter/mgt/SimpleNamedFilterList;->backingList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
